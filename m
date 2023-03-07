Delivery-date: Tue, 07 Mar 2023 11:16:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUMe-00CCgy-BD
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 11:16:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUMd-0007xk-To
	for lore@pengutronix.de; Tue, 07 Mar 2023 11:16:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wxh7+V4rHvHoWHNEpB4mYKB43TEAsIIjwERpxmPWu0E=; b=Mc+edhkacKPF0f3cEMB7v3JRD3
	LbLOWagxROIEVocT5ALRprQpEpte7n6SU7zUMsXnBh788Q0mP517li8DiRb26lfUSLlOhDtTg3dM3
	86gr34DZQLoCT74OHneA0cW/jguXWISgSZ9vqtHc0K/1iXJdAkhJv5xR6pIhKgSoi0mjVEZnoFiB4
	XixaxndLroWfBvgBUiQERv4CvjO87K06WdVNiwZbn3MMTo6IvFFn7CJMVQPeBqYAaZbguGU9gYE+n
	bTlxupVk99a5GWdzmw9btEEMY6pdm1IvZKgNPPcyvEdSjMWMGRTJ3ItGJ+YF+nok92Ys2n8hmAgKU
	dApJmmKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZULT-00HBbP-K0; Tue, 07 Mar 2023 10:14:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZULL-00HBYh-GH
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 10:14:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULJ-0007Mr-RH; Tue, 07 Mar 2023 11:14:49 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULJ-002SWd-5l; Tue, 07 Mar 2023 11:14:49 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZULH-008iWi-RX; Tue, 07 Mar 2023 11:14:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 11:14:44 +0100
Message-Id: <20230307101446.2077676-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
References: <20230307101446.2077676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_021451_606549_73BB5BB8 
X-CRM114-Status: GOOD (  11.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/5] crypto: caam - pbl-init: fix null pointer check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

struct jr_data_st::desc is an array, so g_jrdata->desc will never be
NULL. Fix the check to instead compare g_jrdata against NULL.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/pbl-init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/pbl-init.c b/drivers/crypto/caam/pbl-init.c
index 3bc6cfaaeea1..08fad4525a21 100644
--- a/drivers/crypto/caam/pbl-init.c
+++ b/drivers/crypto/caam/pbl-init.c
@@ -331,7 +331,7 @@ static int do_instantiation(struct caam_job_ring __iomem *jr,
 	u32 ent_delay;
 	u32 status;
 
-	if (!g_jrdata->desc) {
+	if (!g_jrdata) {
 		pr_err("descriptor allocation failed\n");
 		return -ENODEV;
 	}
-- 
2.30.2



