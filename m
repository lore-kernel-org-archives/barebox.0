Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abR6U-0004yL-KA
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 11:07:36 +0000
Message-ID: <1457003231.3425.35.camel@pengutronix.de>
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 03 Mar 2016 12:07:11 +0100
In-Reply-To: <1455910105.5604.104.camel@ws-apr.office.loc>
References: <1455910105.5604.104.camel@ws-apr.office.loc>
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
Subject: Re: phytec-som-imx6: DCD setup: PLL reduction and video core settings
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 19.02.2016, 20:28 +0100 schrieb Andreas Pretzsch:
> While looking into a maybe boarderline RAM setup on one specific piece
> of hardware, I took a closer look at the i.MX6 DDR setup of the Phytec
> i.MX6 modules in barebox.
> And came across two things that look ... somewhat questionable, maybe
> worth a look.
> 
> In the very first setup (the DCD) in
>     arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
> there is a block
>     wm 32 0x020e0010 0xf00000ff
>     wm 32 0x020e0018 0x007F007F
>     wm 32 0x020e001c 0x007F007F
>     wm 32 0x020c8000 0x80002021
> at the end.
> 
> 
> The first three (comments about complete register meanings added by me)
>     // IOMUX_GPR4 : VDOA, PCIe, VPU, IPU cache setup ; stop acknowledge
>     wm 32 0x020e0010 0xf00000ff
>     // IOMUX_GPR6 : IPU1 QoS setup
>     wm 32 0x020e0018 0x007F007F
>     // IOMUX_GPR7 : IPU2 QoS setup
>     wm 32 0x020e001c 0x007F007F
> do setup some cache attributes of VDOA, IPU, VPU (some of the video
> cores) and IPU QoS. Beside accessing two reserved bits in GPR4, they
> maybe do not harm, and can be found also in various other board files.
> Might be some case of copy-from-copy, no idea.
> Not sure if these really should be part of lowest-level memory setup...
> Maybe - if at all - in some board-specific setup, given barebox drives a
> display.
> Also, a quick google search shows the possible origin, and that it has
> been removed in some U-Boot branch, leaving it to the Linux kernel:
> https://github.com/linksprite/u-boot-acadia1.0-beta/blob/master/u-boot-acadia1.0-beta/patches/0546-ENGR00215515-MX6-Move-IPU-QoS-and-VDOA-IPU-VPU-AXI-C.patch
> So maybe more of a cleanup issue.
> Not only in the Phytec DCDs, but maybe also the other ones.

Also imx6_init_lowlevel() already contains the code to enable the caches
and set the IPU QoS priorities. There is no need to set these up in the
DCD already, so I'd say these should just be dropped.

regards
Philipp


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
