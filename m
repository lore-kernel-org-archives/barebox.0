Delivery-date: Wed, 13 Mar 2024 20:56:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiT-004oUb-2e
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:56:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiT-00040Z-7c
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:56:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fYqmtX+JxUlkpNUkmoXvNYEC/icQEmKqADJfE6+tp40=; b=gpiByOQpn/51DymbAez82t8qa5
	9TSxr+oBdV+m9018micTRY2lNniliR/tvNGyZYuhGRny9V80ugFIrgyAR426JxQ3O3VUEoBVBFP1M
	SyBCbhjU90pR7tKGECsKMo/X3OGZGveWXPb46h72W3NsdKeB55i/8NtodjGWBrFYKbt6Pa8KPIIje
	tw9wyNuGzz+ziFrJ2lp2wJO+bFmW4ZdkH4ZcQj44We/AdsksIHWZcfkzAhT+0bv65pP4GpZBnxJAc
	G5eEPJu1j3540EnALdLS9wrKLUdBL7cIc7fOBl9Zpe0CrpxPWHS+Iv2MSsyvr+1ugdggqOyDmc9+4
	LwcVhItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUhw-0000000BieC-1WJG;
	Wed, 13 Mar 2024 19:56:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUht-0000000BicN-01ml
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:56:10 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUhr-00037i-Pv
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:56:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:56:03 +0100
Message-Id: <20240313195606.3911219-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_125609_249921_268AD3EE 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] fastboot: add support to set fastboot_bbu from board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper to set the fastboot_bbu variable to be independent of the
initlevel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/fastboot.c  | 5 +++++
 include/fastboot.h | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/common/fastboot.c b/common/fastboot.c
index 261283d50a3a..da55e9c2577f 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -933,6 +933,11 @@ bool get_fastboot_bbu(void)
 	return fastboot_bbu;
 }
 
+void set_fastboot_bbu(unsigned int enable)
+{
+	fastboot_bbu = enable;
+}
+
 struct file_list *get_fastboot_partitions(void)
 {
 	if (fastboot_partitions && *fastboot_partitions)
diff --git a/include/fastboot.h b/include/fastboot.h
index 8a98b482fe14..cd415847e348 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -60,6 +60,7 @@ enum fastboot_msg_type {
 
 #ifdef CONFIG_FASTBOOT_BASE
 bool get_fastboot_bbu(void);
+void set_fastboot_bbu(unsigned int enable);
 struct file_list *get_fastboot_partitions(void);
 #else
 static inline int get_fastboot_bbu(void)
@@ -67,6 +68,10 @@ static inline int get_fastboot_bbu(void)
 	return false;
 }
 
+static inline void set_fastboot_bbu(unsigned int enable)
+{
+}
+
 static inline struct file_list *get_fastboot_partitions(void)
 {
 	return file_list_parse("");
-- 
2.39.2



