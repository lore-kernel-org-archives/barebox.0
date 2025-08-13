Delivery-date: Wed, 13 Aug 2025 07:33:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um46q-0004my-1o
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 07:33:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um46p-0005p5-Eb
	for lore@pengutronix.de; Wed, 13 Aug 2025 07:33:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h0hTt9p0eNK/Jpz8DY6nmrOlYM4fyW/VVe4M1V+5Vbs=; b=QJceia6xG5vGruUkChaXur8bi4
	tPaGK0F8ZxNvio3YUmxSph/pZiTWlc7YotugSYHeKugPCvt3xiP7laKseDOVH0DTN74Z4JruoMl3Y
	xVI5zyxbQBqTwOjDR+YIM0m5NwUZ56+akyOr1XiEOP7NZdpVXyNMQJB26PLdC8wAWwZjpgi394mLA
	TIrWKpkOpcHWKRuuH3xR8yocL9Dty08QpviGfxBOCxHOPto5K3O2iA+FIA9d1n6CGcRn4kRNe0X6/
	eOmonM8M5jyX7w0yThkycyF/kzr1BJW7zgYfXggr+RnxRkvVb3B5ceUTuZQ3ASszQ4MTy0CHyVbpp
	9ID70sQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um46O-0000000CerY-3Ubx;
	Wed, 13 Aug 2025 05:32:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um46M-0000000Cer8-3VWE
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 05:32:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1um46L-0005l5-Mf; Wed, 13 Aug 2025 07:32:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1um46L-0002Xm-1f;
	Wed, 13 Aug 2025 07:32:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1um46L-008z4P-1L;
	Wed, 13 Aug 2025 07:32:41 +0200
Date: Wed, 13 Aug 2025 07:32:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Jander <david@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <aJwjeV5NcM4E4IsW@pengutronix.de>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_223242_875886_EAAA3869 
X-CRM114-Status: GOOD (  17.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] Add Rockchip RK3576 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On Mon, Aug 11, 2025 at 08:40:18AM +0200, David Jander wrote:
> This set of patches adds basic support for Rockchip RK3576 SoCs.
> Peripheral support is added for aiodev (SARADC) and GPIO.
> 
> David Jander (8):
>   clk: rockchip: clk-pll.c: Fix macro name confusion
>   clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
>   ARM: Initial support for Rockchip RK3576
>   arm: dts: Add barebox specific RK3576.dtsi
>   aiodev: rockchip_saradc.c: Add support for RK3576
>   gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
>   arm: dts: rk3576.dtsi: Add gpio aliases
>   phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found

Looks fine. Do you happen to have some board support for the RK3576 as
well? Would be good to have for compile coverage.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


