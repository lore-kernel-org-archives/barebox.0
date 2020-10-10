Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRF17-00072g-4m
 for barebox@lists.infradead.org; Sat, 10 Oct 2020 13:34:34 +0000
Date: Sat, 10 Oct 2020 15:34:30 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20201010133430.6cruwkkpowlduh6c@pengutronix.de>
References: <20200914200309.32513-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914200309.32513-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] README: update to reflect current state
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 14, 2020 at 10:03:08PM +0200, Ahmad Fatoum wrote:
> The bulk of the README has stayed unchanged for the last ten years or
> so. Polish it up up a bit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  README | 40 ++++++++++++++++++++--------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/README b/README
> index d8077d21b618..c4c8abbb4b62 100644
> --- a/README
> +++ b/README
> @@ -18,33 +18,34 @@ Features
>  
>  - The environment is not a variable store anymore, but a file store. It has
>    currently some limitations, of course. The environment is not a real
> -  read/write filesystem, it is more like a tar archive, or even more like
> -  an ar archive, because it cannot handle directories. The saveenv command
> -  saves the files under a certain directory (by default /env) in persistent
> -  storage (by default /dev/env0). There is a counterpart called loadenv, too.
> +  read/write filesystem, but more like a tar archive.
> +  The saveenv command saves the files under a certain directory (by default
> +  /env) in persistent storage (by default /dev/env0). There is a counterpart
> +  called loadenv, too.
>  
>  - filesystem support
>    The loader starts up with mounting a ramdisk on /. Then a devfs is mounted
>    on /dev allowing the user (or shell commands) to access devices. Apart from
> -  these two filesystems there is currently one filesystem ported: cramfs. One
> -  can mount it with the usual mount command.
> +  these two filesystems there are a number of different filesystems ported:
> +  ext4, efi, efivarfs, ext4, fat, jffs2, NFS, pstore, squashfs, ubifs,
> +  u-boot variable FS among others.
>  
>  - device/driver model
>    Devices are no longer described by defines in the config file. Instead
> -  there are devices which can be registered in the board .c file or
> -  dynamically allocated. Drivers will match upon the devices automatically.
> +  devices are registered as they are discovered (e.g. through OpenFirmware
> +  device tree traversal or EFI handles) or by board code.
> +  Drivers will match upon the devices automatically.
>  
>  - clocksource support
>    Timekeeping has been simplified by the use of the Linux clocksource API.
> -  Only one function is needed for a new board, no [gs]et_timer[masked]() or
> -  reset_timer[masked]() functions.
> +  no [gs]et_timer[masked]() or reset_timer[masked]() functions.

This does not read lika a complete sentence to me, and I don't know what
it should read instead... did you miss something in the commit?

 - Roland

>  - Kconfig and Kernel build system
>    Only targets which are really needed get recompiled. Parallel builds are
>    no problem anymore. This also removes the need for many many ifdefs in
>    the code.
>  
> -- simulation target
> +- ARCH=sandbox simulation target
>    barebox can be compiled to run under Linux. While this is rather useless
>    in real world this is a great debugging and development aid. New features
>    can be easily developed and tested on long train journeys and started
> @@ -53,7 +54,7 @@ Features
>    devices under barebox to emulate storage devices.
>  
>  - device parameter support
> -  Each device can have a unlimited number of parameters. They can be accessed
> +  Each device can have an unlimited number of parameters. They can be accessed
>    on the command line with <devid>.<param>="...", for example
>    'eth0.ip=192.168.0.7' or 'echo $eth0.ip'
>  
> @@ -83,7 +84,7 @@ For the examples below, we use the User Mode barebox implementation, which
>  is a port of barebox to the Linux userspace. This makes it possible to
>  test drive the code without having real hardware. So for this test
>  scenario, ARCH=sandbox is the valid architecture selection. This currently
> -only works on ia32 hosts and partly on x86-64.
> +works on at least IA32 hosts and x86-64 hosts.
>  
>  Selection of the architecture and the cross compiler can be done by using
>  the environment variables ARCH and CROSS_COMPILE.
> @@ -137,7 +138,7 @@ loaded the example environment barebox will show you a menu asking for
>  your settings.
>  
>  If you have started barebox as root you will find a new tap device on your
> -host which you can configure using ifconfig. Once you configured bareboxs
> +host which you can configure using ifconfig. Once you configured barebox'
>  network settings accordingly you can do a ping or tftpboot.
>  
>  If you have mapped a cramfs image try mounting it with
> @@ -157,16 +158,15 @@ Directory Layout
>  
>  Most of the directory layout is based upon the Linux Kernel:
>  
> -arch/*/               -> contains architecture specific parts
> -arch/*/mach-*/        -> SoC specific code
> +arch/*                -> contains architecture specific parts
> +arch/*/include        -> architecture specific includes
> +arch/*/mach-*         -> SoC specific code
> +arch/*/mach-*/include -> SoC specific includes
>  
>  drivers/serial        -> drivers
>  drivers/net
>  drivers/...
>  
> -include/asm-*         -> architecture specific includes
> -include/asm-*/arch-*  -> SoC specific includes
> -
>  fs/                   -> filesystem support and filesystem drivers
>  
>  lib/                  -> generic library functions (getopt, readline and the
> @@ -188,7 +188,7 @@ Documentation/        -> Sphinx generated documentation. Call "make docs" to
>  Release Strategy
>  ----------------
>  
> -Barebox is developed with git. From time to time, tarball releases are
> +Barebox is developed with git. On a monthly schedule, tarball releases are
>  branched from the repository and released on the project web site. Here
>  are the release rules:
>  
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
