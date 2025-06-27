Delivery-date: Fri, 27 Jun 2025 17:09:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiF-00Beq4-0r
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:09:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiE-0004o0-5w
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:09:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y0K0i4aTsrZmq6e+QO14aJe2UHbEmISYd0ZL25AvHMY=; b=BB25RiDMJhEi0UoH71qheNIFlX
	XPMTkn+GAR/bJCK3FFf3JBnIkr7bZjCvDpWZeasqU0cMz7zw/WN4h0/B45wpNcGMMEPWuAhBux+Nd
	SzFC12zkKn5wJ6jSXMynUNWqOKL5ox+bFC8aXkXHdOWCr0NNIPwzuyDOGODtw0cQJBeJfRrbwMsK+
	MarUrqaG4wp7j1yQdLfO4V9YOuVwaHKw1GHomugDhCN1U8WLEQyZNMX3DHcWxhpUl2bzj6svmscWg
	gOJ7Ue+3miUKlb2+4YMnnPjP8eWM3X3cjeB55eAJzjlECDtD+DTXMvacY89J4DJHfWb5QO8wiff8t
	dLKtM2Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhj-0000000F0zA-2cgk;
	Fri, 27 Jun 2025 15:09:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAAt-0000000Evk1-3uXQ
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:35:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-0008ND-OD; Fri, 27 Jun 2025 16:35:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-005dIh-1p;
	Fri, 27 Jun 2025 16:35:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2W;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-13-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=3129;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0yjUKFn65lt5BHiVpbRgJHDkj3yNd01P5mpmNbANYG8=;
 b=SmJEOnALfVrRz7rsdJf6rgpjnsueNVG25xV70ijiU9vFxDLC7bq37zRlXSzNTIwzz3sPrWUeZ
 6/8Yfw2DRJYAz0GWjTXG1XXnZbnQIwysTVZov3sYF6xQW1FqrzWnuzi
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_073533_168666_A48690B7 
X-CRM114-Status: GOOD (  12.95  )
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
Subject: [PATCH 13/14] ARM: optee-early: drop start_optee_early()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that all users of start_optee_early() use the SoC variants
make start_optee_early() a static function. While at it move the zeroing
of the data_location which was duplicated in the SoC specific functions
to start_optee_early().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/optee-early.c | 34 +++++++++++++++-------------------
 include/tee/optee.h          |  1 -
 2 files changed, 15 insertions(+), 20 deletions(-)

diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index 6f842bdd2010582c61a8e88c9f644e6ae93bcbf4..7ef3f3e9c6f3b934aba9d4d3db2df3fd7a0aa642 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -15,12 +15,24 @@
 
 static jmp_buf tee_buf;
 
-int start_optee_early(void *fdt, void *tee)
+static int start_optee_early(void *fdt, void *tee, void *data_location,
+			     unsigned int data_location_size)
 {
 	void (*tee_start)(void *r0, void *r1, void *r2);
 	struct optee_header *hdr;
 	int ret;
 
+	/* We expect this function to be called with data caches disabled */
+	BUG_ON(get_cr() & CR_C);
+
+	/*
+	 * Set the OP-TEE <-> barebox exchange data location to zero.
+	 * This is optional since recent OP-TEE versions perform the
+	 * memset too.
+	 */
+	if (data_location)
+		memset(data_location, 0, data_location_size);
+
 	hdr = tee;
 	ret = optee_verify_header(hdr);
 	if (ret < 0)
@@ -49,15 +61,7 @@ int imx6q_start_optee_early(void *fdt, void *tee, void *data_location,
 	/* Add early non-secure TZASC region1 to pass DTO */
 	imx6q_tzc380_early_ns_region1();
 
-	/*
-	 * Set the OP-TEE <-> barebox exchange data location to zero.
-	 * This is optional since recent OP-TEE versions perform the
-	 * memset too.
-	 */
-	if (data_location)
-		memset(data_location, 0, data_location_size);
-
-	return start_optee_early(fdt, tee);
+	return start_optee_early(fdt, tee, data_location, data_location_size);
 }
 
 int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
@@ -69,13 +73,5 @@ int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
 	/* Add early non-secure TZASC region1 to pass DTO */
 	imx6ul_tzc380_early_ns_region1();
 
-	/*
-	 * Set the OP-TEE <-> barebox exchange data location to zero.
-	 * This is optional since recent OP-TEE versions perform the
-	 * memset too.
-	 */
-	if (data_location)
-		memset(data_location, 0, data_location_size);
-
-	return start_optee_early(fdt, tee);
+	return start_optee_early(fdt, tee, data_location, data_location_size);
 }
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 943dbb8fdab6a11e25fb27e3487fe6fdec59a182..77f7924aa4793c001aa6fb15440729e6c77bd483 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -53,7 +53,6 @@ static inline int optee_get_membase(u64 *membase)
 
 #ifdef __PBL__
 
-int start_optee_early(void* fdt, void* tee);
 int imx6q_start_optee_early(void *fdt, void *tee, void *data_location,
 			    unsigned int data_location_size);
 int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,

-- 
2.39.5



