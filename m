Delivery-date: Wed, 10 Jan 2024 15:18:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZPf-00BiBm-0z
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 15:18:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNZPe-0007tr-P5
	for lore@pengutronix.de; Wed, 10 Jan 2024 15:18:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3K4hvRfG0gMB1RZLLw41eKC3AFFQDLewom1VM7coy9Q=; b=xLK7CgIKmaS6yiqNH+xrLRwxCv
	8ck1gjZXtcfek9Xco9zvi4heHPydL9+5Vhf8dq/dj/NbOZ+TTM3qZPtd22T7fjSBULHoT4M1icACn
	KEYF02o9qF/TkkKb8XNfVrimbz0oga/v88/XCD9aqdgzdmmNaiwFY+fUaiL52FG4S8YVtpiKrYBlh
	03+lAzj00FBfQW++UjhyyOeMH7VqLu86+AY4x/Ym4epp28s5c41EWmXyLpzY8F4sWSwT9oCbl+6GF
	uw+zmVUirE8asPTZBAD0eeuRBMmkMfAzgmCqhNOdZGrUTzFkS0sZJ0ctDPkZZgzGt/rfWcv90xAIQ
	nB1Kriag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZOT-00CGGI-0k;
	Wed, 10 Jan 2024 14:17:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNZOQ-00CGDZ-0q
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 14:17:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-0007SX-SV; Wed, 10 Jan 2024 15:17:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-001ipT-G4; Wed, 10 Jan 2024 15:17:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNZOM-00DAdA-1Q;
	Wed, 10 Jan 2024 15:17:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jan 2024 15:17:10 +0100
Message-Id: <20240110-scripts-omap3-usb-loader-fix-compilation-v1-0-0503f170fa59@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOemnmUC/x2NQQqDQAwAvyI5G9hdKy39SvGQrrENqLskthTEv
 xt6HBhmdjBWYYN7s4PyV0zK6hDbBvKb1hejjM6QQrqEGANaVqmbYVmodvixJ86FRlac5Ie5LFV
 m2jyC157oFqlPUyDwXFV25b96DMdxAouwh1R6AAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704896234; l=533;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0sMFCGTPE8o0lNRFr0X4UEysR7B6PPXYmxNgeqXuKd8=;
 b=XjJv9XCU3S2vlqfKp7Pkvd6rB7Lc07S4w1TPrWHgNFPVuwkSngoV4DaDwXKQXc9vln+kFR4JG
 7ZhUVf6aDqzDAvar7zXVKavEQ7cekdSG4yb6hbsWP5z1ImJmLREP49H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_061718_304730_2A721F62 
X-CRM114-Status: UNSURE (   7.52  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] omap3-usb-loader fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This contains a few fixes for the omap3-usb-loader tool

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      omap3-usb-loader: Fix compilation
      omap3-usb-loader: Fix for big endian hosts

 scripts/omap3-usb-loader.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)
---
base-commit: d1f8df4a012ec52f1b4bca785cfd2a67d690c09e
change-id: 20240110-scripts-omap3-usb-loader-fix-compilation-75aa81a52f0a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



