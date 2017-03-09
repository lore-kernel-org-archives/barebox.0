Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clz3D-0001J1-SG
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 14:28:23 +0000
Received: from player795.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id C60295E7E2
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 15:27:57 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 15:34:08 +0100
Message-Id: <1489070050-16024-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] efi: fix secure and setup mode report
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/efi/efi-device.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index 6ed7f12b3..7029bfb31 100644
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
+			     secure_boot & !setup_mode, "%u");
 
 	efi_bus.dev->info = efi_businfo;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
