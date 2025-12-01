Delivery-date: Mon, 01 Dec 2025 11:45:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1P7-006n5J-1J
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:45:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1P6-0000F1-SK
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:45:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pg62NYqhaiYDYD/sO0IyGPf3LNmoPbUhKkRRK0ZPb9o=; b=BeLGgndfjXmpGOJF/cMty8eBfK
	YUNGdlN2KsoC7Bt7eVpJUZ49C2lc7KmC1aYFxvMtCLS5jXw5lU/J4B+hRkYk3m1o0iqSpC5tiZUDD
	ZWKm+qcUm5Hx5IgUmuH4Nv3F95E18Sox9g9pDsBvOzPzKnBBMih+2Eppx/2rp7VJTu59/dPBz6KQ8
	nIOEFuvWnmyUOWJRkkwl5i99kYr2Iww+NnEYMbu7fJOKtdh69A2WG0yMRy5AFMUzAnLvnUk1Rf5XQ
	lzLYbP6KiYxUd4VRrZ7x8yJIUPE8ddcrH+qFrDRyDL0405mjESMuKR9VWDZlKvo1mN5jx61oJ7s2O
	Ri9dv3wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1Og-00000003MA6-0uZo;
	Mon, 01 Dec 2025 10:44:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1Od-00000003M9d-2baa
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:44:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1Ob-0000BO-RO; Mon, 01 Dec 2025 11:44:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1Ob-003QfO-1p;
	Mon, 01 Dec 2025 11:44:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ1Ob-00000000hMe-27x0;
	Mon, 01 Dec 2025 11:44:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251201085927.1306364-1-a.fatoum@barebox.org>
References: <20251201085927.1306364-1-a.fatoum@barebox.org>
Message-Id: <176458588150.166641.8069550162864030389.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 11:44:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_024443_669737_32535AC6 
X-CRM114-Status: UNSURE (   8.44  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] video: dw_mipi_dsi: drop unused and misleading
 dw_mipi_dsi_crtc_node()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 09:59:21 +0100, Ahmad Fatoum wrote:
> The CRTC node would be the remote node on the other side of the graph
> link and not the host's device.
> 
> Given that this function is unused anyway, let's drop it.
> 
> 

Applied, thanks!

[1/3] video: dw_mipi_dsi: drop unused and misleading dw_mipi_dsi_crtc_node()
      https://git.pengutronix.de/cgit/barebox/commit/?id=833b676eb58c (link may not be stable)
[2/3] video: Rockchip: add MIPI-DSI support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f383880b28b (link may not be stable)
[3/3] video: dw_mipi_dsi: activate pattern generator during enable as a hack
      https://git.pengutronix.de/cgit/barebox/commit/?id=0efbeeb24079 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



