Delivery-date: Thu, 04 Nov 2021 20:56:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miiqX-0000UY-Ko
	for lore@lore.pengutronix.de; Thu, 04 Nov 2021 20:56:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miiqW-0002zf-P5
	for lore@pengutronix.de; Thu, 04 Nov 2021 20:56:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qtcGuMrzof5sBgl56bQFfoDkH5Bwc7DJ77ZrzYD9cSs=; b=qW+WPWL4TFFAGLBrp2stwGG3oG
	XO239febW/gs1BA4c1v4VuSUVGuSuctITOHlwOjrw/rvZfX+JKbGizf0n+a7PCEDttUF2ipFO/xqI
	B2LeaKfjXuhhngLGOHm20dlcBL/r02iSfZUYr4R4n/WrOZsvispng7DwwyQDqG0oi/FUXbQQe4dX2
	jHLwPPOnItXeigOtetr75ZThrgvYucoxdll+8P1SKYaWHkDxIyg0NGJYFNBGZ6VD7GMGS17YyrbuH
	nGNhGU3x3zGutEzUdPFHk0Ve/OOvJCBx3PZwOQTnOwLsapNZJ1hDrzudFAd1g/u2qOJvhkR65Kw6N
	AXDhXR5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miipH-009u5d-KU; Thu, 04 Nov 2021 19:55:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miipC-009u52-4h
 for barebox@lists.infradead.org; Thu, 04 Nov 2021 19:55:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1miipA-0002bj-KY; Thu, 04 Nov 2021 20:55:00 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1miipA-0005nR-6O; Thu, 04 Nov 2021 20:55:00 +0100
Date: Thu, 4 Nov 2021 20:55:00 +0100
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20211104195500.GD25698@pengutronix.de>
References: <ee2d159c-4f0f-e81f-baca-343b846ee62e@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee2d159c-4f0f-e81f-baca-343b846ee62e@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:51:20 up 259 days, 23:15, 117 users,  load average: 0.10, 0.12,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211104_125502_213310_23223BEB 
X-CRM114-Status: GOOD (  24.79  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Inconsistent "compatible" string for Terasic DE0-Nano-SoC /
 Atlas SoC Kit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ian,

On Tue, Nov 02, 2021 at 02:22:51PM +0000, Ian Abbott wrote:
> Hi there!
> 
> I have a slight issue getting BootLoaderSpec entries for Terasic
> DE0-Nano-SoC to work:
> 
> barebox@Terasic DE0-Nano-SoC/Atlas-SoC Kit:/ boot mmc0
> blspec: ignoring entry with incompatible devicetree "terasic,de0-atlas"
> Nothing bootable found on 'mmc0'
> Nothing bootable found
> 
> From the (recent) Linux kernel sources
> "arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts":
> 
> 	model = "Terasic DE-0(Atlas)";
> 	compatible = "terasic,de0-atlas", "altr,socfpga-cyclone5", "altr,socfpga";
> 
> Of course, the above compatible string matches the barebox source
> "dts/src/arm/socfpga_cyclone5_de0_nano_soc.dts" file.
> 
> However the "model" and "compatible" strings get overridden by the barebox
> source "arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts":
> 
> 	model = "Terasic DE0-Nano-SoC/Atlas-SoC Kit";
> 	compatible = "terasic,de0-nano-soc","altr,socfpga-cyclone5",
> "altr,socfpga";
> 
> The socfpga_init() function in
> "arch/arm/boards/terasic-de0-nano-soc/board.c" also checks the "compatible"
> string for registering a PHY fixup:
> 
> static int socfpga_init(void)
> {
> 	if (!of_machine_is_compatible("terasic,de0-nano-soc"))
> 		return 0;
> 
> 	if (IS_ENABLED(CONFIG_PHYLIB))
> 		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK, phy_fixup);
> 
> 	return 0;
> }
> 
> I think I can get everything working by changing barebox's "compatible"
> string to the following:
> 
> 	compatible = "terasic,de0-atlas", "terasic,de0-nano-soc",
> "altr,socfpga-cyclone5", "altr,socfpga";

You can drop the model and compatible properties from
arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts and change the
of_machine_is_compatible check to the upstream dts string. I don't think
we have a good reason to keep the terasic,de0-nano-soc compatible.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

