Delivery-date: Wed, 29 Oct 2025 08:02:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE0CJ-00Cxbs-0H
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 08:02:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE0CI-00048z-FI
	for lore@pengutronix.de; Wed, 29 Oct 2025 08:02:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uzBQzy/AHht30yg794NG2FSEDdA2yW4F/sz8WlN4YUk=; b=Z+tXgRINrWthWf9LKKQiU7UVdJ
	4EN64GmE3EsgtX/4fBlibm1ziVUlpoIAMOVVEsLx3KhDFQpUowvl2vPyDg9RmJjSVr/+nm38EN+sN
	iC9eZWmORrJKuCKMmDBUbgSJ3yc5rdQqYZb0eqv8uMalD23KupgujvEsIDs5wgRhfKSvJS0ZtS7I0
	FxN50Lj5DrhOjQv9pBGVhKBr5l9t3p0fECg2d0BEralihjTnj//qBrWb2/MLSEZkE6oQs5Xb0Tn/c
	6XdZdbV5uvQFril4uVKIrzSjndWqnHuQCQN132kQ3TBniwmjTzgWm+1pzAMyx2TsuU8U86Q4Pk7EH
	wQpRpNYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE0Bl-0000000Haf7-3qnb;
	Wed, 29 Oct 2025 07:01:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE0Bk-0000000Haeb-04K1
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 07:01:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vE0Bi-0003ur-33; Wed, 29 Oct 2025 08:01:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vE0Bh-00601M-2w;
	Wed, 29 Oct 2025 08:01:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vE0Bh-0000000AVFA-3Pcz;
	Wed, 29 Oct 2025 08:01:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 29 Oct 2025 08:01:38 +0100
Message-ID: <20251029070141.2503368-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_000144_053336_7049423A 
X-CRM114-Status: GOOD (  16.04  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: caam - skip RNG selftest when i.MX6 is in normal world
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On an i.MX6 running under OP-TEE, the CAAM selftest fails as it needs to
run in the secure world[1].

We can detect that barebox is running in the normal world on an i.MX6,
so use that info to gracefully skip the test.

This is not enough to get the CAAM working (The DECO registers may not
be accessible to barebox), but that is arguably a more useful error
message than an -EBUSY.

[1]: Scroll down to "Job Ring TZ assignment issue"
https://community.nxp.com/t5/i-MX-Security/RNG-self-test-errors-on-select-i-MX-device-revisions/ta-p/1102970

Reported-by: Fabian Pflug <f.pflug@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c            |  2 +-
 drivers/crypto/caam/rng_self_test.c | 13 ++++++++++++-
 include/mach/imx/imx6.h             |  2 ++
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 0cf2c17d6b90..29a56de56293 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -254,7 +254,7 @@ int imx6_devices_init(void)
 	return 0;
 }
 
-static bool imx6_cannot_write_l2x0(void)
+bool imx6_cannot_write_l2x0(void)
 {
 	void __iomem *l2x0_base = IOMEM(0x00a02000);
 	u32 val;
diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index 5216ecef4451..a42d9cad1639 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -47,6 +47,8 @@
 #include <dma.h>
 #include <common.h>
 #include <linux/kernel.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx6.h>
 
 #include "error.h"
 #include "regs.h"
@@ -143,7 +145,7 @@ static void rng_self_test_done(struct device *dev, u32 *desc, u32 err,
  * * i.MX6DLS silicon revision 1.4
  * * i.MX6SX silicon revision 1.4
  * * i.MX6UL silicon revision 1.2
- * * i.MX67SD silicon revision 1.3
+ * * i.MX7SD silicon revision 1.3
  *
  */
 int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
@@ -176,6 +178,15 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
 		return -EINVAL;
 	}
 
+	if (cpu_is_mx6() && imx6_cannot_write_l2x0()) {
+		/* If we enter this if clause, we are likely running
+		 * under OP-TEE, so there is no point in continuing
+		 * and getting -EBUSY waiting for job completion
+		 */
+		pr_info("skipping test in normal world\n");
+		return 0;
+	}
+
 	result = dma_alloc(sizeof(*result) * result_size);
 	desc = dma_alloc(sizeof(*desc) * desc_size);
 
diff --git a/include/mach/imx/imx6.h b/include/mach/imx/imx6.h
index 109df9b811c5..7b3cedd80f66 100644
--- a/include/mach/imx/imx6.h
+++ b/include/mach/imx/imx6.h
@@ -135,4 +135,6 @@ int imx6_cpu_revision(void);
 
 u64 imx6_uid(void);
 
+bool imx6_cannot_write_l2x0(void);
+
 #endif /* __MACH_IMX6_H */
-- 
2.47.3



