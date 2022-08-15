Delivery-date: Mon, 15 Aug 2022 11:42:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNWbj-006GxY-BF
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 11:42:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNWbk-0000WM-2P
	for lore@pengutronix.de; Mon, 15 Aug 2022 11:42:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WGqhkqVlzgxX84A+VIIDiMIU/wciG7wT3e1Jzjldjwo=; b=Rt/1l0coa+2EU+Sz7pL9wV+Ux3
	chBTMHca/F+ByfJswuynd2CfeNJmIA9PvY2wj115dq+9rfQYxy6DwdLsI4Bjs75jfDWk5YA08mzOT
	2ssVPbG4g1J31X7a4+nbWYoGl+f3+XDF41WZ3WpS/C3dODbuIdwPpQSRe10UOmFSOHd9q6fk13Fhg
	bAPmfgXAJoshkjiSFwEQ45N38aCnKopcfqVW8+CHtR4NX40jy8GOeDAVqFRf7anuwrMtqt+ESkfjU
	UMNwhF0NQwM+VULD6h8RHPSy3Y/UXdpdUk75D0F8xPB2u5XUvcV1V07HhhVLDvuwtlxI2gJ501kDn
	DMZ7Ou3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNWaB-00DzxM-Et; Mon, 15 Aug 2022 09:40:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNWE9-00Dimn-1D
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 09:17:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNWE4-0005uX-OA; Mon, 15 Aug 2022 11:17:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNWE1-003tKJ-Op; Mon, 15 Aug 2022 11:17:36 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNWE2-008HTI-SU; Mon, 15 Aug 2022 11:17:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 11:17:33 +0200
Message-Id: <20220815091733.1973736-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_021741_127784_951E21F6 
X-CRM114-Status: GOOD (  15.17  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usbgadget: autostart: add usbgadget_autostart helper for board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox will rerun a setter if a nv variable changes its global variable's
default. If setter is accessing other nv variables though, the setter
will not rerun when they change. For this reason, usbgadget_autostart_init()
must be registered at postenvironment_initcall() level, but this makes
the variable only reliably usable from the shell as there's no later
initcall level than postenvironment_initcall() for board code to run at.

Add a new usbgadget_autostart(boot enable) function that board code can
use instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/usbgadget.c         | 15 ++++++++++++++-
 include/usb/gadget-multi.h |  3 +++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/common/usbgadget.c b/common/usbgadget.c
index 2ec6d9226cca..161fd16fedb7 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -121,6 +121,12 @@ static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 	return err;
 }
 
+void usbgadget_autostart(bool enable)
+{
+	globalvar_set("usbgadget.autostart", enable ? "1" : "0");
+	autostart = enable;
+}
+
 static int usbgadget_globalvars_init(void)
 {
 	globalvar_add_simple_bool("usbgadget.acm", &acm);
@@ -132,8 +138,15 @@ device_initcall(usbgadget_globalvars_init);
 
 static int usbgadget_autostart_init(void)
 {
-	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART))
+	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART)) {
 		globalvar_add_bool("usbgadget.autostart", usbgadget_autostart_set, &autostart, NULL);
+		/* We are already at latest initcall level, yet board code
+		 * may want to set this variable without resorting to scripts.
+		 * Check autostart manually here, so we don't miss it.
+		 */
+		if (autostart)
+			globalvar_set("usbgadget.autostart", "1");
+	}
 	return 0;
 }
 postenvironment_initcall(usbgadget_autostart_init);
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 2d8d7533a816..e67ca165c18b 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -3,6 +3,7 @@
 #ifndef __USB_GADGET_MULTI_H
 #define __USB_GADGET_MULTI_H
 
+#include <linux/types.h>
 #include <usb/fastboot.h>
 #include <usb/dfu.h>
 #include <usb/usbserial.h>
@@ -36,4 +37,6 @@ struct usbgadget_funcs {
 
 int usbgadget_register(const struct usbgadget_funcs *funcs);
 
+void usbgadget_autostart(bool enable);
+
 #endif /* __USB_GADGET_MULTI_H */
-- 
2.30.2



