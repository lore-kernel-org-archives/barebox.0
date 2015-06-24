Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7ljz-0000QY-04
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 14:33:27 +0000
Message-ID: <1435156380.25607.28.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 24 Jun 2015 16:33:00 +0200
In-Reply-To: <1435087804.28585.8.camel@lynxeye.de>
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de> <55894326.5000107@teledigit.eu>
 <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
 <558961C0.2090005@teledigit.eu>
 <CAOpc7mF1SnaT0==JpBTPvJ=b_MiwADfWNLAJ=moKd61ietku1w@mail.gmail.com>
 <55897294.10908@teledigit.eu>
 <CAOpc7mEoU-a2Hk3nkQjQX-ya7Nobf3un-aaJpJ0QeG+Ye_JuVA@mail.gmail.com>
 <20150623195716.4fda658d@kgy-pc.lan> <1435087804.28585.8.camel@lynxeye.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: jlu@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Compiling barebox for newest Yocto/meta-freescale
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org, Gyorgy Kovesdi <kgy@teledigit.eu>, Holger Hans Peter Freyther <holger@freyther.de>

On Di, 2015-06-23 at 21:30 +0200, Lucas Stach wrote:
> Also you don't have a hard-float only environment, your toolchain is
> perfectly able to build with the soft-float ABI, it's just that Yocto
> apparently passes the mfloat-abi=hard flag everywhere instead of
> setting a reasonable toolchain default.

I have the same problem now, as well (triggered by setting
DEFAULTTUNE="cortexa8hf-neon").

The kernel uses the same -msoft-float in arch/arm/Makefile as we do in
barebox. As Lucas said, this is actually important for correct behavior.

Yocto handles this by building the kernel with CC="${KERNEL_CC}"
LD="${KERNEL_LD}" instead (see kernel.bbclass and kernel-arch.bbclass).
For barebox I now have:
do_compile () {
        unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
        oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}"
}

These settings make it impossible to build the barebox target userspace
tools from scripts/, though. This is because the --sysroot parameter is
passed by Yocto only in ${CC} and not in ${KERNEL_CC}, so the target
userspace tools will fail to find their standard headers. So I have as a
temporary workaround:
do_configure_prepend() {
        cp ${WORKDIR}/defconfig ${S}/.config
        # do not compile tools when using KERNEL_CC/KERNEL_LD
        echo CONFIG_BAREBOXENV_TARGET=n >> ${S}/.config
        echo CONFIG_BAREBOXCRC32_TARGET=n >> ${S}/.config
        echo CONFIG_KERNEL_INSTALL_TARGET=n >> ${S}/.config
        echo CONFIG_IMD_TARGET=n >> ${S}/.config
        oe_runmake oldconfig
}

To compile the target userspace tools, we'll need to use ${CC} instead,
which is currently not supported by our (or the kernel's) kbuild. It
seems that we currently build these tools with -msoft-float as well,
which causes no problems because we don't use float math, but it's not
correct either.

Gyorgy, could you point us to the Yocto side of the discussion, if it
was on some list?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
