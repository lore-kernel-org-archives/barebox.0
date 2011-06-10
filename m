Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUw3Z-0001qG-OJ
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 07:23:03 +0000
Date: Fri, 10 Jun 2011 09:22:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110610072259.GR23771@pengutronix.de>
References: <6F2524F76379064FB8CB9CEE698D56DA8D40E67B65@IN-MSG-01.amer.actel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6F2524F76379064FB8CB9CEE698D56DA8D40E67B65@IN-MSG-01.amer.actel.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: sandbox build failing on redhat host
To: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Murthy,

On Mon, Jun 06, 2011 at 03:47:35PM +0530, Murthy, Ramana wrote:
> Hi All,
> 
> I am trying to build barebox with ARCH = sandbox. My make menuconfig is successful.
> But the actual build is throwing below errors. As I understand, the
> errors are because offt_build.c that includes <asm/barebox.h>. But in
> case of ARCH=sandbox,the arch/sandbox/inlcude/asm/barebox.h contains
> nothing. Is itsupposed to compile ft_build.c in case of sandbox?

It is supposed to be built when CONFIG_OF_FLAT_TREE is enabled. This
is not the case in sandbox_defconfig. Please do a make menuconfig
and disable

General Settings                --->
	[ ] Open Firmware flat device tree support

That should do it.

Sascha


> 
>  CHK     include/generated/version.h
>  CHK     include/generated/utsrelease.h
>  SYMLINK include/config.h -> arch/sandbox/board//config.h
>  CC      scripts/mod/empty.o
>  HOSTCC  scripts/mod/mk_elfconfig
>  MKELF   scripts/mod/elfconfig.h
>  HOSTCC  scripts/mod/modpost.o
>  HOSTCC  scripts/mod/sumversion.o
>  HOSTLD  scripts/mod/modpost
>  HOSTCC  scripts/bin2c
>  HOSTCC  scripts/mkimage
>  HOSTCC  scripts/bareboxenv
>  CC      common/hush.o
>  CC      common/date.o
>  CC      common/ft_build.o
> In file included from common/ft_build.c:33:
> include/ft_build.h:59: error: syntax error before "bd_t"
> include/ft_build.h:59: warning: function declaration isn't a prototype
> include/ft_build.h:65: error: syntax error before "bd_t"
> include/ft_build.h:65: warning: function declaration isn't a prototype
> include/ft_build.h:66: error: syntax error before "bd_t"
> include/ft_build.h:66: warning: function declaration isn't a prototype
> include/ft_build.h:67: error: syntax error before "bd_t"
> include/ft_build.h:67: warning: function declaration isn't a prototype
> common/ft_build.c:458: error: syntax error before "bd_t"
> common/ft_build.c:459: warning: function declaration isn't a prototype
> common/ft_build.c: In function `ft_setup':
> common/ft_build.c:477: error: `blob' undeclared (first use in this function)
> common/ft_build.c:477: error: (Each undeclared identifier is reported only once
> common/ft_build.c:477: error: for each function it appears in.)
> common/ft_build.c:477: error: `bd' undeclared (first use in this function)
> common/ft_build.c:488: error: `initrd_start' undeclared (first use in
> this function)
> common/ft_build.c:488: error: `initrd_end' undeclared (first use in
> this function)
> common/ft_build.c:460: warning: unused variable `p'
> common/ft_build.c:461: warning: unused variable `len'
> common/ft_build.c:463: warning: unused variable `clock'
> make[1]: *** [common/ft_build.o] Error 1
> make: *** [common] Error 2
> 
> Best Regards,
> N.S.S.R.Murthy,
> Ph # +91-40-67303600, Extn - 3731,
> Mobile # +91-9959677780.
> 
> 
> ________________________________
> The information contained in or attached to this email may be subject to the Export Administration Regulations (EAR), administered by the U.S. Department of Commerce, or the International Traffic in Arms Regulations (ITAR), administered by the U.S. Department of State, and may require an export license from the Commerce or State Department prior to its export. An export can include a release or disclosure to a foreign national inside or outside the United States. Include this notice with any reproduced portion of this information.

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
