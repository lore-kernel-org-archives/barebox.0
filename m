Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wji26-00026q-2X
 for barebox@lists.infradead.org; Mon, 12 May 2014 04:40:12 +0000
Date: Mon, 12 May 2014 06:39:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140512043944.GW5858@pengutronix.de>
References: <1399761388-1984-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1399761388-1984-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] Kconfig: Fix menuconfig build
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Franck,

On Sun, May 11, 2014 at 12:36:28AM +0200, Franck Jullien wrote:
> Using Centos 6.5 with x86_64 architecture, "make menuconfig" commands
> results in the following:
> 
>   HOSTLD  scripts/kconfig/mconf
> /opt/centos/devtoolset-1.1/root/usr/libexec/gcc/x86_64-redhat-linux/4.7.2/ld:
> scripts/kconfig/lxdialog/checklist.o: undefined reference to symbol
> 'acs_map'
> /opt/centos/devtoolset-1.1/root/usr/libexec/gcc/x86_64-redhat-linux/4.7.2/ld:
> note: 'acs_map' is defined in DSO /lib64/libtinfo.so.5 so try adding it
> to the linker command line
> /lib64/libtinfo.so.5: could not read symbols: invalid operation
> collect2: error: ld returned 1 exit status
> make[1]: *** [scripts/kconfig/mconf] Error 1
> make: *** [menuconfig] Error 2
> 
> When "-ltinfo" is added to the LDFLAGS symbol as suggested by the linker,
> it builds and runs correctly.

This issue came up over a year ago and the patch is still not upstream
in Linux. Do you have the same issue when compiling Linux aswell?

I could apply this, but it may happen that the change gets lost with the
next Kconfig update. So it's good when the issue is fixed upstream.

Sascha

> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  scripts/kconfig/Makefile |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
> index 844bc9d..8bdd7bc 100644
> --- a/scripts/kconfig/Makefile
> +++ b/scripts/kconfig/Makefile
> @@ -218,6 +218,7 @@ HOSTCFLAGS_gconf.o	= `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
>                            -Wno-missing-prototypes
>  
>  HOSTLOADLIBES_mconf   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
> +HOSTLOADLIBES_mconf += -ltinfo
>  
>  HOSTLOADLIBES_nconf	= $(shell \
>  				pkg-config --libs menu panel ncurses 2>/dev/null \
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
