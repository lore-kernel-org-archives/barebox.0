Delivery-date: Tue, 25 Mar 2025 17:04:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6lo-0044hy-2p
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 17:04:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx6ln-0007Co-Or
	for lore@pengutronix.de; Tue, 25 Mar 2025 17:04:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RVeFRMT5Zjun9tXfG2aiVHKGeljWx5dpz6sL6WcaXPs=; b=Zj7F1zusJ4ydo4keJMA4b3Z1+g
	nEhT9h4MoHTknQeiOk9QCi7YhzVlj1EBeDAXZcbEsf+5rOKkeC48okPvKzMeMQ+ZX5aceYVaMS7EO
	yDpGGb1j6Yo3Um0Y7cML2VGpOQek98rowA3BZcTBCZH4maA/Qkh119NFpxuhBgBzSnlEyjF3GLgP/
	/yh6UxrgNVvtBmczeUwGQDttU3SModJ3bsUw/1rp3pCR1k0UAJEqiWLqkjy/6zZX+JgaxTMivWGHo
	ISSYwzDhJRh0G3hw5kn/DpGjpkwWLsQ87TRZ02/X2M/YKHFo9EW8QgyVMb/K7Ff5dyOlu/TWVK9Mi
	qbFnMFTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6lJ-00000006QGM-3512;
	Tue, 25 Mar 2025 16:04:21 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx6d8-00000006Oo8-1GKW
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 15:55:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1742918150;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RVeFRMT5Zjun9tXfG2aiVHKGeljWx5dpz6sL6WcaXPs=;
	b=WK0Zh/iVz1HthkcR1DdooxGdWwdSgn1vcrmdLeTAyfIOpkFco9TLvX7eUv88swjcw2Ns+A
	9CDVnE2m7o+pNanV4YIMYz0e0sX5lcMxIpcZ/crplrK9HHIGH1Mt4eAq3ZodASrBE6eTzm
	628gSu2r/ZyN74PqD527pzvT0Pf1Zcnf/MSw/eGUGOPoP2gmf01mxT3wOpxvKFBvfnJyZg
	7jCA1a4X/twccloXmux8CEpf1CMYJt9WEJHaOQAwsDFCErbh5dNTV2pdXsL9b4Rsu7dnDG
	3XWwA+B569K9aJE7aMUpdOoBglwk+eeMr6DYpYOVtIZoH4Wk2QTARhe2xvheqw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cc87:df5e:1bf7:9f4c])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 7161c0c8 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 25 Mar 2025 16:55:50 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 16:55:39 +0100
Message-ID: <20250325155539.32501-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_085554_595702_255BCFC7 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: spi-nor: add explicit fallthrough
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the fallthrough pseudo keyword: the case sets `need_wren = true;`
which is used (only read and never written) in the case below.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b9b2c7f6e5..6fcb8f38fa 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -316,6 +316,7 @@ static inline int set_4byte(struct spi_nor *nor, struct flash_info *info,
 	case CFI_MFR_ST: /* Micron, actually */
 		/* Some Micron need WREN command; all will accept it */
 		need_wren = true;
+		fallthrough;
 	case CFI_MFR_MACRONIX:
 	case 0xEF /* winbond */:
 		if (need_wren)
-- 
2.48.1



