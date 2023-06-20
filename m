Delivery-date: Tue, 20 Jun 2023 19:17:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBeyu-00EclW-PU
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 19:17:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBeys-0000x0-DR
	for lore@pengutronix.de; Tue, 20 Jun 2023 19:17:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7+6IaKwxsVzbR2CcdEPlsSJNlKIVzDoVU6N0vnutkzg=; b=mYvYXZEW263zXhSBewZWusyinM
	Xvpn3qEJ9ZGcF0Abwh7vm/MU5NBRDi5HZXY7g4OoMtbL9ec8uHyw/P/RvuPSzKhpy2laqswF4JhFG
	iLXqJd/z2WQdVzh1PicEd//e5QO/1tTcQSCaUAbEAEeB0989YeA/4W3LA/R6jhVFICgJ5Rt1BgMcY
	3dSPL0S6NrHrQ1dC9L0FZzChUiN6OGFm4dU5CtY+jlwEe2/90PHK20CjyvNl/CrgPZ6y0ZSjUPrml
	H4tYMl4HfTknNSr71E6g9xNgUMFs495qKubq56f295PtpR80OxOXNMWeW+VBtz4Y+CW51OH4VJBHm
	5skf3O5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBexO-00BuNn-0c;
	Tue, 20 Jun 2023 17:15:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBexK-00BuMp-2X
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 17:15:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBexG-0000mB-1S; Tue, 20 Jun 2023 19:15:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBexF-008qn1-DS; Tue, 20 Jun 2023 19:15:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBexF-00CwAe-08;
	Tue, 20 Jun 2023 19:15:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jun 2023 19:15:44 +0200
Message-Id: <20230620171544.3083433-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615150116.287480-1-a.fatoum@pengutronix.de>
References: <20230615150116.287480-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_101550_823235_DBE8E3DF 
X-CRM114-Status: GOOD (  12.22  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! usb: add basic TUSB320 Type-C controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

usb: typec: tusb320: add missing includes

<linux/usb/role.h> was only in my working copy and <linux/bitops.h>
(for BIT) was only included transitively.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/typec/tusb320.c |  1 +
 include/linux/usb/role.h    | 12 ++++++++++++
 2 files changed, 13 insertions(+)
 create mode 100644 include/linux/usb/role.h

diff --git a/drivers/usb/typec/tusb320.c b/drivers/usb/typec/tusb320.c
index 0f84021b641b..eb6b492481a3 100644
--- a/drivers/usb/typec/tusb320.c
+++ b/drivers/usb/typec/tusb320.c
@@ -12,6 +12,7 @@
 #include <init.h>
 #include <linux/kernel.h>
 #include <linux/printk.h>
+#include <linux/bitops.h>
 #include <module.h>
 #include <regmap.h>
 #include <linux/usb/typec.h>
diff --git a/include/linux/usb/role.h b/include/linux/usb/role.h
new file mode 100644
index 000000000000..bf78db7e6fa8
--- /dev/null
+++ b/include/linux/usb/role.h
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#ifndef __LINUX_USB_ROLE_H
+#define __LINUX_USB_ROLE_H
+
+enum usb_role {
+	USB_ROLE_NONE,
+	USB_ROLE_HOST,
+	USB_ROLE_DEVICE,
+};
+
+#endif /* __LINUX_USB_ROLE_H */
-- 
2.39.2



