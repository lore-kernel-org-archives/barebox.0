Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkTDg-00035Y-PL
 for barebox@lists.infradead.org; Wed, 14 May 2014 07:03:18 +0000
Date: Wed, 14 May 2014 09:02:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140514070250.GV5858@pengutronix.de>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/19] commands rework patch series
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 10:28:40AM +0200, Holger Schurig wrote:
> Hi,
> 
> this is my current patch series that should improve barebox'
> documentation about it's commands.
> 
> * when I started barebox and typed "help", the list of commands
>   was scrolling up quickly. Almost always did I had to use the
>   mouse and scroll my x-terminal backwards to see what I
>   actually wanted to see. So I reduced the output of the "help"
>   command to just spit out the command names, however grouped
>   by functions. This is now much smaller and fits in one
>   screen. The old list is available with "help -l".
> * Usage (synopsis) documention (e.g. "ls [-lCR]") was only in
>   the CONFIG_LONGHELP, but it's often usable if one forget the
>   exact command option letter. It's now part of the help even
>   without CONFIG_LONGHELP.
> * I reworked the long help texts to make them better understandable
>   (hopefully), and also tried to recuce their size if possible.
> * when I was new to barebox, I was wandering if I need some
>   of the commands in "make xconfig". I didn't have further
>   information, because almost no command had a help text.
>   This has now changed, the help texts in Kconfig are almost the
>   same as the help texts of "help FOOBAR" (with CONFIG_LONGHELP) on.
> * now that "help" has the commands grouped nicely, it was time
>   to group them in "make xconfig", too
> * many Kconfig entries turned on commands, but they were located
>   at various places (a.g. common, net, arch-depended). Moved them
>   all into commands/Kconfig
> * some CONFIG_CMD_foobar things didn't turn on commands. I renamed
>   them (and their occurences in the _defconfig)s.

Applied with some minor fixups like removing
BAREBOX_CMD_HELP(cmd_clk_enable_help) which doesn't exist.

For everyone who hasn't tried this series, here is the nice-and-shiny
sorted-by-categories output of help -v:

Information commands:
  ?                     print online help
  clk_dump              show information about registered clocks
  cpuinfo               show info about CPU
  devinfo               show information about devices and drivers
  gpiolib               list registered GPIOs
  help                  print online help
  iomem                 show IO memory usage
  meminfo               print info about memory usage
  mmuinfo               show MMU/cache information of an address
  version               print barebox version

Boot commands:
  boot                  boot from script, device, ...
  bootm                 boot an application image
  go                    start application at address or file
  reset                 perform RESET of the CPU
  uimage                extract/verify uImage

Partition commands:
  addpart               add a partition description to a device
  automount             execute (mount) COMMAND when PATH ist first accessed
  delpart               delete partition(s)
  mount                 mount a filesystem or list mounted filesystems
  ubiattach             attach mtd device to UBI
  ubidetach             detach an UBI device
  ubimkvol              create an UBI volume
  ubirmvol              delete an UBI volume
  umount                umount a filesystem

Environment commands:
  export                export environment variables
  global                create or set global variables
  loadenv               load environment from ENVFS
  magicvar              list information about magic variables
  printenv              print value of environment variables
  saveenv               save environment to persistent storage

File commands:
  basename              strip directory and suffix from filenames
  cat                   concatenate file(s) to stdout
  cd                    change working directory
  cp                    copy files
  dirname               strip last component from a path
  filetype              detect file type
  ln                    create symlink (make a new name for a file)
  ls                    list a file or directory
  md5sum                calculate MD5 checksum
  mkdir                 make directories
  pwd                   print working directory
  readlink              read value of a symbolic link
  rm                    remove files
  rmdir                 remove empty directory(s)
  uncompress            uncompress a compressed file

Scripting commands:
  .                     execute shell script in current shell environment
  [                     minimal test command like in /bin/sh
  exit                  exit script
  false                 do nothing, unsuccessfully
  getopt                parse option arguments
  let                   evaluate arithmetic expressions
  msleep                delay execution for n milli-seconds
  readf                 read file into variable
  sh                    execute a shell script
  sleep                 delay execution for n seconds
  source                execute shell script in current shell environment
  test                  minimal test command like in /bin/sh
  true                  do nothing, successfully

Network commands:
  dhcp                  DHCP client to obtain IP or boot params
  ethact                get or set current ethernet device
  ifup                  bring a network interface up
  miitool               view media-independent interface status
  ping                  send ICMP echo requests
  tftp                  load (or save) a file using TFTP

Console commands:
  clear                 clear screen
  echo                  echo args to console
  edit                  a small full-screen editor
  menu                  create and display menus
  readline              prompt for user input
  sedit                 a small full-screen editor
  splash                display a BMP image
  timeout               wait for a specified timeout

Memory commands:
  crc32                 CRC32 checksum calculation
  md                    memory display
  memcmp                memory compare
  memcpy                memory copy
  memset                memory fill
  memtest               extensive memory test
  mm                    memory modify with mask
  mw                    memory write

Hardware manipulation commands:
  clk_disable           disable a clock
  clk_enable            enable a clock
  clk_set_parent        set parent of a clock
  clk_set_rate          set a clocks rate
  detect                detect devices
  erase                 erase flash memory
  gpio_direction_input  set direction of a GPIO pin to input
  gpio_direction_output set direction of a GPIO pin to output
  gpio_get_value        return value of a GPIO pin
  gpio_set_value        set a GPIO's output value
  i2c_probe             probe for an i2c device
  i2c_read              read from an i2c device
  i2c_write             write to an i2c device
  imx_nand_bbm          create BBT for i.MX NAND
  led                   control LEDs
  nand                  NAND flash handling
  protect               enable flash write protection
  spi                   write/read from SPI device
  trigger               handle LED triggers
  unprotect             disable flash write protection
  usb                   (re-)detect USB devices
  wd                    enable/disable/trigger the watchdog

Miscellaneous commands:
  barebox_update        update barebox to persistent media
  dfu                   device firmware update
  of_node               create/delete nodes in the device tree
  of_property           handle device tree properties
  oftree                handle device trees
  time                  measure execution duration of a command

Use 'help COMMAND' for more details.



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
