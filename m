Delivery-date: Thu, 15 Jan 2026 13:08:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9I-001aH9-33
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9H-0002aO-Sk
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wwH4+aL4eg2YBVXhhG9+8VT0AFU/Cf8BW5FlbOIa69w=; b=yAvPAKWGry/pw72O+JGko8pCfE
	i/flfTJkFj9PzC961nEzIsUEgsq1LuDQfpwFBAhosbiZWrFU7LJ4VC5PeA3eDEE5nJqf8oJceiGP4
	YTQfAjAO2v99iZ3iSMByR/1YPk3sqmggiKCTthf9NTIymBKksjwM/UQUkE/w+hM1iBruMQ8qvd2mF
	8GhyZ4BvWilFmdPkvCrNs9QJQ2ilc2B3SH8qRbt4EzgMgkaLrtDsHJFwuVtMtZccFV8gj2OA0+YST
	Do+ZGv6U0+NDuT8H8ChOciVvKZKgVWGaxm5ORvSvkRmKUS85A002gRe15Ee30YgERVVak95qsVpXH
	jy1GVbGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8r-0000000CIYp-0yap;
	Thu, 15 Jan 2026 12:07:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8m-0000000CITj-0lhg
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8k-0002HG-JB; Thu, 15 Jan 2026 13:07:50 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:06:11 +0100
Message-ID: <20260115120748.3433463-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040752_245035_E1C67720 
X-CRM114-Status: GOOD (  14.54  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] lib: smbios: add support for setting product UUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SMBIOS describes how firmware can report a product UUID to the OS.
Currently, we derive one from the machine ID, which should ensure
uniqueness, but for easier identification, it would be good if board
code could explicitly set a UUID that's reported as-is to the OS.

Add global.product.uuid to allow for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/misc.c          | 14 ++++++++++++++
 include/barebox-info.h |  4 ++++
 lib/smbios.c           | 18 ++++++++++++------
 3 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 0af5a9cf30cd..b99a1b4ad8e7 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -142,6 +142,7 @@ BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
 
 static char *hostname;
 static char *serial_number;
+static uuid_t product_uuid;
 
 /* Note that HOST_NAME_MAX is 64 on Linux */
 #define BAREBOX_HOST_NAME_MAX	64
@@ -252,6 +253,19 @@ const char *barebox_get_serial_number(void)
 
 BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
 
+void barebox_set_product_uuid(const uuid_t *__product_uuid)
+{
+	globalvar_add_simple_uuid("product.uuid", &product_uuid);
+	product_uuid = *__product_uuid;
+}
+
+const uuid_t *barebox_get_product_uuid(void)
+{
+	return &product_uuid;
+}
+
+BAREBOX_MAGICVAR(global.product.uuid, "SMBIOS-reported product UUID");
+
 #ifdef CONFIG_OFTREE
 static char *of_machine_compatible;
 
diff --git a/include/barebox-info.h b/include/barebox-info.h
index bcceb7b0e021..70a940862ce2 100644
--- a/include/barebox-info.h
+++ b/include/barebox-info.h
@@ -4,6 +4,7 @@
 #define __BAREBOX_INFO_H__
 
 #include <linux/types.h>
+#include <linux/uuid.h>
 
 extern const char version_string[];
 extern const char release_string[];
@@ -25,6 +26,9 @@ bool barebox_hostname_is_valid(const char *s);
 const char *barebox_get_serial_number(void);
 void barebox_set_serial_number(const char *);
 
+void barebox_set_product_uuid(const uuid_t *uuid);
+const uuid_t *barebox_get_product_uuid(void);
+
 #ifdef CONFIG_OFTREE
 void barebox_set_of_machine_compatible(const char *);
 const char *barebox_get_of_machine_compatible(void);
diff --git a/lib/smbios.c b/lib/smbios.c
index c50fc907b255..d5aae1651f86 100644
--- a/lib/smbios.c
+++ b/lib/smbios.c
@@ -221,6 +221,8 @@ static int smbios_write_type1(void **current, int handle,
 {
 	struct smbios_type1 *t;
 	int len = sizeof(*t);
+	const uuid_t *product_uuid = NULL;
+	uuid_t product_uuid_buf;
 	char *vendor;
 
 	t = map_sysmem(*current, len);
@@ -236,16 +238,20 @@ static int smbios_write_type1(void **current, int handle,
 	t->version = smbios_add_string(ctx, NULL);
 	t->serial_number = smbios_add_string(ctx, barebox_get_serial_number());
 
-	if (IS_ENABLED(CONFIG_MACHINE_ID_SPECIFIC)) {
-		uuid_t id;
-		int ret;
+	product_uuid = barebox_get_product_uuid();
+	if (!product_uuid && IS_ENABLED(CONFIG_MACHINE_ID_SPECIFIC)) {
+		int err;
 
-		ret = machine_id_get_app_specific(&id, ARRAY_AND_SIZE("barebox-smbios"),
+		err = machine_id_get_app_specific(&product_uuid_buf,
+						  ARRAY_AND_SIZE("barebox-smbios"),
 						  NULL);
-		if (!ret)
-			export_uuid(t->uuid, &id);
+		if (!err)
+			product_uuid = &product_uuid_buf;
 	}
 
+	if (product_uuid)
+		export_uuid(t->uuid, product_uuid);
+
 	if (reset_source_get() == RESET_WKE)
 		t->wakeup_type = SMBIOS_WAKEUP_TYPE_OTHER;
 	else
-- 
2.47.3



