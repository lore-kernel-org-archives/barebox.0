Delivery-date: Wed, 22 Apr 2026 10:29:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSxg-00F28Q-2w
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 10:29:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSxg-0008R1-Cj
	for lore@pengutronix.de; Wed, 22 Apr 2026 10:29:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qxHDADdP4e4r7ANmMsIasJ/1gJKKICxm1tRYUa+fUz0=; b=ANhRzysAsSuODlV+H27SUefd/g
	kqYDxg2DZzca2PG0wC0fRsAjA19YsnrluNVsQW33p+lYbqOxYqMtcPrSZezUn4rSrgmRckrlLPXNs
	Zp61Iu1Dxz3SfkTaDZ2+OLSWBeoYVn+/H+xdCBAp8Z7wlufbMZrHgv2k98oWlV6rto7QEoMPOtde8
	WYn/ch8ngPgggxyUa6pXykmrD/w44eWzfIqyuZtXG1uoynmpQaVHUTcBTZtKlxxiWEck5jNxCKh9r
	TzubzDeWlUn5jSG+h2gB05k0IWgNUhGDgmE8NopsWBB7a7ijh/KVlPD0ct+m/Aav3hdPoOTHEpm3V
	iZO7azpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSxF-00000009mGb-1JeM;
	Wed, 22 Apr 2026 08:29:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSxD-00000009mGG-2AGA
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 08:29:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSxC-0008LP-2V; Wed, 22 Apr 2026 10:29:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSxB-006dX4-2s;
	Wed, 22 Apr 2026 10:29:01 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSxB-0000000ANUv-3TEp;
	Wed, 22 Apr 2026 10:29:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pfitzner <f.pfitzner@pengutronix.de>
In-Reply-To: <20260420-fpf-imx8mp-frdm-v2-0-5107d1976d4e@pengutronix.de>
References: <20260420-fpf-imx8mp-frdm-v2-0-5107d1976d4e@pengutronix.de>
Message-Id: <177684654182.2473460.6684047246515110215.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 10:29:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_012903_579942_C39C48C7 
X-CRM114-Status: UNSURE (   7.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] add imx8mp-frdm board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Apr 2026 14:44:49 +0200, Fabian Pfitzner wrote:
> The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
> SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
> 32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
> display interfaces, camera connectors, and standard expansion headers.
> 
> This patch stack integrates the board into Barebox.
> The DT changes were taken from the upstream Linux kernel,
> which are not yet contained in any release [1].
> 
> [...]

Applied, thanks!

[1/2] DONT MERGE: dts: backport NXP i.MX8MP FRDM board dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c53451bb0b5 (link may not be stable)
[2/2] ARM: i.MX8MP: add imx8mp-frdm board
      https://git.pengutronix.de/cgit/barebox/commit/?id=e67df4ee75fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



