Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqjiq-0001Hd-J4
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 11:44:26 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id AC4504B0177
 for <barebox@lists.infradead.org>; Mon, 16 Jul 2012 13:44:07 +0200 (CEST)
Date: Mon, 16 Jul 2012 13:44:06 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120716134406.57843f19@eb-e6520>
In-Reply-To: <5003FACD.80400@cmotion.eu>
References: <5003FACD.80400@cmotion.eu>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: tx51 ethernet regression
To: barebox@lists.infradead.org

Hi Christian,

Le Mon, 16 Jul 2012 13:28:13 +0200,
Christian Kapeller <christian.kapeller@cmotion.eu> a =E9crit :
> I recently came to update my barebox port based on the karo tx51 imx
> module from v2012.03.0 to v2012.07.0.
> =

> I discovered, that, when trying to use the ethernet connection, I more
> often than not get frame errors reported by the FEC.
> =

> --snip--
> barebox@Ka-Ro tx51:/ dhcp
> phy0: Link is up - 1000/Full
> error frame: 0x97b961c0 0x00000890
> error frame: 0x97b96188 0x00000882
> DHCP client bound to address 10.41.14.147
> --snap--
> =

> The errors range from 'non octet aligned frame' over 'Fifo overrun' to
> timeouts. It renders the ethernet support unusable. Small images may
> work but, require the one and other retry.
> =

> One thing that catches my eye is that the auto negotioation resulted in
> a 1000MBit link. The imx fec does only support 100MBit. I forced the
> link to be set to 10MBit by declaring xcv_type=3DMII10 in the
> fec_platform_data structure. Interestingly the link is now reported as
> 100MBit, and shows the same behaviour.
> =

> Another thing I checked was the changed pad definitions in commit
> 2bdc9f57a86dff41cfc1f87b644a2e53fdcce2b6. Not only the type of the pad
> data structure changed, but also some of their configuration as well.
> For example, pads that were configured with FEC_PAD_CTL, now have other
> settings enabled.
> =

> I'reverted the pad changes, but still no luck. Auto negtiation starts,
> but I don't seem to get any packets.
> =

> So my question is: What change since v2012.03.0 could cause this kind of
> behaviour?
> =

same problem here. the problem comes from :
68b32be4926d3ab5b72036c0ceecef2f82aa0625 "i.MX51: Synchronize iomux
header file from kernel"
as now most pins have NO_PAD_CTRL which means the pad doesn't get
reconfigured and thus some pads to communicate with the FEC are no more
working.

A dirty workaround to default PAD config is :
diff --git a/arch/arm/mach-imx/iomux-v3.c b/arch/arm/mach-imx/iomux-v3.c
index 680d260..c21d8a2 100644
--- a/arch/arm/mach-imx/iomux-v3.c
+++ b/arch/arm/mach-imx/iomux-v3.c
@@ -45,6 +45,8 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
 =

        if (!(pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
                __raw_writel(pad_ctrl, base + pad_ctrl_ofs);
+       else if ((pad_ctrl & NO_PAD_CTRL) && pad_ctrl_ofs)
+               __raw_writel(0, base + pad_ctrl_ofs);
 =

        return 0;
 }


Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
