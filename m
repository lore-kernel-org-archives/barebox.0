Delivery-date: Wed, 13 Aug 2025 16:51:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCom-000CgM-1C
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoj-0006rq-FS
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mT0kaHs7pMJoEbNDee5SNrkBeuEubScqnj6trF1v2c0=; b=kYUieLll44Qz0Cy6Q5jlkqmjle
	t4c31ba5MaLHohY23ZH31scM1QO1pVHBqX2uUsHiG8YgMVkGMB8lzLVlhVt8f2b34mHXrHgdxfk45
	oMptu+XH8mznChFBRJH4sszrnXFZ4VQqAosHTOFKfwE/2dDmxyVVLHrklbAeKAU7mAWm2T8N7IddJ
	2JD986343bi1z5+aIn97fF3uFck+eaeLebDceSUi6gUa/1/jUkrPdKC6j3BEpcKnLmUfRtWcqCd4U
	9rKHxyxXB/ha7Ssu/6mOeZwbKm9Uz7n/I/bJK2wz2e6SWgEVTMWqEUOYmLjlFV2b2iXpxP1i60MTp
	+8NRvQgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCnz-0000000Dxtw-47pX;
	Wed, 13 Aug 2025 14:50:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYE-0000000DvKE-1all
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYD-0003xl-3J; Wed, 13 Aug 2025 16:34:01 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:39 +0200
Message-Id: <20250813143345.3758653-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_073402_417103_872F1B5A 
X-CRM114-Status: GOOD (  11.91  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/13] optee: add revision info to tee devinfo output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently only report an implementation ID when doing devinfo on the
tee device. Improve upon that by translating the ID to a string and
printing the OP-TEE revision if possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - use IS_ERR_OR_NULL to guard param getting
  - use new get_param_value helper
---
 drivers/tee/optee/smc_abi.c | 17 ++++++++++++-----
 drivers/tee/tee_core.c      | 20 +++++++++++++++++++-
 2 files changed, 31 insertions(+), 6 deletions(-)

diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index aab8ebb186ed..56af3b1b2b29 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -549,8 +549,10 @@ static bool optee_msg_api_uid_is_optee_api(optee_invoke_fn *invoke_fn)
 	return false;
 }
 
-static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
+static void optee_msg_get_os_revision(struct device *dev,
+				      optee_invoke_fn *invoke_fn)
 {
+	struct param_d *param;
 	union {
 		struct arm_smccc_res smccc;
 		struct optee_smc_call_get_os_revision_result result;
@@ -564,10 +566,15 @@ static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
 		  &res.smccc);
 
 	if (res.result.build_id)
-		pr_info("revision %lu.%lu (%08lx)\n", res.result.major,
-			res.result.minor, res.result.build_id);
+		param = dev_add_param_fixed(dev, "revision", "%lu.%lu (%08lx)",
+					    res.result.major, res.result.minor,
+					    res.result.build_id);
 	else
-		pr_info("revision %lu.%lu\n", res.result.major, res.result.minor);
+		param = dev_add_param_fixed(dev, "revision", "%lu.%lu",
+				    res.result.major, res.result.minor);
+
+	if (!IS_ERR_OR_NULL(param))
+		pr_info("revision %s\n", get_param_value(param));
 }
 
 static bool optee_msg_api_revision_is_compatible(optee_invoke_fn *invoke_fn)
@@ -662,7 +669,7 @@ static int optee_probe(struct device *dev)
 		return -EINVAL;
 	}
 
-	optee_msg_get_os_revision(invoke_fn);
+	optee_msg_get_os_revision(dev, invoke_fn);
 
 	if (!optee_msg_api_revision_is_compatible(invoke_fn)) {
 		pr_warn("api revision mismatch\n");
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 653b04ff06af..a4bb9af46933 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -487,9 +487,27 @@ static void tee_devinfo(struct device *dev)
 {
 	struct tee_device *teedev = dev->priv;
 	struct tee_ioctl_version_data vers;
+	const char *impl = NULL, *rev;
 
 	teedev->desc->ops->get_version(teedev, &vers);
-	printf("Implementation ID: %d\n", vers.impl_id);
+
+	switch (vers.impl_id) {
+	case TEE_IMPL_ID_OPTEE:
+		impl = "optee";
+		break;
+	case TEE_IMPL_ID_AMDTEE:
+		impl = "amdtee";
+		break;
+	}
+
+	printf("Implementation ID: %d%s%s%s\n", vers.impl_id,
+	       impl ? " ( " : "", impl, impl ? ")" : "");
+	if (!dev->parent)
+		return;
+
+	rev = dev_get_param(dev->parent, "revision");
+	if (rev)
+		printf("Revision: %s\n", rev);
 }
 
 /**
-- 
2.39.5



