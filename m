Delivery-date: Thu, 27 Mar 2025 11:02:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk3s-004pLZ-2v
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:02:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk3s-0003n4-D0
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:02:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JKj0EgBYr8jin6pSP/r9Pd0CKtE/EgKgNvE1EufdY+4=; b=pbc9fIrzZY4DjIYisnnsa1RxKF
	HgLjs+NK3f3eKux5EUFI3jXUxkUYItx0PTw0GiXPs3w+P6z+VBt9P6Yrcu8eOsOr4Exk/qM/4ZiRM
	SnSyVbuwt4pC11U38bcUpKQxKYsfWb14qEhJRJIbD+MprVJ1F9UWJ78IE/5RvuRG2wZP2YAqsane3
	BNk2qub5VlWQnucaqBqkcODNB7sUq55Uha0a5eu+xZtSRIYBlJth0kCf9p0m7RKQg2sooIiFQ+JQV
	XMFLvRX1wnaZuQcHRZ5u4S0sAnP/MEPLmtvzh2VtMD0vicJhAnoZAU0qAD5Wd0fVg6+5FaFPpjksd
	7a9+WG4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk3H-0000000AdzG-1gY2;
	Thu, 27 Mar 2025 10:01:31 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk3E-0000000Ady3-2xX5
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=JKj0EgBYr8jin6pSP/r9Pd0CKtE/EgKgNvE1EufdY+4=;
	b=HY1kbejBP5QRxHbm7EEdI0lgUgA1SIC1HifZteFUrTBSLWuyW7Eha6CkVDqWKe4/1Nj+sgzcpr7fU
	 Q6cEXIlglZWbSD/H5vZ+ZBXSF96zTctVE18k7rBxplCU8D/VQmbO7OSFBtexQnF/Qq9KZja031Aujr
	 /XgVR9nKOsZf2860zLAvNyjsjHn2kW9e7S7tQuqRnmvX9PyKhkWv6PpPbwEOzGeFSEV1Q5gLHBZboH
	 6z65kSccyhP1JLeLcXE553w3p5cmto9wlSNeTc7f7M74JhQvCJSmEi/Qh049uY8QkqRBYMW5orOw7K
	 NzcswKcMufNUOZvRUv+ZlmzkB0NEi7w==
X-MSG-ID: 71b5e6ea-0af2-11f0-8eaf-0050568164d1
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Thu, 27 Mar 2025 11:01:22 +0100
Message-ID: <20250327100122.654317-1-robin@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_030128_883067_9ABA8102 
X-CRM114-Status: UNSURE (   9.45  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: protonic-imx6: Re-introduce generic boot target board string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows using a single bootable usb drive for multiple boards.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 19e58627c6..e4debb1c66 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -374,7 +374,7 @@ static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	*second_word = 0;
 
-	if (strcmp(buf, priv->name)) {
+	if (strcmp(buf, priv->name) && strcmp(buf, "prti6qp")) {
 		dev_err(dev, "Boot target for a different board! (got: %s expected: %s)\n",
 			buf, priv->name);
 		ret = -EINVAL;
-- 
2.43.0



