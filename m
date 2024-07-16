Delivery-date: Tue, 16 Jul 2024 13:57:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoS-005QrY-37
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:57:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgoS-0001BA-A0
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:57:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LU7LdyKJqDaJlgUAAsF2v7cTBWRz4iszS9AJDyZ1srQ=; b=PMDMLiHl6Vz4lU1FkfltdbMiHK
	SuepYfhhYNgPYLKzJzATl4M8sql9hWdLMHahHT9gyCFOnwWS/iSGNk67bn4JRwr5o8htnhYZqlNSx
	TEgT0C2BCQ62HPPHvihoHIeIT5DOtmE1SRoEwkFCcHBpFI7/mzVKUyTzTgRU2ZiS8DE3Y5svo/84a
	FHe9pdDl1L5zHjFKrA2u9zakMFi3yyApa2wBhHdbBCgXivFO9gt2v1vfQ0vb/3/0DZ3VlC18MAvF1
	XhGSJEBCklO9Y2UVM7uv33jGWG1DBueyJOMduO5HIdUQ9KYbiyPDLkYkKFwDJ9OQ9BTb9MtDhlrDS
	ko55Nwgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgo2-0000000AKFR-3ZQp;
	Tue, 16 Jul 2024 11:57:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgny-0000000AKCu-2mVc
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:57:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0000wm-DK; Tue, 16 Jul 2024 13:57:13 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnx-0007Ye-0J; Tue, 16 Jul 2024 13:57:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgnw-008DFD-2y;
	Tue, 16 Jul 2024 13:57:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:57:09 +0200
Message-Id: <20240716115711.1956907-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
References: <20240716115711.1956907-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045714_723835_B62BC39E 
X-CRM114-Status: GOOD (  13.45  )
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
Subject: [PATCH 2/4] base: use initcalls instead of linker lists to register classes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

BAREBOX_CLASSES is the only member of RO_DATA_SECTION that's indeed not
read-only. This will lead to issues when we start making to mark that
section read-only on sandbox.

Replace the linker list thus with an initcall.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/class.c              | 20 +-------------------
 include/asm-generic/barebox.lds.h |  7 -------
 include/device.h                  | 20 ++++++++++++++------
 3 files changed, 15 insertions(+), 32 deletions(-)

diff --git a/drivers/base/class.c b/drivers/base/class.c
index fd7d6b2d7a29..5fbbae0ff025 100644
--- a/drivers/base/class.c
+++ b/drivers/base/class.c
@@ -5,11 +5,9 @@
 
 LIST_HEAD(class_list);
 
-static int class_register(struct class *class)
+void class_register(struct class *class)
 {
 	list_add_tail(&class->list, &class_list);
-
-	return 0;
 }
 
 int class_add_device(struct class *class, struct device *dev)
@@ -23,19 +21,3 @@ void class_remove_device(struct class *class, struct device *dev)
 {
 	list_del(&dev->class_list);
 }
-
-extern struct class __barebox_class_start[];
-extern struct class __barebox_class_end[];
-
-static int register_classes(void)
-{
-	struct class *c;
-
-	for (c = __barebox_class_start;
-	     c != __barebox_class_end;
-	     c++)
-		class_register(c);
-
-	return 0;
-}
-device_initcall(register_classes);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 8bbf5907cdfd..d3736ebaed59 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -70,12 +70,6 @@
 	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))	\
 	__barebox_magicvar_end = .;
 
-#define BAREBOX_CLASSES				\
-	STRUCT_ALIGN();				\
-	__barebox_class_start = .;		\
-	KEEP(*(SORT_BY_NAME(.barebox_class*)))	\
-	__barebox_class_end = .;
-
 #define BAREBOX_CLK_TABLE			\
 	STRUCT_ALIGN();				\
 	__clk_of_table_start = .;		\
@@ -144,7 +138,6 @@
 	BAREBOX_SYMS				\
 	KERNEL_CTORS()				\
 	BAREBOX_MAGICVARS			\
-	BAREBOX_CLASSES				\
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
 	BAREBOX_RSA_KEYS			\
diff --git a/include/device.h b/include/device.h
index 8550544ca807..4c76da2f82dd 100644
--- a/include/device.h
+++ b/include/device.h
@@ -7,6 +7,8 @@
 #define DEVICE_H
 
 #include <linux/types.h>
+#include <linux/list.h>
+#include <init.h>
 
 enum dev_dma_coherence {
 	DEV_DMA_COHERENCE_DEFAULT = 0,
@@ -110,12 +112,18 @@ struct class {
 	struct list_head list;
 };
 
-#define DEFINE_DEV_CLASS(_name, _classname)					\
-	struct class _name __ll_elem(.barebox_class_##_name) 			\
-	__aligned(__alignof__(struct class)) = {				\
-		.name = _classname,						\
-		.devices = LIST_HEAD_INIT(_name.devices),			\
-	}
+void class_register(struct class *class);
+
+#define DEFINE_DEV_CLASS(_name, _classname)			\
+	struct class _name = {					\
+		.name = _classname,				\
+		.devices = LIST_HEAD_INIT(_name.devices),	\
+	};							\
+	static int register_##_name(void) {			\
+		class_register(&_name);				\
+		return 0;					\
+	}							\
+	pure_initcall(register_##_name);
 
 int class_add_device(struct class *class, struct device *dev);
 void class_remove_device(struct class *class, struct device *dev);
-- 
2.39.2



