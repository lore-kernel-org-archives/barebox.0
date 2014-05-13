Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x230.google.com ([2a00:1450:4013:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80t-0001iM-Tu
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:46 +0000
Received: by mail-ee0-f48.google.com with SMTP id e49so122089eek.21
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:17 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:43 +0200
Message-Id: <1399969739-10355-4-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/19] commands: harmonize in-barebox docs with Kconfig docs
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/Kconfig | 2036 +++++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 1495 insertions(+), 541 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 3ef8860..fb9a036 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -12,311 +12,1218 @@ config HAS_POWEROFF
 
 if COMMAND_SUPPORT
 
-menu "commands"
+menu "Commands"
 
-menu "scripting"
 
-config CMD_EDIT
+
+
+menu "Information"
+
+config CMD_DEVINFO
+	tristate
+	default y
+	prompt "devinfo"
+	help
+	  Show information about devices and drivers.
+
+	  devinfo [DEVICE]
+
+	  If called without arguments, devinfo shows a summary of the known
+	  devices and drivers.
+
+	  If called with a device path being the argument, devinfo shows more
+	  default information about this device and its parameters.
+
+config CMD_HELP
+	tristate
+	default y
+	prompt "help"
+	help
+	  Without arguments, lists all all commands. With an argument, print help
+	  about the specified command. If the argument is 'all', then output help
+	  for all commands.
+
+	  Options:
+	  	-a	output help on all commands
+	  	-v	verbose
+
+config CMD_IOMEM
+	tristate
+	prompt "iomem and ioport"
+	help
+	  Show information about iomem/ioport usage. Pendant to
+	  'cat /proc/iomem' and 'cat /proc/ioports' under Linux.
+
+config CMD_MEMINFO
+	tristate
+	prompt "meminfo"
+	help
+	  Print info about barebox' memory allocation. Example:
+
+	  max system bytes =     282616
+	  system bytes     =     282616
+	  in use bytes     =     274752
+
+config CMD_REGINFO
+	depends on HAS_REGINFO
+	select REGINFO
+	tristate
+	prompt "reginfo"
+	help
+	  Print register information.
+
+config CMD_REGULATOR
+	bool
+	depends on REGULATOR
+	prompt "regulator command"
+	help
+	  the regulator command lists the currently registered regulators and
+	  their current state.
+
+config CMD_VERSION
+	tristate
+	default y
+	depends on BANNER
+	prompt "version"
+	help
+	  Pring barebox version. Example:
+
+	  barebox 2014.05.0-00142-gb289373 #177 Mon May 12 20:35:55 CEST 2014
+
+# end Information commands
+endmenu
+
+
+
+
+menu "Boot"
+
+# TODO: isn't a command
+config FLEXIBLE_BOOTARGS
+	bool
+	prompt "flexible Linux bootargs generation"
+	depends on CMD_GLOBAL
+	help
+	  Select this to get a more flexible bootargs generation. With this
+	  option the bootargs are concatenated together from global variables
+	  beginning with 'global.linux.bootargs.' and 'global.linux.mtdparts.'
+	  This allows for more flexible scripting since with it it's possible
+	  to replace parts of the bootargs string without reconstructing it
+	  completely.
+
+config CMD_BOOT
+	tristate
+	select BOOTM
+	prompt "boot"
+	help
+	  Select this for booting based on scripts. Unlike the bootm command which
+	  can boot a single image this command offers the possibility to boot with
+	  scripts (by default placed under /env/boot/). This command iterates over
+	  multiple scripts until one succeeds.
+
+	  Usage: boot [-vdlmt] [BOOTSRC...]
+
+	  BOOTSRC can be:
+	  - a filename under /env/boot/
+	  - a full path to a boot script
+	  - a device name
+	  - a partition name under /dev/
+	  - a full path to a directory which
+   	  -- contains boot scripts, or
+   	  -- contains a loader/entries/ directory containing bootspec entries
+
+	  Multiple bootsources may be given which are probed in order until
+	  one succeeds.
+
+	  Options:
+		  -v	Increase verbosity
+		  -d	Dryrun. See what happens but do no actually boot
+		  -l	List available boot sources
+		  -m	Show a menu with boot options
+		  -t SECS	specify timeout in SECS
+
+config CMD_BOOTM
+	tristate
+	default y
+	select BOOTM
+	select CRC32
+	select UIMAGE
+	select UNCOMPRESS
+	select FILETYPE
+	select GLOBALVAR
+	prompt "bootm"
+	help
+	  Boot an application image
+
+	  Usage: bootm [-cdaeo] IMAGE
+
+	  Options:
+		  -c	crc check uImage data
+		  -d	dryrun. Check data, but do not run
+		  -a ADDR	specify os load address
+		  -e OFFS	entry point to the image relative to start (0)
+		  -o DTS	specify device tree
+
+
+config CMD_BOOTM_SHOW_TYPE
+	bool
+	depends on CMD_BOOTM
+	prompt "show image information"
+	help
+	  Displays some tags from the uImage:
+
+	  - OS type
+	  - architecture,
+	  - type
+	  - compression method.
+
+config CMD_BOOTM_VERBOSE
+	bool
+	prompt "verbose support"
+	depends on CMD_BOOTM
+	help
+	  Adds the verbose (-v switch) command line option.
+
+config CMD_BOOTM_INITRD
+	bool
+	prompt "initial RAM disk (initrd) support"
+	depends on CMD_BOOTM
+	help
+	  Adds support for initial RAM disk and this two command line options:
+
+	  -r INITRD  specify an initrd image
+	  -L ADDR    specify initrd load address
+
+config CMD_BOOTM_OFTREE
+	bool
+	depends on CMD_BOOTM
+	select OFTREE
+	prompt "device tree (oftree) support"
+	help
+	  Add support to pass a device tree (a.k.a Open Firmware Tree, oftree). Adds
+	  this command line option:
+
+	  -o DTS  specify device tre
+
+config CMD_BOOTM_OFTREE_UIMAGE
+	bool
+	prompt "support passing device tree (oftree) uImages"
+	depends on CMD_BOOTM_OFTREE
+	help
+	  Support using oftree uImages. Without this only raw oftree
+	  blobs can be used.
+
+config CMD_BOOTM_AIMAGE
+	bool
+	prompt "Android image support"
+	depends on CMD_BOOTM && ARM
+	help
+	  Support using Android Images.
+
+config CMD_BOOTU
+	tristate
+	default y
+	depends on ARM
+	prompt "bootu"
+	help
+	  Boot into already loaded Linux kernel, which must be raw (uncompressed).
+
+	  Usage: bootu ADDRESS
+
+config CMD_BOOTZ
+	tristate
+	depends on ARM
+	prompt "bootz"
+	help
+	  Boot Linux zImage
+
+	  Usage: bootz FILE
+
+config CMD_LINUX16
+	tristate
+	depends on X86
+	default y if X86
+	prompt "linux16"
+	help
+	  Usage: linux16 [-v VESAMODE] FILE
+
+	  Load kernel from FILE and boot on x86 in real-mode.
+
+	  Only kernel images in bzImage format are supported by now.
+
+	  For the video mode refer the Linux kernel documentation
+	  'Documentation/fb/vesafb.txt' for correct VESA mode numbers. Use 'ask'
+	  instead of a number to make Linux prompt for options.
+
+	  Options:
+	  -v VESAMODE   set VESAMODE
+
+
+config CMD_GO
+	tristate
+	prompt "go"
+	help
+	  Start application at address or file
+
+	  Usage: go ADDR [ARG...]
+
+	  Start application at ADDR passing ARG as arguments.
+
+	  If addr does not start with a digit it is interpreted as a filename
+	  in which case the file is memmapped and executed
+
+config CMD_LOADB
+	depends on !CONSOLE_NONE
+	select CRC16
+	tristate
+	prompt "loadb"
+	help
+	  Load binary file over serial line (Kermit)
+
+	  Usage: loadb  FILE
+
+	  Options:
+		  -f FILE	download to FILE (default image.bin)
+		  -o OFFS	destination file OFFSet (default 0)
+		  -b BAUD	baudrate for download (default: console baudrate
+		  -c	create file if not present
+
+config CMD_LOADS
+	depends on !CONSOLE_NONE
+	tristate
+	prompt "loads"
+	help
+	  Loads - load binary file over serial line (S-Records)
+
+	  Usage: loads OFFS
+
+	  Load S-Record file over serial line with offset OFFS.
+
+config CMD_LOADY
+	select CRC16
+	select XYMODEM
+	depends on !CONSOLE_NONE
+	tristate
+	prompt "loady"
+	help
+	  Adds the loadx and loady commands:
+
+	  loadx - load binary file over serial line (X-Modem)
+
+	  Usage: loadx [-fptbc]
+
+	  Options:
+		  -f FILE	download to FILE (default image.bin)
+		  -o OFFS	destination file OFFSet (default 0)
+		  -b BAUD	baudrate for download (default: console baudrate
+		  -t NAME	console name to use (default: current)
+		  -c	create file if not present
+
+
+	  loady - load binary file over serial line (Y-Modem)
+
+	  Usage: loady [-gtb]
+
+	  Options:
+		  -g	use Y-Modem/G (use on lossless tty such as USB)
+		  -b BAUD	baudrate for download (default: console baudrate
+		  -t NAME	console name to use (default: current)
+
+
+config CMD_RESET
+	tristate
+	prompt "reset"
+	help
+	  Perform RESET of the CPU
+
+	  Usage: reset [-f]
+
+	  Options:
+		  -f	force RESET, don't call shutdown
+
+config CMD_SAVES
+	tristate
+	depends on CMD_LOADS
+	prompt "saves"
+	help
+	  Save file over serial line (S-Records)
+
+	  Usage: saves OFFS LEN
+
+	  Save S-Record file to serial line with offset OFFS and length LEN.
+
+config CMD_UIMAGE
+	select UIMAGE
+	tristate
+	prompt "uimage"
+	help
+	  Show information about uImage and also extract and verify uImages.
+
+	  Usage: uimage [-vien] FILE
+
+	  Options:
+		  -i		show information about image
+		  -v		verify image
+		  -e OUTFILE	extract image to OUTFILE
+		  -n NO		use image number NO in multifile image
+
+# end Boot commands
+endmenu
+
+
+
+
+menu "Partition"
+
+config CMD_PARTITION
+	tristate
+	prompt "addpart and delpart"
+	help
+	  addpart - add a partition description to a device
+
+	  Usage: addpart [-n] DEVICE PART
+
+	  The size and the offset can be given in decimal (without any prefix) and
+	  in hex (prefixed with 0x). Both can have an optional suffix K, M or G.
+	  The size of the last partition can be specified as '-' for the remaining
+	  space on the device.  This format is the same as used by the Linux
+	  kernel or cmdline mtd partitions.
+
+	  Options:
+		  -n	do not use the device name as prefix of the partition name
+		  DEVICE	device being worked on
+		  PART	SIZE1[@OFFSET1](NAME1)[RO],SIZE2[@OFFSET2](NAME2)[RO],...
+
+
+	  delpart - delete partition(s)
+
+	  Usage: delpart PART...
+
+	  Delete partitions previously added to a device with addpart.
+
+config CMD_AUTOMOUNT
+	tristate
+	select FS_AUTOMOUNT
+	prompt "automount"
+	help
+	  Automount allows o automatically execute a script when a certain
+	  directory is accessed for the first time. The script should then make
+	  this directory available (discover USB devices, bring network interface
+	  up and finally mount the filesystem).
+
+	  Usage: automount [-ldr] PATH [COMMAND]
+
+	  Options:
+		  -l	list registered automount-points
+		  -d	create the mount directory
+		  -r	remove an automountpoint
+
+config CMD_MOUNT
+	tristate
+	default y
+	prompt "mount"
+	help
+	  Mount a filesystem or list mounted filesystems
+
+	  Usage: mount [[-atov] [DEVICE] [MOUNTPOINT]]
+
+	  If no argument is given, list mounted filesystems.
+	  If no FSTYPE is specified, try to detect it automatically.
+	  With -a the mount command mounts all block devices whose filesystem
+	  can be detected automatically to /mnt/PARTNAME
+	  If mountpoint is not given, a standard mountpoint of /mnt/DEVICE
+	  is used. This directoy is created automatically if necessary.
+
+	  Options:
+		  -a		mount all blockdevices
+		  -t FSTYPE	specify filesystem type
+		  -o OPTIONS	set file system OPTIONS
+		  -v		verbose
+
+config CMD_UBI
+	tristate
+	default y if MTD_UBI
+	depends on MTD_UBI
+	prompt "ubiattach, ubimkvol and ubirmvol"
+	help
+	  ubiattach - attach mtd device to UBI
+
+	  Usage: ubiattach [-O] MTDDEV
+
+	  Options:
+		  -O OFFS	VID header offset
+
+
+	  ubimkvol - create an UBI volume
+
+	  Usage: ubimkvol UBIDEV NAME SIZE
+
+	  Create an UBI volume on UBIDEV with NAME and SIZE.
+	  If SIZE is 0 all available space is used for the volume.
+
+
+	  ubirmvol - delete an UBI volume
+
+	  Usage: ubirmvol UBIDEV NAME
+
+	  Delete UBI volume NAME from UBIDEV
+
+
+config CMD_UBIFORMAT
+	tristate
+	depends on MTD_UBI
+	select LIBMTD
+	select LIBSCAN
+	select LIBUBIGEN
+	prompt "ubiformat"
+
+config CMD_UMOUNT
+	tristate
+	default y
+	prompt "umount"
+	help
+	  Usage: umount MOUNTPOINT
+
+	  Unmount a filesystem mounted on a specific MOINTPOINT
+
+# end Partition commands
+endmenu
+
+
+
+menu "Environment"
+
+config CMD_EXPORT
+	depends on ENVIRONMENT_VARIABLES
+	tristate
+	prompt "export"
+	help
+	  Export environment variables
+
+	  Usage: export VAR[=VALUE]
+
+	  Export an environment variable to subsequently executed scripts.
+
+config CMD_GLOBAL
+	select GLOBALVAR
+	tristate
+	prompt "global"
+	help
+	  Create or set global variables
+
+	  Usage: global [-r] VAR[=VALUE]
+
+	  Add a new global variable named VAR, optionally set to VALUE.
+
+	  Options:
+	  	-r	set value of all global variables beginning with 'match'
+
+config CMD_LOADENV
+	tristate
+	select ENV_HANDLING
+	prompt "loadenv"
+	help
+	  Load environment from ENVFS
+
+	  Usage: loadenv {-nsd] [ENVFS] [DIRECTORY]
+
+	  Load environment from files in ENVFS (default /dev/env0) in
+	  DIRECTORY (default /env
+
+	  Options:
+	  	-n	do not overwrite existing files
+	  	-s	scrub old environment
+	  	-d	load default environment
+
+config CMD_PRINTENV
+	tristate
+	depends on ENVIRONMENT_VARIABLES
+	prompt "printenv"
+	help
+	  Print value of environment variables
+
+	  Usage: printenv [VARIABLE]
+
+	  If an argument is given, printenv prints the content of an environment
+	  variable to the terminal. If no argument is specified, all variables are
+	  printed.
+
+config CMD_MAGICVAR
+	tristate
+	prompt "magicvar"
+	help
+	  Barebox has some shell variables with special meanings. This
+	  command shows the available magic variables.
+
+config CMD_MAGICVAR_HELP
+	bool
+	prompt "display description"
+	depends on CMD_MAGICVAR
+	help
+	  Also display a description to the magic variables
+
+config CMD_SAVEENV
+	tristate
+	select ENV_HANDLING
+	prompt "saveenv"
+	help
+	  Save environment to persistent storage
+
+	  Usage: saveenv [ENVFS] [DIRECTORY]
+
+	  Save the files in DIRECTORY to the persistent storage device ENVFS.
+
+	  ENVFS is usually a block in flash but can be any other file. If
+	  omitted, DIRECTORY defaults to /env and ENVFS defaults to
+	  /dev/env0. Note that envfs can only handle files, directories are being
+	  skipped silently.
+
+# end Environment commands
+endmenu
+
+
+
+
+menu "File"
+
+config CMD_DIGEST
+	tristate
+	select DIGEST
+	help
+	  TODO This is actually not a command, but turns on digest.c compilation.
+
+config CMD_BASENAME
+	tristate
+	prompt "basename"
+	help
+	  Usage: basename PATH VAR
+
+	  Remove directory and suffix from the PATH and store result into variable VAR.
+
+config CMD_CAT
+	tristate
+	default y
+	prompt "cat"
+	help
+	  Concatenate file(s) to stdout
+
+	  Usage: cat FILE...
+
+	  Currently only printable characters and NL, TAB are printed.
+
+config CMD_CD
+	tristate
+	default y
+	prompt "cd"
+	help
+	  Change working directory
+
+	  Usage: cd DIRECTORY
+
+	  If called without an argument, change to the root directory '/'.
+
+config CMD_CP
+	tristate
+	default y
+	prompt "cp"
+	help
+	  Copy files
+
+	  Usage: cp [-v] SRC DEST
+
+	  Copy file from SRC to DEST.
+
+	  Options:
+		  -v	verbose
+
+config CMD_DIRNAME
+	tristate
+	prompt "dirname"
+	help
+	  Strip last component of file name and store the result in a
+	  environment variable
+
+config CMD_FILETYPE
+	tristate
+	select FILETYPE
+	prompt "filetype"
+	help
+Detect file type
+
+	  Usage: filetype [-vsl] FILE
+
+	  Detect type of a file and export result to a variable.
+
+	  Options:
+		  -v	verbose
+		  -s VAR	set variable VAR to shortname
+		  -l	list known filetypes
+
+	  Detected file types are registered at runtime, depending on
+	  what you have compiled into barebox. Example of "filetype -l":
+
+	  known filetypes:
+	  arm-zimage      : arm Linux zImage
+	  lzo             : lzo compressed
+	  lz4             : lz4 compressed
+	  arm-barebox     : arm barebox image
+	  u-boot          : U-Boot uImage
+	  ubi             : UBI image
+	  jffs2           : JFFS2 image
+	  gzip            : gzip compressed
+	  bzip2           : bzip2 compressed
+	  dtb             : open firmware flat device tree
+	  android         : Android boot image
+	  sh              : Bourne Shell
+	  mips-barebox    : MIPS barebox image
+	  fat             : FAT filesytem
+	  mbr             : MBR sector
+	  bmp             : BMP image
+	  png             : PNG image
+	  ext             : ext filesystem
+	  gpt             : GUID Partition Table
+	  bpk             : Binary PacKage
+	  bbenv           : barebox environment file
+
+config CMD_LN
+	tristate
+	prompt "ln"
+	help
+	  Create symlink (make a new name for a file)
+
+	  Usage: ln SRC DEST
+
+config CMD_LS
+	tristate
+	default y
+	prompt "ls"
+	help
+	  List a file or directory
+
+	  Usage: ls [-lCR] [FILEDIR...]
+
+	  List information about the specified files or directories.
+
+	  Options:
+		  -l	long format
+		  -C	column format (opposite of long format)
+		  -R	list subdirectories recursively
+
+config CMD_MD5SUM
+	tristate
+	select CMD_DIGEST
+	select MD5
+	prompt "md5sum"
+	help
+	  Usage: md5sum FILE|AREA...
+
+	  Calculate a MD5 digest over a FILE or a memory area.
+
+config CMD_MKDIR
+	tristate
+	default y
+	prompt "mkdir"
+	help
+	  Usage: mkdir [DIRECTORY ...]
+
+	  Create new directories
+
+	  Options:
+		  -p	make parent directories as needed
+
+config CMD_PWD
+	tristate
+	default y
+	prompt "pwd"
+	help
+	  Print working directory.
+
+config CMD_READLINK
+	tristate
+	prompt "readlink"
+	help
+	  Read value of a symbolic link
+
+	  Usage: readlink [-f] FILE VARIABLE
+
+	  Read value of a symbolic link and store it into VARIABLE.
+
+	  Options:
+		  -f	canonicalize by following first symlink
+
+config CMD_RM
+	tristate
+	default y
+	prompt "rm"
+	help
+	  Remove files
+
+	  Usage: rm [-r] FILES...
+
+	  Options:
+		  -r	remove directories and their contents recursively
+
+config CMD_RMDIR
+	tristate
+	default y
+	prompt "rmdir"
+	help
+	  Remove empty directory(s)
+
+	  Usage: rmdir DIRECTORY...
+
+	  Remove directories. The directories have to be empty.
+
+config CMD_SHA1SUM
+	tristate
+	select CMD_DIGEST
+	select SHA1
+	prompt "sha1sum"
+	help
+	  Calculate SHA1 digest
+
+	  Usage: sha1sum FILE|AREA
+
+	  Calculate a SHA1 digest over a FILE or a memory area.
+
+config CMD_SHA224SUM
 	tristate
-	prompt "edit"
+	select CMD_DIGEST
+	select SHA224
+	prompt "sha224sum"
+	help
+	  Calculate SHA224 digest
+
+	  Usage: sha224sum FILE|AREA
+
+	  Calculate a SHA224 digest over a FILE or a memory area.
+
+config CMD_SHA256SUM
+	tristate
+	select CMD_DIGEST
+	select SHA256
+	prompt "sha256sum"
+	help
+	  sha256sum - calculate SHA256 digest
+
+	  Usage: sha256sum FILE|AREA
+
+	  Calculate a SHA256 digest over a FILE or a memory area.
+
+config CMD_UNCOMPRESS
+	bool
+	select UNCOMPRESS
+	prompt "uncompress"
+	help
+	  Uncompress handles lzo, gzip and bzip2 compressed files
+	  depending on the compiled in compression libraries.
+
+	  Usage: uncompress INFILE OUTFILE
+
+# end File commands
+endmenu
+
+
+
+
+menu "Shell scripting"
 
 config CMD_EXEC
 	depends on !SHELL_HUSH
 	tristate
 	prompt "exec"
 
-config CMD_SLEEP
+config CMD_FALSE
 	tristate
-	prompt "sleep"
+	default y
+	prompt "false"
+	help
+	  Do nothing, unsuccessfully
+
+config CMD_LET
+	tristate
+	prompt "let"
+	help
+	  Evaluate arithmetic expressions
+
+	  Usage: let EXPR [EXPR ...]
+
+	  Supported operations are in order of decreasing precedence:
+		  X++, X--
+		  ++X, --X
+		  +X, -X
+		  !X, ~X
+		  X**Y
+		  X*Y, X/Y, X%Y
+		  X+Y, X-Y
+		  X<<Y, X>>Y
+		  X<Y, X<=Y, X>=Y, X>Y
+		  X==Y, X!=Y
+		  X&Y
+		  X^Y
+		  X|Y
+		  X&&Y
+		  X||Y
+		  X?Y:Z
+		  X*=Y, X/=Y, X%=Y
+		  X=Y, X&=Y, X|=Y, X^=Y, X+=Y, X-=Y, X<<=Y, X>>=Y
 
 config CMD_MSLEEP
 	tristate
 	prompt "msleep"
+	help
+	  Delay execution for n milli-seconds
 
-config CMD_SAVEENV
-	tristate
-	select ENV_HANDLING
-	prompt "saveenv"
+	  Usage: msleep MILLISECONDS
 
-config CMD_LOADENV
+config CMD_READF
 	tristate
-	select ENV_HANDLING
-	prompt "loadenv"
+	prompt "readf"
+	help
+	  Read file into variable
 
-config CMD_EXPORT
-	depends on ENVIRONMENT_VARIABLES
+	  Usage: readf FILE VAR
+
+	  Read a single line from FILE into a VARiable. Leading and trailing
+	  whitespaces are removed, nonvisible characters are stripped. Input is
+	  limited to 1024 characters.
+
+config CMD_SLEEP
 	tristate
-	prompt "export"
+	prompt "sleep"
+	help
+	  Delay execution for n seconds
 
-config CMD_PRINTENV
+	  Usage: sleep SECONDS
+
+config CMD_TEST
 	tristate
-	depends on ENVIRONMENT_VARIABLES
-	prompt "printenv"
+	depends on SHELL_HUSH
+	default y
+	prompt "test"
+	help
+	  Minimal test command like in /bin/sh
 
-config CMD_READLINE
+	  Usage: test [EXPR]
+
+	  Options:
+		  !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,
+		  -f, -L; see 'man test' on your PC for more information.
+
+config CMD_TRUE
 	tristate
-	prompt "readline"
+	default y
+	prompt "true"
+	help
+	  Do nothing, successfully.
 
-config CMD_READF
+# end Scripting commands
+endmenu
+
+
+
+
+menu "Network"
+
+config CMD_MIITOOL
 	tristate
-	prompt "readf"
+	depends on PHYLIB
+	prompt "miitool"
 	help
-	  The readf command is used to read a files content into a shell variable.
+	  The miitool command allows to view media-independent interface status.
+	  The default short output reports the negotiated link speed and
+	  link status for selected MII. The '-v' option displays more
+	  detailed MII status information, such as MII capabilities,
+	  current advertising mode, and link partner capabilities.
 
-config CMD_LET
+config CMD_TFTP
+	depends on FS_TFTP
 	tristate
-	prompt "let"
+	prompt "tftp"
 	help
-	  the 'let' command is used for arithmetics. It works like the corresponding
-	  Unix shell command.
+	  Load (or save) a file using TFTP
 
-config CMD_TRUE
+	  Note that barebox can mount tftp as a filesystem. Therefore
+	  this 'tftp' command is only needed to preserve backward
+	  compatibility.
+
+	  Usage: tftp [-p] SOURCE [DEST]
+
+	  Load (or save) a file via TFTP.
+
+	  Options:
+		  -p	push to TFTP server
+
+# end Network commands
+endmenu
+
+
+
+
+menu "Console and Framebuffer interaction"
+
+config CMD_CLEAR
 	tristate
 	default y
-	prompt "true"
+	prompt "clear"
+	help
+	  Clear screen
 
-config CMD_FALSE
+	  Send ANSI ESC sequence to clear the screen.
+
+config CMD_ECHO
 	tristate
 	default y
-	prompt "false"
+	prompt "echo"
+	help
+	  Echo args to console
 
-config CMD_MENU
-	tristate
-	depends on MENU
-	prompt "menu"
+	  Usage: echo [-neao] STRING
 
-config CMD_MENU_MANAGEMENT
-	bool
-	depends on CMD_MENU
-	prompt "menu scripts management"
+	  Display a line of TEXT on the console.
 
-config CMD_MENUTREE
+	  Options:
+		  -n	do not output the trailing newline
+		  -a FILE	append to FILE instead of using stdout
+		  -o FILE	overwrite FILE instead of using stdout
+
+config CMD_ECHO_E
 	bool
-	depends on MENU
-	select MENUTREE
-	prompt "menutree"
+	depends on CMD_ECHO
+	select PROCESS_ESCAPE_SEQUENCE
+	prompt "support -e option to echo"
 	help
-	  The menutree command allows to create a menu from a directory structure
+	  Adds this command line option:
+	  -e	recognize escape sequences
+
+config CMD_EDIT
+	tristate
+	prompt "edit"
+	help
+	  A  small fill-screen editor.
+
+	  Usage: edit FILE
+
+	  Use cursor keys, Ctrl-C to exit and Ctrl-D to exit-with-save.
 
 config CMD_LOGIN
 	tristate
 	select PASSWORD
 	prompt "login"
+	help
+	  Ask for a password
 
-config CMD_PASSWD
-	tristate
-	select CMD_LOGIN
-	prompt "passwd"
+	  Usage: login [-t TIMEOUT] COMMAND
 
-if CMD_LOGIN || CMD_PASSWD
+	  Asks for a password from the console before script execution continues.
+	  The password can be set with the 'passwd' command. Instead of specifying
+	  a TIMEOUT the magic variable 'global.login.timeout' could be set.
 
-choice
-	prompt "passwd mode"
+	  Options:
+		  -t TIMEOUT	Execute COMMAND if no login withing TIMEOUT seconds
 
-config PASSWD_MODE_HIDE
-	bool "Hide"
+config CMD_MENU
+	tristate
+	depends on MENU
+	prompt "menu"
+	help
+	  Create and display menus
 
-config PASSWD_MODE_STAR
-	bool "Star"
+	  Manage Menu:
+  	  -m  menu
+  	  -l  list
+  	  -s  show
 
-config PASSWD_MODE_CLEAR
-	bool "Clear"
+	  Show menu:
+  	  (-A auto select delay)
+  	  (-d auto select description)
+  	  menu -s -m MENU [-A delay] [-d auto_display]
 
-endchoice
+	  List menu:
+  	  menu -l
 
-endif
+	  Menu example:
+	  menu -s -m boot
 
-config CMD_TIME
-	bool "time"
+config CMD_MENU_MANAGEMENT
+	bool
+	depends on CMD_MENU
+	prompt "menu scripts management"
 	help
-	  Just like the unix time command this command allows to measure the
-	  execution time of a command. Note: barebox does not use interrupts,
-	  so the system timer can overrun during the execution of the command
-	  resulting in incorrect results. The timer gets updated in the function
-	  checking for ctrl-c, so the time command can be used with commands
-	  which are interruptible with ctrl-c.
+	  Adds this options:
+  	  -e  menu entry
+  	  -a  add
+  	  -r  remove
+  	  -S  select
 
-config CMD_LINUX_EXEC
-	bool "linux exec"
-	depends on LINUX
-	help
-	  This command executes a command on the Linux host.
+	  Add a menu:
+  	  menu -a -m NAME -d DESC
 
-config CMD_GLOBAL
-	select GLOBALVAR
-	tristate
-	prompt "global"
-	help
-	  The global command allows to create global variables
+	  Remove a menu:
+  	  menu -r -m NAME
 
-endmenu
+	  Add an entry:
+  	  (-R for do no exit the menu after executing the command)
+  	  (-b for box style 1 for selected)
+  	  (and optional -c for the command to run when we change the state)
+  	  menu -e -a -m MENU -c COMMAND [-R] [-b 0|1] -d DESC
 
-menu "file commands"
+	  Add a submenu entry:
+  	  (-R is not needed)
+  	  (-b for box style 1 for selected)
+  	  (and -c is not needed)
+  	  menu -e -a -m MENU -u submenu -d [-b 0|1] DESC
 
-config CMD_LS
-	tristate
-	default y
-	prompt "ls"
+	  Remove an entry:
+  	  menu -e -r -m NAME -n ENTRY
 
-config CMD_RM
-	tristate
-	default y
-	prompt "rm"
+	  Select an entry:
+  	  menu -m <menu> -S -n ENTRY
 
-config CMD_CAT
-	tristate
-	default y
-	prompt "cat"
+	  List menu:
+  	  menu -e -l [menu]
 
-config CMD_MKDIR
-	tristate
-	default y
-	prompt "mkdir"
+	  Menu examples:
+  	  menu -a -m boot -d "Boot Menu"
+  	  menu -e -a -m boot -c boot -d "Boot"
+  	  menu -e -a -m boot -c reset -d "Reset"
 
-config CMD_RMDIR
-	tristate
-	default y
-	prompt "rmdir"
 
-config CMD_CP
-	tristate
-	default y
-	prompt "cp"
+config CMD_MENUTREE
+	bool
+	depends on MENU
+	select MENUTREE
+	prompt "menutree"
+	help
+	  Create menu from directory structure
 
-config CMD_PWD
-	tristate
-	default y
-	prompt "pwd"
+	  Usage: menutree [-m] DIR
 
-config CMD_CD
-	tristate
-	default y
-	prompt "cd"
+	  Each menu entry is described by a subdirectory. Each subdirectory
+	  can contain the following files which further describe the entry:
 
-config CMD_MOUNT
-	tristate
-	default y
-	prompt "mount"
+	  title  A file containing the title of the entry as shown in the menu
+	  box    If present, the entry is a 'bool' entry. The file contains a
+       	  name from which the current state of the bool is taken from and saved
+       	  to.
+	  action if present this file contains a shell script which is executed when
+       	  when the entry is selected.
 
-config CMD_UMOUNT
-	tristate
-	default y
-	prompt "umount"
+	  If neither 'box' or 'action' are present, this entry is considered a submenu
+	  containing more entries.
 
-config CMD_NAND
-	tristate
-	default y
-	depends on NAND
-	prompt "nand"
+	  Options:
+		  -m DIR	directory where the menu starts (Default: /env/menu)
 
-config CMD_AUTOMOUNT
+config CMD_PASSWD
 	tristate
-	select FS_AUTOMOUNT
-	prompt "automount"
+	select CMD_LOGIN
+	prompt "passwd"
 	help
-	  automount allows it to automatically execute a script when a certain
-	  directory is accessed for the first time. The script should then make
-	  this directory available (discover USB devices, bring network interface
-	  up and finally mount the filesystem).
+	  Set password
+
+	  'Interactively asks for a password. The digest of this password will be
+	  stored in /env/etc//passwd. This is then used by the 'login' command.
+
+	  Entering an empty string will disable the password function.
+
+if CMD_LOGIN || CMD_PASSWD
+
+choice
+	prompt "passwd mode"
+
+config PASSWD_MODE_HIDE
+	bool "Hide"
+
+config PASSWD_MODE_STAR
+	bool "Star"
+
+config PASSWD_MODE_CLEAR
+	bool "Clear"
 
-config CMD_BASENAME
-	tristate
-	prompt "basename"
-	help
-	  Strip directory and suffix from filenames and store the result in a
-	  environment variable
+endchoice
 
-config CMD_DIRNAME
-	tristate
-	prompt "dirname"
+endif
+config CMD_SPLASH
+	bool
+	select IMAGE_RENDERER
+	prompt "splash"
 	help
-	  Strip last component of file name and store the result in a
-	  environment variable
+	  Display a BMP image on a framebuffer device
 
-config CMD_LN
-	tristate
-	prompt "ln"
+	  Usage: splash [-fxyno] FILE
 
-config CMD_READLINK
-	tristate
-	prompt "readlink"
-	help
-	  read value of a symbolic link
+	  This command displays a graphics in the bitmap (.bmp) format on the
+	  framebuffer. Currently images with 8 and 24 bit color depth are supported.
 
-config CMD_TFTP
-	depends on FS_TFTP
-	tristate
-	prompt "tftp"
-	help
-	  barebox can mount tftp as a filesystem. This command is only needed to
-	  preserve backward compatibility to the old tftp command.
+	  Options:
+		  -f FB		framebuffer device (default /dev/fb0)
+		  -x XOFFS	x offset (default center)
+		  -y YOFFS	y offset (default center)
+		  -b COLOR	background color in 0xttrrggbb
+		  -o		render offscreen
 
-config CMD_FILETYPE
+config CMD_READLINE
 	tristate
-	select FILETYPE
-	prompt "filetype"
+	prompt "Readline"
+	help
+	  rompt for user input
 
-endmenu
+	  Usage: readline PROMPT VAR
 
-menu "console"
+	  First it displays the PROMPT, then it reads a line of user input into
+	  variable VAR.
 
-config CMD_CLEAR
+config CMD_TIMEOUT
 	tristate
-	default y
-	prompt "clear"
+	prompt "timeout"
+	help
+	  Usage: timeout [-acrs] SECONDS
 
-config CMD_ECHO
-	tristate
-	default y
-	prompt "echo"
+	  Wait SECONDS for a timeout. Return 1 if the user intervented.
 
-config CMD_ECHO_E
-	bool
-	depends on CMD_ECHO
-	select PROCESS_ESCAPE_SEQUENCE
-	prompt "support -e option to echo"
+	  Options:
+		  -a	interrupt on any key
+		  -c	interrupt on Ctrl-C
+		  -r	interrupt on RETURN
+		  -s	silent mode
 
+# end Console interaction commands
 endmenu
 
-menu "memory"
 
-config CMD_LOADB
-	depends on !CONSOLE_NONE
-	select CRC16
-	tristate
-	prompt "loadb"
 
-config CMD_LOADY
-	select CRC16
-	select XYMODEM
-	depends on !CONSOLE_NONE
-	tristate
-	prompt "loady"
 
-config CMD_LOADS
-	depends on !CONSOLE_NONE
-	tristate
-	prompt "loads"
+menu "Memory"
 
-config CMD_SAVES
-	tristate
-	depends on CMD_LOADS
-	prompt "saves"
+config CMD_MEMORY
+	bool
+	default y
+	help
+	  TODO This is actually not a command, but turns in the /dev/mem device
+	  and common memory options (e.g. range parsing).
 
-config CMD_MEMINFO
+config CMD_CRC
 	tristate
-	prompt "meminfo"
+	select CRC32
+	prompt "crc32"
+	help
+	  Usage: crc32 [-fFvV] AREA
 
-config CMD_IOMEM
+	  Calculate a CRC32 checksum of a memory area.
+	  Options:
+		  -f FILE	Use file instead of memory.
+		  -F FILE	Use file to compare.
+		  -v CRC	Verify
+
+config CMD_CRC_CMP
 	tristate
-	prompt "iomem/ioport"
+	depends on CMD_CRC
+	prompt "compare 2 files using crc32"
 	help
-	  Show information about iomem/ioport usage. Pendant to
-	  'cat /proc/iomem' and 'cat /proc/ioports' under Linux.
+	Adds this option:
 
-config CMD_MEMORY
-	bool
-	default y
+	-V FILE	Verify with CRC read from FILE
 
 config CMD_MD
 	tristate
@@ -324,23 +1231,23 @@ config CMD_MD
 	select CMD_MEMORY
 	prompt "md"
 	help
-	  the md command allows to display (hexdump) memory locations and files.
+	  Memory display
 
-config CMD_MW
-	tristate
-	default y
-	select CMD_MEMORY
-	prompt "mw"
-	help
-	  the mw command allows to write to memory locations and files.
+	  Usage: md [-bwlsx] REGION
 
-config CMD_MM
-	tristate
-	select CMD_MEMORY
-	prompt "memory modify (mm)"
-	help
-	  the mm command allows to read-modify-write registers by doing:
-	  reg = (reg & ~mask) | (val & mask)
+	  Display (hex dump) a memory region.
+
+	  Options:
+		  -b	byte access
+		  -w	word access (16 bit)
+		  -l	long access (32 bit)
+		  -s FILE	display file (default /dev/mem)
+		  -x	swap bytes at output
+
+	  Memory regions can be specified in two different forms: START+SIZE
+	  or START-END, If START is omitted it defaults to 0x100
+	  Sizes can be specified as decimal, or if prefixed with 0x as hexadecimal.
+	  An optional suffix of k, M or G is for kbytes, Megabytes or Gigabytes.
 
 config CMD_MEMCMP
 	tristate
@@ -348,7 +1255,21 @@ config CMD_MEMCMP
 	select CMD_MEMORY
 	prompt "memcmp"
 	help
-	  the memcmp command allows to compare memory and file regions.
+	  Memory compare
+
+	  Usage: memcmp [-bwlsd] ADDR1 ADDR2 COUNT
+
+	  Compare memory regions specified with ADDR and ADDR2
+	  of size COUNT bytes. If source is a file COUNT can
+	  be left unspecified, in which case the whole file is
+	  compared.
+
+	  Options:
+		  -b	byte access
+		  -w	word access (16 bit)
+		  -l	long access (32 bit)
+		  -s FILE	source file (default /dev/mem)
+		  -d FILE	destination file (default /dev/mem)
 
 config CMD_MEMCPY
 	tristate
@@ -356,7 +1277,18 @@ config CMD_MEMCPY
 	select CMD_MEMORY
 	prompt "memcpy"
 	help
-	  the memcpy command allows to copy memory and file regions.
+	  Memory copy
+
+	  Usage: memcpy [-bwlsd] SRC DEST COUNT
+
+	  Copy memory at SRC of COUNT bytes to DEST
+
+	  Options:
+		  -b	byte access
+		  -w	word access (16 bit)
+		  -l	long access (32 bit)
+		  -s FILE	source file (default /dev/mem)
+		  -d FILE	write file (default /dev/mem)
 
 config CMD_MEMSET
 	tristate
@@ -364,383 +1296,306 @@ config CMD_MEMSET
 	select CMD_MEMORY
 	prompt "memset"
 	help
-	  the memset command allows to set regions of memory and files to
-	  a specific value.
+	  Memory fill
 
-config CMD_CRC
-	tristate
-	select CRC32
-	prompt "crc32"
+	  Usage: memset [-bwld] ADDR COUNT DATA
 
-config CMD_CRC_CMP
-	tristate
-	depends on CMD_CRC
-	prompt "compare 2 files using crc32"
+	  Fills the first COUNT bytes at offset ADDR with byte DATA,
 
-config CMD_DIGEST
-	tristate
-	select DIGEST
+	  Options:
+		  -b	byte access
+		  -w	word access (16 bit)
+		  -l	long access (32 bit)
+		  -d FILE	write file (default /dev/mem)
 
-config CMD_MD5SUM
+config CMD_MEMTEST
 	tristate
-	select CMD_DIGEST
-	select MD5
-	prompt "md5sum"
+	prompt "memtest"
+	help
+	  The memtest command can test the registered barebox memory.
+	  During this test barebox memory regions like heap, stack, ...
+	  will be skipped. If the tested architecture has MMU with PTE
+	  flags support, the memtest is running twice with cache enabled
+	  and with cache disabled
 
-config CMD_SHA1SUM
-	tristate
-	select CMD_DIGEST
-	select SHA1
-	prompt "sha1sum"
+	  Usage: memtest [-ib]
 
-config CMD_SHA256SUM
-	tristate
-	select CMD_DIGEST
-	select SHA256
-	prompt "sha256sum"
+	  Options:
+		  -i ITERATIONS	perform number of iterations (default 1, 0 is endless)
+		  -b	perform only a test on bus lines
 
-config CMD_SHA224SUM
+config CMD_MM
 	tristate
-	select CMD_DIGEST
-	select SHA224
-	prompt "sha224sum"
-
-endmenu
+	select CMD_MEMORY
+	prompt "memory modify (mm)"
+	help
+	  Memory modify with mask
 
-menu "flash"
+	  Usage: mm [-bwld] ADDR VAL MASK
 
-config CMD_FLASH
-	tristate
-	prompt "protect/erase"
+	  Set/clear bits specified with MASK in ADDR to VALUE
 
-config CMD_UBI
-	tristate
-	default y if MTD_UBI
-	depends on MTD_UBI
-	prompt "ubimkvol, ubirmvol, ubiattach"
+	  Options:
+		  -b	byte access
+		  -w	word access (16 bit)
+		  -l	long access (32 bit)
+		  -d FILE	write file (default /dev/mem)
 
-config CMD_UBIFORMAT
+config CMD_MW
 	tristate
-	depends on MTD_UBI
-	select LIBMTD
-	select LIBSCAN
-	select LIBUBIGEN
-	prompt "ubiformat"
-
-endmenu
+	default y
+	select CMD_MEMORY
+	prompt "mw"
+	help
+	  Memory write
 
-menu "booting"
+	  Usage: mw [-bwld] REGION DATA...
 
-config CMD_BOOTM
-	tristate
-	default y
-	select BOOTM
-	select CRC32
-	select UIMAGE
-	select UNCOMPRESS
-	select FILETYPE
-	select GLOBALVAR
-	prompt "bootm"
+	  Write DATA value(s) to the specified REGION.
 
-config CMD_BOOTM_SHOW_TYPE
-	bool
-	depends on CMD_BOOTM
-	prompt "show image information"
+	  Options:
+		  -b	byte access
+		  -w	word access (16 bit)
+		  -l	long access (32 bit)
+		  -d FILE  destination file (default /dev/mem)
 
-config CMD_BOOTM_VERBOSE
-	bool
-	prompt "bootm verbose support"
-	depends on CMD_BOOTM
-	help
-	  support verbose bootm (-v switch)
+#end Memory commands
+endmenu
 
-config CMD_BOOTM_INITRD
-	bool
-	prompt "bootm initrd support"
-	depends on CMD_BOOTM
-	help
-	  support initrds in bootm
 
-config CMD_BOOTM_OFTREE
-	bool
-	depends on CMD_BOOTM
-	select OFTREE
-	prompt "bootm oftree support"
-	help
-	  say yes here to support passing a flat device tree to the kernel
 
-config CMD_BOOTM_OFTREE_UIMAGE
-	bool
-	prompt "support passing oftree uImages"
-	depends on CMD_BOOTM_OFTREE
-	help
-	  Support using oftree uImages. Without this only raw oftree
-	  blobs can be used.
 
-config CMD_BOOTM_AIMAGE
-	bool
-	prompt "bootm Android image support"
-	depends on CMD_BOOTM && ARM
-	help
-	  Support using Android Images.
+menu "Hardware manipulation"
 
-config CMD_UIMAGE
-	select UIMAGE
+config CMD_CLK
 	tristate
-	prompt "uimage"
+	depends on COMMON_CLK
+	prompt "clk_dump, clk_set_parent, clk_set_rate"
 	help
-	  Show information about uImage and also extract and verify uImages.
+	  clk_dump - show information about registered clocks
 
-config CMD_BOOTZ
-	tristate
-	depends on ARM
-	prompt "bootz"
-	help
-	  compile in the 'bootz' command to start zImages
+	  Usage: clk_dump [-v]
 
-config CMD_BOOTU
-	tristate
-	default y
-	depends on ARM
-	prompt "bootu"
-	help
-	  compile in the 'bootu' command to start raw (uncompressed)
-	  Linux images
+	  Options:
+	  -v  verbose
 
-config FLEXIBLE_BOOTARGS
-	bool
-	prompt "flexible Linux bootargs generation"
-	depends on CMD_GLOBAL
-	help
-	  Select this to get a more flexible bootargs generation. With this
-	  option the bootargs are concatenated together from global variables
-	  beginning with 'global.linux.bootargs.' and 'global.linux.mtdparts.'
-	  This allows for more flexible scripting since with it it's possible
-	  to replace parts of the bootargs string without reconstructing it
-	  completely
 
-config CMD_LINUX16
-	tristate
-	depends on X86
-	default y if X86
-	prompt "linux16"
-	help
-	  Compile the linux16 command to be able to boot bzImages
-	  via real mode.
+	  clk_set_parent - set parent of a clock
 
-config CMD_BOOT
-	tristate
-	select BOOTM
-	prompt "boot"
-	help
-	  Select this for booting based on scripts. unlike the bootm command which
-	  can boot a single image this command offers the possibility to boot with
-	  scripts (by default placed under /env/boot/). This command iterates over
-	  multiple scripts until one succeeds. It supersedes the previous 'boot'
-	  script.
+	  Usage: clk_set_parent CLK PARENT
 
-config CMD_RESET
-	tristate
-	prompt "reset"
 
-config CMD_POWEROFF
-	tristate
-	depends on HAS_POWEROFF
-	prompt "poweroff"
+	  clk_set_rate - set a clocks rate
+
+	  Usage: clk_set_rate CLK HZ
 
-config CMD_GO
-	tristate
-	prompt "go"
+	  Set clock CLK to RATE Hz.
 
-config CMD_OFTREE
+config CMD_DETECT
 	tristate
-	select OFTREE
-	prompt "oftree"
+	prompt "detect"
 	help
-	  The oftree command has support for dumping devicetrees and, if
-	  enabled, to probe devices from the devicetree
+	  Some devices take longer time to probe, like slow disks or
+	  SD/MMC cards. These can defer the actual probe of the client
+	  devices until they are needed. Use the 'detect' command on
+	  the physical device to trigger probing.
 
-config CMD_OF_PROPERTY
-	tristate
-	select OFTREE
-	prompt "of_property"
-	help
-	  The of_property command allows setting and deleting of properties in
-	  the currently loaded devicetree.
+	  Usage: detect [-lea] [devices]
 
-config CMD_OF_NODE
+	  Options:
+		  -l	list detectable devices
+		  -e	bail out if one device fails to detect
+		  -a	detect all devices
+
+config CMD_FLASH
 	tristate
-	select OFTREE
-	prompt "of_node"
+	prompt "erase, protect and unprotect"
 	help
-	  The of_node command allows adding and removing devicetree nodes.
+	  erase - erase flash memory
 
-endmenu
+	  Usage: erase DEVICE [AREA]
 
-menu "testing"
+	  Erase the flash memory handled by DEVICE. Which AREA will be erased
+	  depends on the device: If the device represents the whole flash
+	  memory, the whole memory will be erased. If the device represents a
+	  partition on a main flash memory, only this partition part will be
+	  erased.
 
-config CMD_NANDTEST
-	tristate
-	depends on NAND
-	depends on PARTITION
-	depends on NAND_ECC_HW || NAND_ECC_SOFT
-	select PARTITION_NEED_MTD
-	prompt "nandtest"
+	  Use 'addpart' and 'delpart' to manage partitions
 
-config CMD_MEMTEST
-	tristate
-	prompt "memtest"
-	help
-	  The memtest command can test the registered barebox memory.
-	  During this test barebox memory regions like heap, stack, ...
-	  will be skipped. If the tested architecture has MMU with PTE
-	  flags support, the memtest is running twice with cache enabled
-	  and with cache disabled
 
-config CMD_2048
-	tristate
-	prompt "2048"
-	help
-	  Console version of the game "2048" for GNU/Linux
+	  protect - enable flash write protection
 
-endmenu
+	  Usage: protect DEVICE [AREA]
 
-menu "video command"
+	  Protect the flash memory behind the device. It depends on the device
+	  given, what area will be protected. If the device represents the whole
+	  flash memory, the whole memory will be protected. If the device
+	  represents a partition on a main flash memory, only this partition part
+	  will be protected.
 
-if VIDEO
+	  Use 'addpart' and 'delpart' to manage partitions.
 
-config CMD_SPLASH
+
+	  unprotect - disable flash write protection
+
+	  Usage: unprotect DEVICE [AREA]
+
+	  Unprotect the flash memory behind the device. It depends on the device
+	  given, what area will be unprotected. If the device represents the whole
+	  flash memory, the whole memory will be unprotected. If the device
+	  represents a partition on a main flash memory, only this partition part
+	  will be unprotected.
+
+config CMD_GPIO
 	bool
-	select IMAGE_RENDERER
-	prompt "splash"
+	depends on GENERIC_GPIO
+	prompt "gpio_direction_input, gpio_direction_output, gpio_get_value and gpio_set_value"
 	help
-	  show bmp files on framebuffer devices
+	  gpio_direction_input - set direction of a GPIO pin to input
 
-endif
+	  Usage: gpio_direction_input GPIO
 
-endmenu
 
-config CMD_BAREBOX_UPDATE
-	tristate
-	select BAREBOX_UPDATE
-	prompt "barebox-update"
+	  gpio_direction_output - set direction of a GPIO pin to output
 
-config CMD_TIMEOUT
-	tristate
-	prompt "timeout"
+	  Usage: gpio_direction_output GPIO
 
-config CMD_PARTITION
-	tristate
-	prompt "addpart/delpart"
 
-config CMD_TEST
-	tristate
-	depends on SHELL_HUSH
-	default y
-	prompt "test"
-	help
-	  shell like test function
+	  gpio_get_value - return value of a GPIO pin
 
-config CMD_REGINFO
-	depends on HAS_REGINFO
-	select REGINFO
-	tristate
-	prompt "reginfo"
+	  Usage: gpio_get_value GPIO
 
-config CMD_VERSION
-	tristate
-	default y
-	depends on BANNER
-	prompt "version"
 
-config CMD_HELP
-	tristate
-	default y
-	prompt "help"
+	  gpio_set_value - set a GPIO's output value
 
-config CMD_MAGICVAR
-	tristate
-	prompt "magicvar"
-	help
-	  barebox has some shell variables with special meanings. This
-	  command shows the available magic variables.
+	  Usage: gpio_set_value GPIO VALUE
 
-config CMD_MAGICVAR_HELP
+config CMD_I2C
 	bool
-	prompt "display description"
-	depends on CMD_MAGICVAR
+	depends on I2C
+	prompt "i2c_probe, i2c_read and i2c_write"
 	help
-	  Also display a description to the magic variables
+	  i2c_probe - probe for an i2c device
 
-config CMD_DEVINFO
-	tristate
-	default y
-	prompt "devinfo"
+	  Usage: i2c_probe BUS START END
 
-config CMD_INSMOD
-	bool
-	depends on MODULES
-	default y
-	prompt "insmod"
+	  Probe the i2c bus BUS, address range from START to END for devices.
 
-config CMD_LSMOD
-	bool
-	depends on MODULES
-	prompt "lsmod"
 
-config CMD_GPIO
+	  i2c_read - read from an i2c device
+
+	  Usage: i2c_read [-bacrwv] DATA...
+
+	  Options:
+		  -b BUS		i2c bus number (default 0)
+		  -a ADDR		i2c device address
+		  -r START	start register
+		  -w		use word (16 bit) wide access
+		  -c COUNT	byte count
+		  -v		verbose
+
+
+	  i2c_write - write to an i2c device
+
+	  Usage: i2c_write [-barwv] DATA...
+
+	  Options:
+		  -b BUS		i2c bus number (default 0)
+		  -a ADDR		i2c device address
+		  -r START	start register
+		  -w		use word (16 bit) wide access
+		  -v		verbose
+
+config CMD_LED
 	bool
-	depends on GENERIC_GPIO
-	prompt "gpio commands"
+	depends on LED
+	prompt "led command"
 	help
-	  include gpio_set_value, gpio_get_value, gpio_direction_input and
-	  gpio_direction_output commands to control gpios.
+	  Control LEDs
 
-config CMD_REGULATOR
-	bool
-	depends on REGULATOR
-	prompt "regulator command"
+	  Usage: led LED VALUE
+
+	  Control the value of a LED. The exact meaning of VALUE is unspecified,
+	  it can be a brightness, or a color. Most often a value of '1' means on
+	  and '0' means off.
+
+	  Without arguments the available LEDs are listed.
+
+config CMD_NAND
+	tristate
+	default y
+	depends on NAND
+	prompt "nand"
 	help
-	  the regulator command lists the currently registered regulators and
-	  their current state.
+	  NAND flash handling
 
-config CMD_UNCOMPRESS
-	bool
-	select UNCOMPRESS
-	prompt "uncompress"
+	  Usage: nand [-adb] NANDDEV
+
+	  Options:
+		  -a		register a bad block aware device ontop of a normal NAND device
+		  -d		deregister a bad block aware device
+		  -b OFFS	mark block at OFFSet as bad
+
+config CMD_NANDTEST
+	tristate
+	depends on NAND
+	depends on PARTITION
+	depends on NAND_ECC_HW || NAND_ECC_SOFT
+	select PARTITION_NEED_MTD
+	prompt "nandtest"
 	help
-	  Say yes here to get the uncompress command. uncompress handles
-	  lzo, gzip and bzip2 compressed files depending on the compiled
-	  in compression libraries
+	  NAND flash memory test
 
-config CMD_I2C
-	bool
-	depends on I2C
-	prompt "i2c commands"
+	  Usage: nandtest [-tmsiol] NANDDEVICE
+
+	  Options:
+		  -t	Really do a nandtest on device
+		  -m	Mark blocks bad if they appear so
+		  -s SEED	supply random seed
+		  -i ITERATIONS	nNumber of iterations
+		  -o OFFS	start offset on flash
+		  -l LEN	length of flash to test
+
+config CMD_POWEROFF
+	tristate
+	depends on HAS_POWEROFF
+	prompt "poweroff"
 	help
-	  include i2c_probe, i2c_read and i2c_write commands to communicate
-	  on i2c bus.
+	  Turn the power off.
 
 config CMD_SPI
 	bool
 	depends on SPI
 	prompt "spi command"
 	help
+	  Write/read from SPI device
 
-config CMD_LED
-	bool
-	depends on LED
-	prompt "led command"
-	help
-	  include led command to control LEDs
+	  Usage: spi [-brcmfwv] DATA...
+
+	  Options:
+		  -b BUS	SPI bus number (default 0)
+		  -r COUNT	bytes to read
+		  -c		chip select (default 0)
+		  -m MODE	SPI mode (default 0)
+		  -f HZ		max speed frequency, in Hz (default 1 MHz)
+		  -w BIT	bits per word (default 8)
+		  -v		verbose
 
 config CMD_LED_TRIGGER
 	bool
 	depends on LED_TRIGGERS
 	prompt "trigger command"
 	help
-	  The trigger command allows to control LED triggers from the command
-	  line.
+	  Handle LED triggers
+
+	  Usage: trigger [-td] TRIGGER [LED]
+
+	  Control a LED trigger. Without options assigned triggers are shown.
+
+	  Options:
+	  -t  set a trigger (needs LED argument)
+	  -d  disable a trigger
 
 config CMD_USB
 	bool
@@ -748,56 +1603,155 @@ config CMD_USB
 	prompt "usb command"
 	default y
 	help
-	  The usb command allows to rescan for USB devices.
+	  (re-)detect USB devices
 
-config CMD_MIITOOL
-	tristate
-	depends on PHYLIB
-	prompt "miitool"
-	help
-	  The miitool command allows to view media-independent interface status.
-	  The default short output reports the negotiated link speed and
-	  link status for selected MII. The '-v' option displays more
-	  detailed MII status information, such as MII capabilities,
-	  current advertising mode, and link partner capabilities.
+	  Usage: usb [-f]
 
-config CMD_CLK
-	tristate
-	depends on COMMON_CLK
-	prompt "clock manipulation commands"
-	help
-	  Say yes here to get clk_set_rate, clk_set_parent and clk_dump
-	  commands to manipulate clocks on your system.
+	  Scan for USB devices.
 
-config CMD_DETECT
-	tristate
-	prompt "detect"
-	help
-	  say yes here to get the 'detect' command. Some devices take longer
-	  time to probe, like slow disks or SD/MMC cards. These can defer the
-	  actual probe of the client devices until they are needed. Use the
-	  'detect' command on the physical device to trigger probing.
+	  Options:
+		  -f	force rescan
 
-menuconfig CMD_WD
+config CMD_WD
 	bool
 	depends on WATCHDOG
 	prompt "wd command"
 	help
-	  The 'wd' command which allows to start, stop and trigger the onboard
-	  watchdog.
+	  Enable/disable/trigger the watchdog
 
-if CMD_WD
+	  Usage: wd [TIME]
+
+	  Enable the watchdog to bark in TIME seconds.
+	  When TIME is 0, the watchdog gets disabled,
+	  Without a parameter the watchdog will be re-triggered.
 
 config CMD_WD_DEFAULT_TIMOUT
 	int
 	default 0
+	depends on CMD_WD
 	prompt "default timeout"
 	help
 	  Define the default timeout value in [seconds] if the first call of
 	  'wd' is done without a timeout value (which means the watchdog gets
 	  enabled and re-triggered with the default timeout value).
-endif
 
+# end Hardware manipulation commands
+endmenu
+
+
+
+menu "Miscelleanous"
+
+config CMD_2048
+	tristate
+	prompt "2048"
+	help
+	  Console version of the game "2048" for GNU/Linux
+
+config CMD_BAREBOX_UPDATE
+	tristate
+	select BAREBOX_UPDATE
+	prompt "barebox-update"
+	help
+	  Update barebox to persistent media.
+
+	  Usage: barebox_update [-ltdyf] [IMAGE]
+
+	  Options:
+		  -l		list registered targets
+		  -t TARGET	specify data target handler name
+		  -d DEVICE	write image to DEVICE
+		  -y		autom. use 'yes' when asking confirmations
+		  -f LEVEL	set force level
+
+config CMD_LINUX_EXEC
+	bool "linux exec"
+	depends on LINUX
+	help
+	  Execute a command on the host
+
+	  Usage: linux_exec COMMAND
+
+config CMD_INSMOD
+	bool
+	depends on MODULES
+	default y
+	prompt "insmod"
+	help
+	  Load a barebox module.
+
+config CMD_LSMOD
+	bool
+	depends on MODULES
+	prompt "lsmod"
+	help
+	  List loaded barebox modules.
+
+config CMD_OF_NODE
+	tristate
+	select OFTREE
+	prompt "of_node"
+	help
+	  Create/delete nodes in the device tree
+
+	  Usage: of_node [-cd] NODE NAME
+
+	  Options:
+		  -c	create a new node
+		  -d	delete a node
+
+config CMD_OF_PROPERTY
+	tristate
+	select OFTREE
+	prompt "of_property"
+	help
+	  Handle device tree properties
+
+	  Usage: of_property [-sd] NODE [PROPERTY] [VALUES]
+
+	  Options:
+		  -s	set property to value
+		  -d	delete property
+
+	  Valid formats for values:
+	  <0x00112233 4 05> - an array of cells. cells not beginning with a digit are
+                    interpreted as node pathes and converted to phandles
+	  [00 11 22 .. nn]  - byte stream
+	  If the value does not start with '<' or '[' it is interpreted as string
+
+config CMD_OFTREE
+	tristate
+	select OFTREE
+	prompt "oftree"
+	help
+	  oftree - handle device trees
+
+	  Usage: oftree [-lpfdn] [DTB]
+
+	  Options:
+		  -l		Load DTB to internal device tree
+		  -p		probe devices from stored device tree
+		  -f		free stored device tree
+		  -d		dump device tree from DTB or the parsed tree if no DTB is given
+		  -n NODE	specify root device NODE to dump for -d
+
+config CMD_TIME
+	bool "time"
+	help
+	  time - measure execution duration of a command
+
+	  Usage: time COMMAND
+
+	  Note: This command depends on COMMAND being interruptible,
+	  otherwise the timer may overrun resulting in incorrect results
+
+# end Miscelleanous commands
+endmenu
+
+
+
+
+# end Commands
 endmenu
 
 endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
