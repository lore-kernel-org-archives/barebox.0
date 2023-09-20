Delivery-date: Wed, 20 Sep 2023 14:38:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiwTk-004cmp-0Y
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 14:38:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiwTh-0001mP-Nj
	for lore@pengutronix.de; Wed, 20 Sep 2023 14:38:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MxptTxsyUt+J+eJ7TyKcMO6VStBUNsz20va3PaL94yg=; b=tml8+VDp0VDFs7MSwK3dN9DCaz
	B6iIPCMJyvMHEDYkcEprgFmDO2/nD48zp93u4ksMzorQnr2z/K4/ijpkDa18fRsT2io1a5r5oTyaG
	yQnT1jOL0KWWYfWlUywFfuywGoE8MrsCOtM8ofvjTAnjZutSIPzMMCaJd0vgEYHaMrtoUDSO7R8PE
	ZRLp61U9qY2HWfCnh9+k5Qahi0RG5aCDkaqDSqDHZH1/qzg+N0U8Keeq2G999QSjVrVxM1D6eYLi1
	Ke2wesfJYtWv5AIuMrjibO9TULEZ8kZzomifV8n3U6DnYR4r1bhnFx2MY676CSG9UJqQb3pM6d8xR
	8RMKfVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiwSV-0033As-2W;
	Wed, 20 Sep 2023 12:37:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiwSR-00336n-37
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 12:37:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qiwSO-0001Jm-8F; Wed, 20 Sep 2023 14:37:28 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 20 Sep 2023 14:37:19 +0200
Message-ID: <20230920123720.767063-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
References: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_053732_003912_10295290 
X-CRM114-Status: GOOD (  15.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] blspec: add new blspec.compatible.extra variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The blspec.compatible.extra variable will be used to specify extra
compatibles that are also used to match during bootloader specification
entry parsing. This means that even if your internal barebox device tree
machine compatible is "vendor,bareboxcompatible", but your bootloader
specification device tree contains "vendor,linuxcompatible", it is
possible to boot this entry by setting blspec.compatible.extra to
"vendor,linuxcompatible".

More than one compatible is possible as well, the compatibles will need
to be space separated (since "," is already used for the vendor hardware
distinction).

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 56 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index f8d47f20d2..e361a02333 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -19,10 +19,20 @@
 #include <net.h>
 #include <fs.h>
 #include <of.h>
+#include <magicvar.h>
+#include <linux/list.h>
 #include <linux/stat.h>
 #include <linux/err.h>
 #include <mtd/ubi-user.h>
 
+struct list_head *blspec_extra_list;
+char *blspec_extra_string;
+
+struct blspec_extra_entry {
+	char *compatible;
+	struct list_head list;
+};
+
 /*
  * blspec_entry_var_set - set a variable to a value
  */
@@ -830,8 +840,54 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
 	return found;
 }
 
+static int blspec_extra_set(struct param_d *p, void *priv)
+{
+	struct blspec_extra_entry *entry, *tmp;
+	char *str = blspec_extra_string;
+	char *temp = str;
+	unsigned int len;
+
+	if (blspec_extra_list) {
+		list_for_each_entry_safe(entry, tmp, blspec_extra_list, list) {
+			list_del(&entry->list);
+			free(entry->compatible);
+			free(entry);
+		}
+		blspec_extra_list = NULL;
+	}
+
+	while(str++) {
+		if (*str == ' ' || *str == 0) {
+			len = temp - str;
+			if(len > 126) {
+				len = 127;
+			}
+			entry = calloc(1, sizeof(struct blspec_extra_entry));
+			entry->compatible = xzalloc(len + 1);
+			memcpy(entry->compatible, temp, len);
+
+			if (blspec_extra_list == NULL) {
+				INIT_LIST_HEAD(&entry->list);
+				blspec_extra_list = &entry->list;
+			} else {
+				list_add_tail(&entry->list, blspec_extra_list);
+			}
+
+			temp = str + 1;
+		}
+		if (*str == 0)
+			break;
+	}
+
+	return 0;
+}
+
 static int blspec_init(void)
 {
+	dev_add_param_string(&global_device, "blspec.compatible.extra",
+			     blspec_extra_set, NULL, &blspec_extra_string, blspec_extra_list);
 	return bootentry_register_provider(blspec_bootentry_provider);
 }
 device_initcall(blspec_init);
+
+BAREBOX_MAGICVAR(global.blspec.compatible.extra, "Extra compatible to also match during bootloader entry matching");
-- 
2.42.0



