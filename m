Delivery-date: Wed, 07 Jun 2023 14:08:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryG-00EJWA-Ps
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryD-000421-0n
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dd5T4kUECp63OJH/HEaaP4oQcEjE+FTgA0NaOJClU80=; b=SyEzSNJSGPUz8VSum6MzGsXX/V
	QhpyK9ZBqgtAJmsOd2n09zb+xc3DvpYS59n3pMsVK1cbKbICLv1HNwT2QPQQAyhaAtrimXvlS8WgU
	J23DpnUBm4sC/IgwovuE8PCGMsGGBLjazpH19if9fOxQ5BrSYXrAadUW+OBIgi2lRXbblUfWE0m06
	zvECQldobaRL3sbrmg7ZcPxlKc0QuVNq2sTQAmztCnDcz2x64FvK+pVK3lRf4/zf1Vz+91MqEZlnn
	/rtK/E60Ccwa3P3DuRagaec43rv3BrfukOwOvCNl+kDN2V2X1+E/2z5UNjJynM2fa3ZqItoqXJjrV
	VCfLvRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rws-005kss-15;
	Wed, 07 Jun 2023 12:07:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwk-005knT-2E
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-00031Q-T4; Wed, 07 Jun 2023 14:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-005jk1-2j; Wed, 07 Jun 2023 14:07:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyMg-00; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:01 +0200
Message-Id: <20230607120714.3083182-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050726_761273_C7EF23B6 
X-CRM114-Status: GOOD (  14.02  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/19] of: of_path: always call of_partition_ensure_probed before resolving
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_find_path may be called on a partition, whose parent device is not
yet probed. state code solves that by calling of_partition_ensure_probed
before of_find_path_by_node, but really we should be doing that for all
calls to of_find_path. Do so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
---
v1 -> v2:
  - note why we ignore the return code of of_partition_ensure_probed
    (Ulrich)
  - fix typo (Marco, Ulrich)
  - add Marco's Reviewed-by
---
 common/state/state.c | 10 ----------
 drivers/of/of_path.c | 10 ++++++++++
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 85854f564d48..11cc86ff73be 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -618,16 +618,6 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	}
 
 #ifdef __BAREBOX__
-	/*
-	 * On EFI, where devices are not instantiated from device tree, the
-	 * state backend may point at a top-level fixed-partitions partition
-	 * subnode with a partuuid property, which will be looked up globally.
-	 *
-	 * In order to support this binding, we do not early exit when
-	 * of_partition_ensure_probed fails, but instead try the custom binding.
-	 */
-	(void)of_partition_ensure_probed(partition_node);
-
 	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
 #else
 	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 1268cf36ee5b..d11cb2a524eb 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -43,6 +43,16 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 	struct cdev *cdev;
 	bool add_bb = false;
 
+	/*
+	 * On EFI, where devices are not instantiated from device tree, the
+	 * state backend may point at a top-level fixed-partitions partition
+	 * subnode with a partuuid property, which will be looked up globally.
+	 *
+	 * In order to support this binding, we do not early exit when
+	 * of_partition_ensure_probed fails, but instead try the custom binding.
+	 */
+	(void)of_partition_ensure_probed(node);
+
 	dev = of_find_device_by_node_path(node->full_name);
 	if (!dev) {
 		int ret;
-- 
2.39.2



