Delivery-date: Wed, 16 Oct 2024 10:55:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zoA-004zsL-04
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 10:55:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zo9-0003xo-FW
	for lore@pengutronix.de; Wed, 16 Oct 2024 10:55:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Co0syksocABzkLzrhkWLAJGbIIUJYYW0ScNOLxrC6iE=; b=TE2wkiotxjgXSeGx7Lg3HgEDFt
	NfrYljQwQmdtfZ6BZ0sDmyYGuwf7ZtQ/ItG/jNcNw95FvVY49mB2qcIu7PqFLyP1dU2TgBs0TAFVw
	cZZ5B/9Gyi6YE7ed3n9EpYDKSNiKpOQXEY37Y530U0Mz7Bxf3TbLzG6WgTFyAjUSCPFrL0UnQHwBG
	SX8ge+6TP+bNwoKUBlamQhiXt4Z1vAFd0ssI6vDRHV0ayE4ekYCpvXAPXNtuc0/VqperqLSslxawM
	NdmzJroVJ6j7t+5jSJJRXiAeNZfLNyXLtM+C09t2SjRRs5NhgVveDp9lrTpNdSfn5YotpwtCM5Fdx
	aPX1VBRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0znX-0000000B7V6-2YmR;
	Wed, 16 Oct 2024 08:54:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zlY-0000000B6zr-2kIh
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 08:52:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zlU-0003Vi-IX; Wed, 16 Oct 2024 10:52:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zlU-002EGp-5n; Wed, 16 Oct 2024 10:52:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zlU-00GcTE-0H;
	Wed, 16 Oct 2024 10:52:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 10:52:18 +0200
Message-Id: <20241016085218.3961116-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_015224_750331_F60C99E0 
X-CRM114-Status: GOOD (  10.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] optee: fix use of IS_ENABLED() on option without CONFIG_ prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

IS_ENABLED() is meant to be used on options with their CONFIG_ prefix,
fix that and while at it use the recently added more descriptive
CONFIG_ARM32, CONFIG_ARM64 config symbols.

Fixes: 5f2f1f5fc1a9 ("optee: add support to verify 64-bit headers as well")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/optee.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/optee.c b/common/optee.c
index 31442b1a498d..422bc1c90924 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -25,13 +25,13 @@ int optee_verify_header(const struct optee_header *hdr)
 		return -EINVAL;
 	}
 
-	if (IS_ENABLED(CPU_V7) &&
+	if (IS_ENABLED(CONFIG_ARM32) &&
 	    (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi)) {
 		pr_err("Wrong OP-TEE Arch for ARM v7 CPU\n");
 		return -EINVAL;
 	}
 
-	if (IS_ENABLED(CPU_V8) && hdr->arch != OPTEE_ARCH_ARM64) {
+	if (IS_ENABLED(CONFIG_ARM64) && hdr->arch != OPTEE_ARCH_ARM64) {
 		pr_err("Wrong OP-TEE Arch for ARM v8 CPU\n");
 		return -EINVAL;
 	}
-- 
2.39.5



