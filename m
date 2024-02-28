Delivery-date: Wed, 28 Feb 2024 19:04:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfOHm-00Dnrt-1v
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 19:04:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfOHm-0005yL-24
	for lore@pengutronix.de; Wed, 28 Feb 2024 19:04:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lJdC/vcrGryZb4DvScWyaszmg7cvrNHq1wj45INIi5g=; b=zN8xWznKZnc+FfQEqXcBhbhvmw
	J/D98dVc5rrBhMrg+F18FYhmqQeRaJEQI8cKJ+VufqzfoOLBZMjSIOAnMYuVVJPVl2aB29aigO88J
	xKrdunL10rAJESjWjobye3BXEvdy+1B+lxNYRu3kcwU+XRVUK2c+ngWqM0WxNnC/HiyU162zTIpjo
	mraR5JLuMwDZYtBfqsv4LSSozKlFjK81PPsubORHvZMtssoEQ59DNnAE2hB7eVM8p0mlXLepQ3F+m
	DbM0im0Qv0fiyU1t0nlK0rqDx9vjwBxeFFccfc/XI0PSdGFKMjwGw9toNq9fLO/VRzgDiBCADzUvZ
	K5O0YO7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfOHC-0000000APQ4-1pHD;
	Wed, 28 Feb 2024 18:03:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfOH9-0000000APPT-3AjK
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 18:03:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfOH8-0005og-Cy; Wed, 28 Feb 2024 19:03:26 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfOH8-003RZT-0M; Wed, 28 Feb 2024 19:03:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfOH7-00BUeN-1J;
	Wed, 28 Feb 2024 19:03:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 19:03:20 +0100
Message-Id: <20240228180319.2739412-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_100327_812311_B9ACB9A4 
X-CRM114-Status: GOOD (  11.17  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] optee: don't warn about missing OP-TEE header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OP-TEE header is checked once in PBL, saved into scratch area after
verification and then checked again in barebox proper.

The check in PBL fails silently, but the check in barebox proper that
should always follow, because the header isn't written to the scratch
area is printed with error log level.

Printing an error in either case is wrong though as using a raw OP-TEE
binary without header is a valid use case and the OP-TEE header may
also be missing when barebox is chainloaded from a running barebox.

Therefore reduce the message to debug log level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/optee.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/optee.c b/common/optee.c
index 34667f1f51e0..a8a43554e757 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -14,8 +14,8 @@ int optee_verify_header(const struct optee_header *hdr)
 		return -EINVAL;
 
 	if (hdr->magic != OPTEE_MAGIC) {
-		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
-			   hdr->magic, OPTEE_MAGIC);
+		pr_debug("Invalid header magic 0x%08x, expected 0x%08x\n",
+			 hdr->magic, OPTEE_MAGIC);
 		return -EINVAL;
 	}
 
-- 
2.39.2



