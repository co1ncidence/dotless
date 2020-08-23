#!/usr/bin/perl

# obmenu-generator - schema file

=for comment

    item:      add an item inside the menu               {item => ["command", "label", "icon"]},
    cat:       add a category inside the menu             {cat => ["name", "label", "icon"]},
    sep:       horizontal line separator                  {sep => undef}, {sep => "label"},
    pipe:      a pipe menu entry                         {pipe => ["command", "label", "icon"]},
    file:      include the content of an XML file        {file => "/path/to/file.xml"},
    raw:       any XML data supported by Openbox          {raw => q(...)},
    beg:       begin of a category                        {beg => ["name", "icon"]},
    end:       end of a category                          {end => undef},
    obgenmenu: generic menu settings                {obgenmenu => ["label", "icon"]},
    exit:      default "Exit" action                     {exit => ["label", "icon"]},

=cut

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to an icon or a valid icon name
#    * Category names are case insensitive. (X-XFCE and x_xfce are equivalent)

require "$ENV{HOME}/.config/obmenu-generator/config.pl";

## Text editor
my $editor = $CONFIG->{editor};

our $SCHEMA = [

		{sep => undef},

			 {begin_cat => ['file managers', 'utilities-terminal']},
       {item => ['thunar', 'thunar', 'utilities-terminal']},
       {item => ['nautilus', 'nautilus', 'utilities-terminal']},
       {item => ['pcmanfm', 'pcmanfm', 'utilities-terminal']},
    {end_cat => undef},

 		   {begin_cat => ['web browsers', 'utilities-terminal']},
       {item => ['firefox-developer-edition', 'firefox', 'utilities-terminal']},
       {item => ['/home/co1ncidence/Applications/ungoogled-chromium_83.0.4103.97-1.1_linux.AppImage', 'chromium', 'utilities-terminal']},
    {end_cat => undef},

 		   {begin_cat => ['daily utils', 'utilities-terminal']},
       {item => ['mailspring', 'mailspring', 'utilities-terminal']},
       {item => ['gnome-calendar', 'calendar', 'utilities-terminal']},
       {item => ['com.github.dahenson.agenda', 'agenda', 'utilities-terminal']},
       {item => ['/home/co1ncidence/Applications/Ripcord-0.4.26-x86_64.AppImage', 'discord', 'utilities-terminal']},
     	 {item => ['/home/co1ncidence/Applications/lotion/Lotion/Lotion', 'notion', 'utilities-terminal']},
    {end_cat => undef},

			 {begin_cat => ['writers', 'utilities-terminal']},
       {item => ['wps', 'wps', 'utilities-terminal']},
       {item => ['typora', 'typora', 'utilities-terminal']},
       {item => ['alacritty -e ranger', 'neovim', 'utilities-terminal']},
    {end_cat => undef},

    ## Custom advanced settings
    {beg => ['settings', 'applications-engineering']},

      # Configuration files
      {item => ["$editor ~/.conkyrc",              'conky rc',    'text-x-generic']},
      {item => ["$editor ~/.config/tint2/tint2rc", 'tint2 panel', 'text-x-generic']},

      # obmenu-generator category
      {beg => ['obmenu-generator', 'accessories-text-editor']},
        {item => ["$editor ~/.config/obmenu-generator/schema.pl", 'menu schema', 'text-x-generic']},
        {item => ["$editor ~/.config/obmenu-generator/config.pl", 'menu config', 'text-x-generic']},

        {item => ['obmenu-generator -s -c',    'generate a static menu',             'accessories-text-editor']},
        {item => ['obmenu-generator -s -i -c', 'generate a static menu with icons',  'accessories-text-editor']},
        {item => ['obmenu-generator -p',       'generate a dynamic menu',            'accessories-text-editor']},
        {item => ['obmenu-generator -p -i',    'generate a dynamic menu with icons', 'accessories-text-editor']},

        {item => ['obmenu-generator -d', 'refresh cache', 'view-refresh']},
      {end => undef},

      # Openbox category
      {beg => ['openbox', 'openbox']},
        {item => ["$editor ~/.config/openbox/autostart", 'openbox autostart',   'text-x-generic']},
        {item => ["$editor ~/.config/openbox/rc.xml",    'openbox rc',          'text-x-generic']},
        {item => ["$editor ~/.config/openbox/menu.xml",  'openbox menu',        'text-x-generic']},
        {item => ['openbox --reconfigure',               'reconfigure openbox', 'openbox']},
      {end => undef},
    {end => undef},

    {sep => undef},

    #          COMMAND                 LABEL              ICON
    {item => ['mpc toggle',       "toggle", 'system-file-manager']},
    {item => ['mpc next',            "next",     'utilities-terminal']},
    {item => ['mpc prev', 'previous',  'utilities-terminal']},
    {item => ['alacritty --hold -d 70 4 -e mpc', "current",  'utilities-terminal']},
    {item => ['pavucontrol',       'volume', 'system-file-manager']},

    {sep => undef},
    ## The xscreensaver lock command
    # {item => ['betterlockscreen --lock blur', 'lock.', 'system-lock-screen']},

    ## This option uses the default Openbox's "Exit" action
    # {exit => ['logout.', 'application-exit']},

    ## This uses the 'oblogout' menu
    # {item => ['oblogout', 'Exit', 'application-exit']},

    # {item => ['systemctl poweroff', 'shutdown.', 'system-lock-screen']},
    # {item => ['systemctl suspend', 'suspend.', 'system-lock-screen']},
    # {item => ['oblogout', 'leave', 'system-lock-screen']},
    # {sep => undef},

]
