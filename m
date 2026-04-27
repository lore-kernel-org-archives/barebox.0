Delivery-date: Mon, 27 Apr 2026 12:55:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHJcq-00Gus9-2o
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 12:55:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHJcq-0000fZ-8s
	for lore@pengutronix.de; Mon, 27 Apr 2026 12:55:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zk8M+V49FP4n3mv+gVfGwUcVBBA1xOpkA/a4ONlDwh4=; b=YZ53V3OfMmkR3/DTgTOMT6i3Ca
	4+zI0vD1PpsS5UCyqb83jZ6SP8W6I0IAxV/vNoLJSXAXcJbIwiCd0/xYdz7rp4lm2Un0ZwvfpaSCz
	Zp/DPlwmG+CB8llMesV3dWJQ3NKAemmFmAjwAz9LIkbHoZyK5O6fb7rV/KKagPAKtkHPHi5cI+l/Y
	3CTrz6B2xo5vs+lkHl4i4iiN3fn2krNU25QBCVUAvwJVSEXDABXcDwlWEq6hGJ4QBk99NMrZSPD5J
	nT7/9lqMqC/KX2tBVp0mmQ07tx7PKgqYDNFdG51rNzf3SMUwXjiJzsY352mwVO+z9Trca0WYjUyLv
	PBkzzwjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJcO-0000000Gjka-3jPN;
	Mon, 27 Apr 2026 10:55:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJcL-0000000Gjjz-4BxH
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 10:55:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wHJcI-0000UD-Sf; Mon, 27 Apr 2026 12:55:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wHJcI-007TZZ-2G;
	Mon, 27 Apr 2026 12:55:06 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wHJcI-00000001KhY-2UsJ;
	Mon, 27 Apr 2026 12:55:06 +0200
Date: Mon, 27 Apr 2026 12:55:06 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <ae9AikCbJd7IqpDB@pengutronix.de>
References: <20260422-socfpga-agilex5-dwmac-v1-1-648a33bd9ec2@pengutronix.de>
 <ae8OSdAg1TLIsplr@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ae8OSdAg1TLIsplr@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_035510_096254_E47EA431 
X-CRM114-Status: GOOD (  21.58  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: socfpga: AXE5-Eagle: fix phy reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 27 Apr 2026 09:20:41 +0200, Sascha Hauer wrote:
> On Wed, Apr 22, 2026 at 05:56:11PM +0200, Michael Tretter wrote:
> > The snps,reset-gpio is a property of the Synopsys DesignWare MAC and
> > belongs into the gmac node.
> > 
> > The property is deprecated and shall be replaced by regular gpio reset
> > at the phy. However, use the deprecated binding to be sure that the
> > dwmac driver handles the reset for now.
> 
> So what's missing to handle the regular gpio reset at phy level?

I tested this with a reset at the phy level and it works just fine. I'll
send a v2 with a regular gpio reset at phy level.

Michael

> 
> Would be good to have that information in the commit message.
> 
> Sascha
> 
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/dts/socfpga_agilex5_axe5_eagle.dts | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
> > index f67b974f2adc..732d6142dcb1 100644
> > --- a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
> > +++ b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
> > @@ -74,16 +74,16 @@ &gmac2 {
> >  	status = "okay";
> >  	phy-mode = "rgmii-id";
> >  	phy-handle = <&emac2_phy0>;
> > -
> >  	max-frame-size = <9000>;
> > +	snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
> > +	snps,reset-active-low;
> > +	snps,reset-delays-us = <0 10000 10000>;
> >  
> >  	mdio0 {
> >  		#address-cells = <1>;
> >  		#size-cells = <0>;
> >  		compatible = "snps,dwmac-mdio";
> >  		emac2_phy0: ethernet-phy@1 {
> > -			snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
> > -			snps,reset-delays-us = <0 10000 10000>;
> >  			reg = <0x1>;
> >  			adi,rx-internal-delay-ps = <2000>;
> >  			adi,tx-internal-delay-ps = <2000>;
> > 
> > ---
> > base-commit: 7b492daea9347fd55bf29560c2ec494ca1040f95
> > change-id: 20260422-socfpga-agilex5-dwmac-9d45a7c123a8


