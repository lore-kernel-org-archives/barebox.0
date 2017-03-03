Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjmJy-00077G-HL
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 12:28:37 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 3AA615BBD3
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 13:28:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Mar 2017 13:34:05 +0100
Message-Id: <1488544445-20105-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170303123219.GD4120@mail.ovh.net>
 <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 9/9] efi: add veriable to report secure boot support and status
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/efi/efi-device.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index db8b25147..6ed7f12b3 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -354,11 +354,41 @@ static void efi_businfo(struct device_d *dev)
 	}
 }
 
+static int efi_is_secure_boot(void)
+{
+	uint8_t *val;
+	int ret = 0;
+
+	val = efi_get_variable("SecureBoot", &efi_global_variable_guid, NULL);
+	if (!IS_ERR(val)) {
+		ret = *val;
+		free(val);
+	}
+
+	return ret != 1;
+}
+
+static int efi_is_setup_mode(void)
+{
+	uint8_t *val;
+	int ret = 0;
+
+	val = efi_get_variable("SetupMode", &efi_global_variable_guid, NULL);
+	if (!IS_ERR(val)) {
+		ret = *val;
+		free(val);
+	}
+
+	return ret != 1;
+}
+
 static int efi_init_devices(void)
 {
 	char *fw_vendor = NULL;
 	u16 sys_major = efi_sys_table->hdr.revision >> 16;
 	u16 sys_minor = efi_sys_table->hdr.revision & 0xffff;
+	int secure_boot = efi_is_secure_boot();
+	int setup_mode = efi_is_setup_mode();
 
 	fw_vendor = strdup_wchar_to_char((const wchar_t *)efi_sys_table->fw_vendor);
 
@@ -374,6 +404,9 @@ static int efi_init_devices(void)
 	dev_add_param_int_ro(efi_bus.dev, "major", sys_major, "%u");
 	dev_add_param_int_ro(efi_bus.dev, "minor", sys_minor, "%u");
 	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
+	dev_add_param_int_ro(efi_bus.dev, "secure_boot", secure_boot, "%d");
+	dev_add_param_int_ro(efi_bus.dev, "secure_mode",
+			     secure_boot & setup_mode, "%u");
 
 	efi_bus.dev->info = efi_businfo;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
