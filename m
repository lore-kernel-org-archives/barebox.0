Delivery-date: Thu, 02 Feb 2023 18:35:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUk-00Bdhq-Mc
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 18:35:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUh-0004vb-NZ
	for lore@pengutronix.de; Thu, 02 Feb 2023 18:35:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VQSC+mX3Hf/OSL7BpP1ADHtusVRrAgYcfWkgyVpbmyE=; b=GGXbs657RP8QCEBUh4VHNzBt94
	K++pI+/KSopP+wAnUedvxAZ+ywinANZjAJRmv33VK/B0zZ3xWlsTO8yyrhidv3UAw2to4KgOWe07A
	zOH5BX+pur7Ku9jcFBwuTYXlswEGS4XVRCz1aJPBlXbY2m8Y/Lis+N7UBuK9Gye2YKUBkxZOzWdDw
	S4FFgA0WqkLXNYewGYUn0FCgWbdo+bew9liruBZpqUnwWP2ZLA9R2xkh9Sya0l7SVsh89uNm3R0ZA
	14fviJbyBYtOdUX6c3KGfzGpFZCQUMSpj06USci1UcAXz/PW0B40YaJlp9dFyOk3iHNz61wPFQQRZ
	t+INfpsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdTN-00Gohs-RV; Thu, 02 Feb 2023 17:34:09 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdT9-00Gobh-4e
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 17:33:59 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 5DD3FE74016; Thu,  2 Feb 2023 18:33:23 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-214.net-htp.de [89.183.231.214])
	by lynxeye.de (Postfix) with ESMTPA id 3E71EE74012
	for <barebox@lists.infradead.org>; Thu,  2 Feb 2023 18:33:18 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 18:33:10 +0100
Message-Id: <20230202173312.504493-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230202173312.504493-1-l.stach@pengutronix.de>
References: <20230202173312.504493-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_093355_390808_0E568598 
X-CRM114-Status: GOOD (  12.86  )
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
Subject: [PATCH 3/5] nvmem: regmap: allow to register with post processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a new registration function that allows to fill the cell_post_process
function pointer.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/nvmem/regmap.c         | 10 +++++++++-
 include/linux/nvmem-provider.h |  9 +++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 56611819a2b4..58b3fe647b28 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -58,7 +58,9 @@ static struct nvmem_bus nvmem_regmap_bus = {
 	.write = nvmem_regmap_write,
 };
 
-struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
+struct nvmem_device *
+nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
+			      nvmem_cell_post_process_t cell_post_process)
 {
 	struct nvmem_config config = {};
 
@@ -73,6 +75,12 @@ struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
 	config.word_size = 1;
 	config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
 	config.bus = &nvmem_regmap_bus;
+	config.cell_post_process = cell_post_process;
 
 	return nvmem_register(&config);
 }
+
+struct nvmem_device *nvmem_regmap_register(struct regmap *map, const char *name)
+{
+	return nvmem_regmap_register_with_pp(map, name, NULL);
+}
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 2f130e51791c..43fe49648e66 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -47,6 +47,8 @@ struct cdev;
 
 struct nvmem_device *nvmem_register(const struct nvmem_config *cfg);
 struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *name);
+struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *regmap,
+		const char *name, nvmem_cell_post_process_t cell_post_process);
 struct nvmem_device *nvmem_partition_register(struct cdev *cdev);
 
 #else
@@ -61,6 +63,13 @@ static inline struct nvmem_device *nvmem_regmap_register(struct regmap *regmap,
 	return ERR_PTR(-ENOSYS);
 }
 
+static inline struct nvmem_device *
+nvmem_regmap_register_with_pp(struct regmap *regmap, const char *name,
+			      nvmem_cell_post_process_t cell_post_process)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
 static inline struct nvmem_device *nvmem_partition_register(struct cdev *cdev)
 {
 	return ERR_PTR(-ENOSYS);
-- 
2.39.1



