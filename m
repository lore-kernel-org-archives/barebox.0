Delivery-date: Thu, 01 Feb 2024 12:29:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVVGH-00FYFC-1B
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 12:29:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVVGI-0005dN-1l
	for lore@pengutronix.de; Thu, 01 Feb 2024 12:29:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=duahFI6lYVp5zx65rucYJ3qLVeUk5/TckCN8/ffptTM=; b=T9RYwiTwuwcukuZddgXAS5xUKl
	rvCNMoGIJRnfTrN5rCm9aHn4dtZlfKzZ20O158yZfuXkXFtdEcFSKQSLRSJmTEyeSJENJtR3+t2wg
	3Ij0l8go1Bqc1t5AqFLNawt4+G6zvMKwgKvcFUUJXOr2lMh53+iNVTLduE+p+Y3bU200OXZw4gWyR
	V9OqpchTY7CfaROV9q/jIf/2BFxQ0uXqBK0fJI7HAksIsodza3V755CxyvGcSad+5oNAjFQ2uXXLj
	paOkcwR5CqZKVk8bQw2d0uzNdJB961Xnf8oOLLh638tCIxhHVVd6IGrCmC4MlAzr7wO0k5voagsV/
	9WgTeKug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVFj-00000007aM9-1Ptl;
	Thu, 01 Feb 2024 11:29:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVFg-00000007aLD-26JA
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 11:29:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVVFd-0005Wa-G2; Thu, 01 Feb 2024 12:29:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVVFd-003qKr-2o; Thu, 01 Feb 2024 12:29:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVVFc-000aHm-3C;
	Thu, 01 Feb 2024 12:29:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 01 Feb 2024 12:28:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240201-fix-fdt-memory-safety-v2-1-267b7b8813fd@pengutronix.de>
References: <20240201-fix-fdt-memory-safety-v2-0-267b7b8813fd@pengutronix.de>
In-Reply-To: <20240201-fix-fdt-memory-safety-v2-0-267b7b8813fd@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_032904_577445_278149E7 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] of: fdt: fix memory leak in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the reallocation failed the old memory remains allocated and is never
freed, this is fixed by freeing the old memory on error.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 5c21bab5de..544294a9ac 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -375,24 +375,38 @@ static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
 
 static int fdt_ensure_space(struct fdt *fdt, int dtsize)
 {
+	size_t new_size;
+	void *previous;
+
 	/*
 	 * We assume strings and names have a maximum length of 1024
 	 * whereas properties can be longer. We allocate new memory
 	 * if we have less than 1024 bytes (+ the property size left.
 	 */
 	if (fdt->str_size - fdt->str_nextofs < 1024) {
-		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);
-		if (!fdt->strings)
+		previous = fdt->strings;
+		new_size = fdt->str_size * 2;
+
+		fdt->strings = realloc(previous, new_size);
+		if (!fdt->strings) {
+			free(previous);
 			return -ENOMEM;
-		fdt->str_size *= 2;
+		}
+
+		fdt->str_size = new_size;
 	}
 
 	if (fdt->dt_size - fdt->dt_nextofs < 1024 + dtsize) {
-		fdt->dt = memalign_realloc(fdt->dt, fdt->dt_size,
-				fdt->dt_size * 2);
-		if (!fdt->dt)
+		previous = fdt->dt;
+		new_size = fdt->dt_size * 2;
+
+		fdt->dt = memalign_realloc(previous, fdt->dt_size, new_size);
+		if (!fdt->dt) {
+			free(previous);
 			return -ENOMEM;
-		fdt->dt_size *= 2;
+		}
+
+		fdt->dt_size = new_size;
 	}
 
 	return 0;

-- 
2.39.2



