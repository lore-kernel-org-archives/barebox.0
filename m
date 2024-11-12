Delivery-date: Tue, 12 Nov 2024 09:51:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAmcB-000wpd-1r
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 09:51:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAmcA-00011m-UW
	for lore@pengutronix.de; Tue, 12 Nov 2024 09:51:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6r+siQFCEfG+Hgy9pCavztCV7AzGk5iorchQIcXWb4=; b=rG2gcPzAUbbz7iQ9gYqeLHr77F
	ADXgWRzsSx6p0/xkYntKjQ73imEqED0CTKWnUISjCxoXpElJrYbiGalJvghM1PduLCI/9MtctI9Qd
	y3fjtX2SvRsuOmBMoRf7NDsLocdP0VlxHNF78AcyT7bf7OBxj43Ko85lh2TpkHT9FJpPI5WTsiL2T
	rJB6nZJ24MK11PvX/yhJyzL7xCbPtM6Z3eRpB2uXRNC44574IhmF+U8Y8OuP1uE+UiTphVuk7w6Dc
	4tfzwxh/Y/tpQSD2qZSE2wk065QULUbtrk+1LakzXcaBgnAbgrafM5l4HSvfl4UWJpUbQNIBosC7F
	hEE0Z1yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmbj-00000002hn7-2fgi;
	Tue, 12 Nov 2024 08:50:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmXU-00000002h0s-1EZq
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 08:46:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmXR-0000Ey-N0; Tue, 12 Nov 2024 09:46:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmXR-000NgP-1h;
	Tue, 12 Nov 2024 09:46:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmXR-00CdGg-1W;
	Tue, 12 Nov 2024 09:46:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
Message-Id: <173140117746.3010855.9949814962539416022.b4-ty@pengutronix.de>
Date: Tue, 12 Nov 2024 09:46:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_004620_374413_DC9EDC56 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] ARM: K3: add AM625 ethernet support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 08 Nov 2024 14:14:58 +0100, Sascha Hauer wrote:
> This series adds ethernet support for TI K3 SoCs. The driver has been
> tested on the TI AM625 based Beagleplay board. The driver needs an
> external DMA engine and also some TI specific units, so this series is
> longer than it should be for just an ethernet driver.
> 
> 

Applied, thanks!

[1/7] net: davinci_mdio: separate driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=b32a92fd714a (link may not be stable)
[2/7] firmware: ti_sci: update from U-Boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=d355335adb75 (link may not be stable)
[3/7] ARM: K3: add navss-ringacc driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ae0d8b12b1c (link may not be stable)
[4/7] dma: add dma-devices support
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4b9411a0b97 (link may not be stable)
[5/7] dma-devices: add k3-udma support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cc7c7658297 (link may not be stable)
[6/7] ARM: k3: am625: add syscon compatible to phy_gmii_sel
      https://git.pengutronix.de/cgit/barebox/commit/?id=74dda1b25c23 (link may not be stable)
[7/7] net: add am65-cpsw-nuss driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=89ad0c51b24d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



