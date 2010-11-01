Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq5-0007oL-VI
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:16 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:49 +0100
Message-Id: <1288600434-6112-17-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 16/21] doc: rework user manual
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/barebox-main.dox |  232 ++++++++++++----------------------------
 Documentation/building.dox     |   62 +++++++++++
 Documentation/commands.dox     |   17 +++-
 Documentation/first_steps.dox  |   61 +++++++++++
 Documentation/users_manual.dox |   12 ++-
 5 files changed, 216 insertions(+), 168 deletions(-)
 create mode 100644 Documentation/building.dox
 create mode 100644 Documentation/first_steps.dox

diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
index fb780e6..90fce8e 100644
--- a/Documentation/barebox-main.dox
+++ b/Documentation/barebox-main.dox
@@ -1,166 +1,74 @@
-/** @mainpage Universal Bootloader
-
-@section barebox_intro Introduction
-
-@a Barebox is a bootloader which follows the tradition of U-Boot.  U-Boot
-offers an excellent choice as a bootloader for today's embedded systems,
-seen from a user's point of view. Nevertheless, there are quite some
-design flaws which turned out over the last years and we think that they
-cannot be solved in a production tree. So this tree tries to do several
-things right - without caring about losing support for old boards.
-
-@par General features include:
-
-- A posix based file API
-  - inside @a barebox the usual open/close/read/write/lseek functions are used.
-    This makes it familiar to everyone who has programmed under unix systems.
-
-- usual shell commands like ls/cd/mkdir/echo/cat,...
-
-- The environment is not a variable store anymore, but a file store. It has
-  currently some limitations, of course. The environment is not a real
-  read/write filesystem, it is more like a tar archive, or even more like
-  an ar archive, because it cannot handle directories. The saveenv command
-  saves the files under a certain directory (by default /env) in persistent
-  storage (by default /dev/env0). There is a counterpart called loadenv, too.
+/** @mainpage Barebox
+
+Barebox is a bootloader that initializes a hardware and boots Linux and
+maybe other operating systems or bare metal code on a variety of
+processors. It was initialy derived from U-Boot and captures up with
+several of it's ideas, so users being familiar with U-Boot should come
+into production quickly with Barebox.
+
+However, as the Barebox developers are highly addicted to the Linux
+kernel, it's coding style and code quality, we try to stick as closely
+as possible to the methodologies and techniques developed in Linux. In
+addition we have a strong background in POSIX, so you'll find several
+good old Unix traditions realized in Barebox as well.
+
+@par Highlights:
+
+- <b>POSIX File API:</b><br>
+  @a Barebox uses the the well known open/close/read/write/lseek access
+  functions, together with a model of representing devices by files. This
+  makes the APIs familiar to everyone who has experience with Unix
+  systems.
+
+- <b>Shell:</b><br>
+  We have the standard shell commands like ls/cd/mkdir/echo/cat,...
+
+- <b>Environment Filesystem:</b><br>
+  In contrast to U-Boot, Barebox doesn't misuse the environment for
+  scripting. If you start the bootloader, it gives you a shell and
+  something that looks like a filesystem. In fact it isn't: it is a very
+  simple ar archive being extracted from flash into a ramdisk with 'loadenv'
+  and stored back with 'saveenv'.
+
+- <b>Filesystem Support:</b><br>
+  When starting up, the environment is mounted to /, followed by a
+  device filesytem being mounted to /dev in order to make it possible to
+  access devices. Other filesystems can be mounted on demand.
+
+- <b>Driver Model (borrowed from Linux):</b><br>
+  Barebox follows the Linux driver model: devices can be specified in a
+  hardware specific file, and drivers feel responsible for these devices
+  if they have the same name.
+
+- <b>Clocksource:</b><br>
+  We use the clocksource API knwon from Linux.
+
+- <b>Kconfig/Kbuild:</b><br>
+  This gives us parallel builds and removes the need for lots of ifdefs.
+
+- <b>Sandbox:</b><br>
+  If you develop features for @a Barebox, you can use the 'sandbox'
+  target which compiles @a Barebox as a POSIX application in the Linux
+  userspace: it can be started like a normal command and even has
+  network access (tun/tap). Files from the local filesytem can be used
+  to simulate devices.
+
+- <b>Device Parameters:</b><br>
+  There is a parameter model in @a Barebox: each device can specify it's
+  own parameters, which do exist for every instance. Parameters can be
+  changed on the command line with \<devid\>.\<param\>="...". For
+  example, if you want to access the IPv4 address for eth0, this is done
+  with 'eth0.ip=192.168.0.7' and 'echo $eth0.ip'.
+
+- <b>Getopt:</b><br>
+  @a Barebox has a lightweight getopt() implementation. This makes it
+  unnecessary to use positional parameters, which can be hard to read.
+
+- <b>Integrated Editor:</b><br>
+  Scripts can be edited with a small integrated fullscreen editor.
+  This editor has no features except the ones really needed: moving
+  the cursor around, typing characters, exiting and saving.
 
-- Real filesystem support
-  - The loader starts up with mounting a ramdisk on /. Then a devfs is mounted
-    on /dev allowing the user (or shell commands) to access devices. Apart from
-    these two filesystems there is currently one filesystem ported: cramfs. One
-    can mount it with the usual mount command.
-
-- device/driver model
-  - Devices are no longer described by defines in the config file. Instead
-    there are devices which can be registered in the board .c file or
-    dynamically allocated. Drivers will match upon the devices automatically.
-
-- clocksource support
-  - Timekeeping has been simplified by the use of the Linux clocksource API.
-    Only one function is needed for a new board, no [gs]et_timer[masked]() or
-    reset_timer[masked]() functions.
-
-- Kconfig and Kernel build system
-  - Only targets which are really needed get recompiled. Parallel builds are
-    no problem anymore. This also removes the need for many many ifdefs in
-    the code.
-
-- simulation target
-  - @a barebox can be compiled to run under Linux. While this is rather useless
-    in real world this is a great debugging and development aid. New features
-    can be easily developed and tested on long train journeys and started
-    under gdb. There is a console driver for linux which emulates a serial
-    device and a tap based ethernet driver. Linux files can be mapped to
-    devices under @a barebox to emulate storage devices.
-
-- device parameter support
-  - Each device can have a unlimited number of parameters. They can be accessed
-    on the command line with \<devid\>.\<param\>="...", for example
-    'eth0.ip=192.168.0.7' or 'echo $eth0.ip'
-
-- initcalls
-  - hooks in the startup process can be achieved with *_initcall() directives
-    in each file.
-
-- getopt
-  - There is a small getopt implementation. Some commands got really
-    complicated (both in code and in usage) due to the fact that @a U-Boot only
-    allowed positional parameters.
-
-- editor
-  - Scripts can be edited with a small editor. This editor has no features
-    except the ones really needed: moving the cursor and typing characters.
-
-@par Building barebox
-
-@a Barebox uses the Linux kernel's build system. It consists of two parts:
-the makefile infrastructure (kbuild), plus a configuration system
-(kconfig). So building @a barebox is very similar to building the Linux
-kernel.
-
-For the examples below, we use the User Mode @a barebox implementation, which
-is a port of @a barebox to the Linux userspace. This makes it possible to
-test drive the code without having real hardware. So for this test
-scenario, @p ARCH=sandbox is the valid architecture selection. This currently
-only works on ia32 hosts and partly on x86-64.
-
-Selection of the architecture and the cross compiler can be done in two
-ways. You can either specify it using the environment variables @p ARCH
-and @p CROSS_COMPILE, or you can create the soft links cross_arch and
-cross_compile pointing to your architecture and compiler. For @p ARCH=sandbox
-we do not need a cross compiler so it is sufficient to specify the
-architecture:
-
-@code # ln -s arch/sandbox cross_arch @endcode
-
-In order to configure the various aspects of @a barebox, start the @a barebox
-configuration system:
-
-@code # make menuconfig @endcode
-
-This command starts a menu box and lets you select all the different
-options available for your architecture. Once the configuration was
-finished (you can simulate this by using the standard demo config file
-with 'make sandbox_defconfig'), there is a .config file in the toplevel
-directory of the sourcecode.
-
-Once @a barebox is configured, we can start the compilation
-
-@code # make @endcode
-
-If everything goes well, the result is a file called @p barebox:
-
-@code
-  # ls -l barebox
-    -rwxr-xr-x 1 rsc ptx 114073 Jun 26 22:34 barebox
-@endcode
-
-@a barebox usually needs an environment for storing the configuration data.
-You can generate an environment using the example environment contained
-in arch/sanbox/board/env:
-
-@code # ./scripts/bareboxenv -s -p 0x10000 arch/sanbox/board/env/ env.bin @endcode
-
-To get some files to play with you can generate a cramfs image:
-
-@code # mkcramfs somedir/ cramfs.bin @endcode
-
-The @a barebox image is a normal Linux executable, so it can be started
-just like every other program:
-
-@code
-  # ./barebox -e env.bin -i cramfs.bin
-
-  barebox 2.0.0-trunk (Jun 26 2007 - 22:34:38)
-
-  loading environment from /dev/env0
-  barebox\> /
-@endcode
-
-Specifying -[ie] \<file\> tells @a barebox to map the file as a device
-under @p /dev. Files given with '-e' will appear as @p /dev/env[n]. Files
-given with '-i' will appear as @p /dev/fd[n].
-If @a barebox finds a valid configuration sector on @p /dev/env0 it will
-load it to @p /env. It then executes @p /env/init if it exists. If you have
-loaded the example environment @a barebox will show you a menu asking for
-your settings.
-
-If you have started @a barebox as root you will find a new tap device on your
-host which you can configure using ifconfig. Once you configured the
-network settings accordingly you can do a ping or tftpboot.
-
-If you have mapped a cramfs image try mounting it with
-
-@code
-  # mkdir /cram
-  # mount /dev/fd0 cramfs /cram
-@endcode
-
-Memory can be examined as usual using @p md/mw commands. They both understand
-the -f \<file\> option to tell the commands that they should work on the
-specified files instead of @p /dev/mem which holds the complete address space.
-Note that if you call 'md /dev/fd0' (without -f) @a barebox will segfault on
-the host, because it will interpret @p /dev/fd0 as a number.
 
 @par Directory layout
 
diff --git a/Documentation/building.dox b/Documentation/building.dox
new file mode 100644
index 0000000..895e9ac
--- /dev/null
+++ b/Documentation/building.dox
@@ -0,0 +1,62 @@
+/** @page building Building
+
+<i>This section describes how to build the Barebox bootloader.</i>
+
+@a Barebox uses Kconfig/Kbuild from the Linux kernel to build it's
+sources. It consists of two parts: the makefile infrastructure (kbuild)
+and a configuration system (kconfig). So building @a barebox is very
+similar to building the Linux kernel.
+
+In the examples below we use the "sandbox" configuration, which is a
+port of @a Barebox to the Linux userspace. This makes it possible to
+test the code without having real hardware or even qemu. Note that the
+sandbox architecture does only work well on x86 and has some issues on
+x86_64.
+
+\todo Find out about issues on x86_64.
+
+Selecting the architecture and the corresponding cross compiler can be
+done with two methods: You can either specify it using the environment
+variables @p ARCH and @p CROSS_COMPILE or you can create the soft links
+<i>cross_arch</i> and <i>cross_compile</i>, pointing to your
+architecture and compiler.
+
+\todo How to use the links? This doesn't work!
+
+For @p ARCH=sandbox we do not need a cross compiler, so it is sufficient
+to specify the architecture:
+
+@code
+# ln -s arch/sandbox cross_arch
+@endcode
+
+In order to configure the various aspects of @a barebox, start the
+@a barebox configuration system:
+
+@code
+# make menuconfig
+@endcode
+
+This command starts a menu box and lets you select all the different
+options available for the selected architecture. Once the configuration
+is finished (you can simulate this by using the default config file with
+'make sandbox_defconfig'), there is a .config file in the toplevel
+directory of the sourcecode.
+
+After @a barebox is configured, we can start the compilation:
+
+@code
+# make
+@endcode
+
+You can use '-j \<n\>' in order to do a parallel build if you have more
+than one cpus.
+
+If everything goes well, the result is a file called @p barebox: 
+
+@code
+# ls -l barebox
+-rwxr-xr-x 1 rsc ptx 114073 Jun 26 22:34 barebox
+@endcode
+
+*/
diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 2679ed7..aa489e0 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -1,5 +1,19 @@
 /**
- * @page command_reference Supported Shell Commands
+ * @page command_reference Shell Commands
+
+<i>This section describes the commands which are available on the @a
+Barebox shell. </i>
+
+@a Barebox, as a bootloader, usually shall start the Linux kernel right
+away. However, there are several use cases around which make it
+necessary to have some (customizable) logic and interactive scripting
+possibilities. In order to achieve this, @a Barebox offers several
+commands on it's integrated commandline shell.
+
+The following alphabetically sorted list documents all commands
+available in @a Barebox:
+
+\todo Sort this by functionality?
 
 @li @subpage addpart_command
 @li @subpage bmp_command
@@ -28,4 +42,5 @@
 @li @subpage sh_command
 @li @subpage unprotect_command
 @li @subpage linux16_command
+
 */
