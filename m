Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo177.mail-out.ovh.net ([46.105.39.154])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ce5GP-0007M8-Bg
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 19:29:22 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id A58062F840
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2017 20:28:39 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 15 Feb 2017 20:34:17 +0100
Message-Id: <1487187257-29082-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/12] efi: bus: add firmware vendor and resision and tables
 info
To: barebox@lists.infradead.org

This alllow us to known where we boot from

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/efi/efi-device.c | 23 +++++++++++++++++++++++
 include/efi.h            |  7 ++++++-
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 2864d0cf1..7eb94de45 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -341,10 +341,33 @@ struct bus_type efi_bus = {
 	.remove = efi_bus_remove,
 };
 
+static void efi_businfo(struct device_d *dev)
+{
+	int i;
+
+	printf("Tables:\n");
+	for (i = 0; i < efi_sys_table->nr_tables; i++) {
+		efi_config_table_t *t = &efi_sys_table->tables[i];
+
+		printf("  %d: %pUl: %s\n", i, &t->guid,
+					efi_guid_string(&t->guid));
+	}
+}
+
 static int efi_init_devices(void)
 {
+	char *fw_vendor = NULL;
+
 	bus_register(&efi_bus);
 
+	fw_vendor = strdup_wchar_to_char((const wchar_t *)efi_sys_table->fw_vendor);
+	dev_add_param_fixed(efi_bus.dev, "fw_vendor", fw_vendor);
+	free(fw_vendor);
+
+	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
+
+	efi_bus.dev->info = efi_businfo;
+
 	efi_register_devices();
 
 	return 0;
diff --git a/include/efi.h b/include/efi.h
index fa6fb2782..4b812c9ab 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -488,6 +488,11 @@ extern efi_guid_t efi_block_io_protocol_guid;
 extern efi_guid_t efi_barebox_vendor_guid;
 extern efi_guid_t efi_systemd_vendor_guid;
 
+typedef struct {
+	efi_guid_t guid;
+	unsigned long table;
+} efi_config_table_t;
+
 #define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
 
 #define EFI_2_30_SYSTEM_TABLE_REVISION  ((2 << 16) | (30))
@@ -510,7 +515,7 @@ typedef struct {
 	efi_runtime_services_t *runtime;
 	efi_boot_services_t *boottime;
 	unsigned long nr_tables;
-	unsigned long tables;
+	efi_config_table_t *tables;
 } efi_system_table_t;
 
 typedef struct {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
