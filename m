Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo68.mail-out.ovh.net ([46.105.52.162])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cfeIC-0003pQ-LQ
 for barebox@lists.infradead.org; Mon, 20 Feb 2017 03:05:39 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 0A2E13BA7F
 for <barebox@lists.infradead.org>; Mon, 20 Feb 2017 04:05:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 20 Feb 2017 04:10:49 +0100
Message-Id: <1487560251-3005-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20170215192932.GB32649@mail.ovh.net>
References: <20170215192932.GB32649@mail.ovh.net>
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
Subject: [PATCH 10/12] efi: add minor and major to the bus and display it at
 boot
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/efi/efi-device.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 7eb94de45..1877794c6 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -357,13 +357,22 @@ static void efi_businfo(struct device_d *dev)
 static int efi_init_devices(void)
 {
 	char *fw_vendor = NULL;
+	u16 sys_major = efi_sys_table->hdr.revision >> 16;
+	u16 sys_minor = efi_sys_table->hdr.revision & 0xffff;
+
+	fw_vendor = strdup_wchar_to_char((const wchar_t *)efi_sys_table->fw_vendor);
+
+	pr_info("EFI v%u.%.02u by %s v%u\n",
+		sys_major, sys_minor,
+		fw_vendor, efi_sys_table->fw_revision);
 
 	bus_register(&efi_bus);
 
-	fw_vendor = strdup_wchar_to_char((const wchar_t *)efi_sys_table->fw_vendor);
 	dev_add_param_fixed(efi_bus.dev, "fw_vendor", fw_vendor);
 	free(fw_vendor);
 
+	dev_add_param_int_ro(efi_bus.dev, "major", sys_major, "%u");
+	dev_add_param_int_ro(efi_bus.dev, "minor", sys_minor, "%u");
 	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
 
 	efi_bus.dev->info = efi_businfo;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