diff --git a/Documentation/first_steps.dox b/Documentation/first_steps.dox
new file mode 100644
index 0000000..edc612f
--- /dev/null
+++ b/Documentation/first_steps.dox
@@ -0,0 +1,61 @@
+/** @page first_steps First Steps
+
+<i>This section demonstrates the first steps with the 'sandbox'
+platform. </i>
+
+@a barebox usually needs an environment for storing it's configuration.
+You can generate an environment using the example-environment contained
+in arch/sanbox/board/env:
+
+@code
+# ./scripts/bareboxenv -s -p 0x10000 arch/sanbox/board/env/ env.bin
+@endcode
+
+To get some files to play with you can generate a cramfs image:
+
+@code
+# mkcramfs somedir/ cramfs.bin
+@endcode
+
+The @a barebox image is a normal Linux executable, so it can be started
+just like every other program:
+
+@code
+# ./barebox -e env.bin -i cramfs.bin
+
+barebox 2010.10.0 (Oct 29 2010 - 13:47:17)
+
+loading environment from /dev/env0
+barebox\> /
+@endcode
+
+Specifying -[ie] \<file\> tells @a barebox to map the file as a device
+under @p /dev. Files given with '-e' will appear as @p /dev/env[n]. Files
+given with '-i' will appear as @p /dev/fd[n].
+
+If @a barebox finds a valid configuration sector on @p /dev/env0, it
+will be loaded into @p /env and executes @p /env/init if existing.
+The default environment from the example above will show up a menu
+asking for the relevant settings.
+
+If you have started @a barebox as root you will find a new tap device on
+your host which you can configure using ifconfig. Once configured with
+valid network addresses, barebox can be used to ping the host machine or
+to fetch files with tftp.
+
+\todo Add more about tun/tap configuration
+
+If you have mapped a cramfs image, try mounting it with
+
+@code
+# mkdir /cram
+# mount /dev/fd0 cramfs /cram
+@endcode
+
+Memory can be examined using @p md/mw commands. They both understand the
+-f \<file\> option to tell the commands that they should work on the
+specified files instead of @p /dev/mem (which holds the complete address
+space). Note that if you call 'md /dev/fd0' (without -f), @a barebox will
+segfault on the host, because it will interpret @p /dev/fd0 as a number.
+
+*/
diff --git a/Documentation/users_manual.dox b/Documentation/users_manual.dox
index 0a0a13e..bbc7911 100644
--- a/Documentation/users_manual.dox
+++ b/Documentation/users_manual.dox
@@ -1,14 +1,16 @@
 /** @page users_manual User's Manual
 
-Who should read this part?
+This manual provides help for working with @a Barebox from the user's
+point of view. So if you want to use @a Barebox for booting your target,
+you find a lot of nice tricks on these pages to make your life easier.
 
-Mostly everyone. The user needs it to find help for his daily work to manage
-his targets. The developer to find out all the new features that make his
-work easier.
+@li @subpage building
+@li @subpage first_steps
+@li @subpage command_reference
 
+\todo Rework the following sections
 @li @subpage shell_notes
 @li @subpage readline_parser
-@li @subpage command_reference
 @li @subpage x86_bootloader
 @li @subpage net_netconsole
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
