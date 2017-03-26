Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5M-00051Z-Qo
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:22 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 4945CBA397
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:45:03 +0200
Message-Id: <1490496304-30850-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/13] efi: fix secure and setup mode report
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/efi/efi-device.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 6ed7f12b3..998bda7c6 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -365,7 +365,7 @@ static int efi_is_secure_boot(void)
 		free(val);
 	}
 
-	return ret != 1;
+	return ret != 0;
 }
 
 static int efi_is_setup_mode(void)
@@ -379,7 +379,7 @@ static int efi_is_setup_mode(void)
 		free(val);
 	}
 
-	return ret != 1;
+	return ret != 0;
 }
 
 static int efi_init_devices(void)
@@ -406,7 +406,7 @@ static int efi_init_devices(void)
 	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
 	dev_add_param_int_ro(efi_bus.dev, "secure_boot", secure_boot, "%d");
 	dev_add_param_int_ro(efi_bus.dev, "secure_mode",
-			     secure_boot & setup_mode, "%u");
+			     secure_boot && !setup_mode, "%u");
 
 	efi_bus.dev->info = efi_businfo;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
