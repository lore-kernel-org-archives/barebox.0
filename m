Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgByO-00025s-5Z
 for barebox@lists.infradead.org; Tue, 21 Feb 2017 15:03:26 +0000
Message-ID: <1487689380.2268.18.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 21 Feb 2017 16:03:00 +0100
In-Reply-To: <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
Mime-Version: 1.0
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
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: gianluca <gianlucarenzi@eurekelettronica.it>
Cc: barebox@lists.infradead.org

Am Dienstag, den 21.02.2017, 14:04 +0100 schrieb gianluca:
> Hello everybody!
> 
> I am fighting to enable ldb in Linux 4.9.7. In barebox the SAME 
> device-tree is modified by barebox to enable/disable the ldb or hdmi 
> depending on what is found.
> 
> During Linux bootup with HDMI only, it works with no hassle.
> 
> If booting with ldb it does not start the ldb driver registration due to 
> a panel/bridge missing.
> 
> In the config of linux kernel I have (as imx_v6_v7_defconfig) all drm 
> and simple panel enabled.
> 
> What is missing???
> 
> Best regards,
> Gianluca
> 
> -------- Forwarded Message --------
> Subject: Barebox 2017.02 works great but no Linux Framebuffer... :-/
> Date: Mon, 20 Feb 2017 16:36:06 +0100
> From: gianluca <gianlucarenzi@eurekelettronica.it>
> To: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Hello Sascha,
> 
> During last week I was able to activate/deactivate the hdmi and ldb 
> nodes from internal device-tree of Barebox and everything is working great.
> 
> Now I would like to boot up with the kernel 4.9.7 with the following 
> commandline but it fails.
> 
> The kernelcmd line is:
> 
> > console=ttymxc2,115200 rootwait noswap ip=none noinitrd rootfstype=nilfs2 root=/dev/mmcblk1p3 fec.macaddr=0x7a,0x3f,0x03,0xe3,0xa2,0xff system_rev=0xe3600000 system_serialnr=0x00000000 lcd_type=am1280800n3tz fastboot quiet loglevel=3 console=tty0  video=mxcfb0:dev=ldb,if=RGB24,bpp=32 fbmem=32M vmalloc=400M
> 
> The problem is the ldb (imx-ldb.c you wrote in kernel 
> drivers/gpu/drm/imx...). It fails with the following error:
> 
> > [    7.526349] imx-ldb 2000000.aips-bus:ldb@020e0008: panel/bridge not found: /panel --
> > [    7.526369] imx-drm display-subsystem: failed to bind 2000000.aips-bus:ldb@020e0008 (ops 0xc097aaa0): -517
> > [    7.526785] imx-drm display-subsystem: master bind failed: -517
> 
> The device-tree is attached.
> 
> The device tree is the same as Barebox (it has only an #included 
> commented out).
> 
> Both hdmi and ldb nodes are initially left "disabled" then barebox 
> enable the node corresponding to the hardware found (i.e. it changes the 
> status to "okay")
> 
> In barebox everything is working.
> 
> In linux NOT. What is exactly a 'channel->bridge' and 'channel->panel' 
> in device-tree therminology?
> 
> Barebox is working without it, so I suppose it was working in Linux 
> kernel too...

No, Linux does not support DT defined modes in the panel. You need a
panel with a proper compatible and driver.

See drivers/gpu/drm/panel. For most LVDS panels simple-panel is what you
want to use.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
