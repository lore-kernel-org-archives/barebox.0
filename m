Delivery-date: Wed, 16 Apr 2025 12:38:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509s-001QMo-1i
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u509r-0004Qf-O6
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LXjecSVyhcm8Dw51Ya409xdR4xQFpLhxol3y1smeFIc=; b=ZGZnVHJ4MMPzlNvgaI5wTfFOeQ
	RqOgmN7pmwyo4r7hmqPyJMRjKSOcBYBRnQ2VCD0tjo3mE2YvC+9068b8nDCSuVhdPcUVyyF69GYWm
	wnofRIV7stSMd3Qd10eMDHa+RxTBN+HFvHQHUSlb2Tp4y3fNaZbsW2zQznTPROK0tWjsdtN6zzIcy
	YzwAofEPAyL3+qQYxlNJoMO+noqoxwnLVkzqClK4B7k2aJQRbFrlflwwoA/w+3Gh5/UePvY24/XZa
	ZZItNJC0g5JaOFZQ2568DXhvvqJhTIZisyVZeQ+Yp2xJOmYWK7DIeICqPzpewhMZbz2t5LJS9Bs6P
	xrwoW3wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509T-00000009EUO-3XaM;
	Wed, 16 Apr 2025 10:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u509P-00000009ES3-0Bqa
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:37:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509N-00046r-0S; Wed, 16 Apr 2025 12:37:49 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-000ZV4-2W;
	Wed, 16 Apr 2025 12:37:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u509M-00174h-2D;
	Wed, 16 Apr 2025 12:37:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Apr 2025 12:37:44 +0200
Message-Id: <20250416103748.265415-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_033751_105964_B8880B04 
X-CRM114-Status: GOOD (  11.57  )
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
Subject: [PATCH 1/5] bootm: fix error reporting around optee_verify_header_request_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

optee_verify_header_request_region doesn't set errno, so printing it out
and setting ret to -errno is wrong.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 625091ece1e9..34ce401e8fd9 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -152,21 +152,23 @@ static int get_kernel_addresses(size_t image_size,
 
 static int optee_verify_header_request_region(struct image_data *data, struct optee_header *hdr)
 {
-	int ret = 0;
+	int ret;
 
 	ret = optee_verify_header(hdr);
-	if (ret < 0)
+	if (ret < 0) {
+		pr_err("Could not verify header: %pe", ERR_PTR(ret));
 		return ret;
+	}
 
 	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size);
 	if (!data->tee_res) {
-		pr_err("Cannot request SDRAM region 0x%08x-0x%08x: %s\n",
+		pr_err("Cannot request SDRAM region 0x%08x-0x%08x: %pe\n",
 		       hdr->init_load_addr_lo, hdr->init_load_addr_lo + hdr->init_size - 1,
-		       strerror(-EINVAL));
+		       ERR_PTR(-EINVAL));
 		return -EINVAL;
 	}
 
-	return ret;
+	return 0;
 }
 
 static int bootm_load_tee_from_fit(struct image_data *data)
@@ -186,11 +188,9 @@ static int bootm_load_tee_from_fit(struct image_data *data)
 			return ret;
 		}
 		memcpy(&hdr, tee, sizeof(hdr));
-		if (optee_verify_header_request_region(data, &hdr) < 0) {
-			pr_err("%s", strerror(errno));
-			ret = -errno;
+		ret = optee_verify_header_request_region(data, &hdr);
+		if (ret < 0)
 			goto out;
-		}
 		memcpy((void *)data->tee_res->start, tee + sizeof(hdr), hdr.init_size);
 		printf("Read optee image to %pa, size 0x%08x\n", (void *)data->tee_res->start, hdr.init_size);
 	}
@@ -214,11 +214,9 @@ static int bootm_load_tee_from_file(struct image_data *data)
 		goto out;
 	}
 
-	if (optee_verify_header_request_region(data, &hdr) < 0) {
-		pr_err("%s", strerror(errno));
-		ret = -errno;
+	ret = optee_verify_header_request_region(data, &hdr);
+	if (ret < 0)
 		goto out;
-	}
 
 	if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
 		pr_err("%s", strerror(errno));
-- 
2.39.5



