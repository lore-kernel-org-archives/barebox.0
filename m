Delivery-date: Tue, 11 Apr 2023 09:16:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FO-00HI8b-78
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:16:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FD-0001i7-Br
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:16:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zSRDzS7eX1qlomndzVEIBv9Ll2bYFanWBiaXDyc8cuY=; b=QKF/hE5Tn7HDG4BboqpnZtGZnR
	072Xt5n2yN2A3CItOUlAiX7PgHHEbJLax8a9tHJaTpiSNWdYX5xqIdR3Iscw6HSti74hP/y6wJmJH
	VLt67t+vEpXOvSIjDJ6fFlkDJwxNpjedT5hLox78+sYEJNb8a67QuO+evIaLNcfieqX5U9II9r4X8
	vO/JzJ7KnkVoc7vA6623M4mDEDlfrjWrgwZai9YA8ZZpmwn1n6Wi1+OBJ8UPh7RKTVLwK6sVO17zi
	SAnze8dn+/pzrlBJLWEzaZwe9RjkGJvQSxRDwPFxwO2kT/51+6T1zPXmJiQxWt/YRaRlN6fHNeJpO
	adEQPARg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DO-00Gg2r-0v;
	Tue, 11 Apr 2023 07:14:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DH-00GfxN-1I
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-0000rZ-MG; Tue, 11 Apr 2023 09:14:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DD-00ARvT-VN; Tue, 11 Apr 2023 09:14:43 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNs-PS; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Apr 2023 09:14:31 +0200
Message-Id: <20230411071436.1630752-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001447_437693_9829D827 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 09/14] net: dsa: realtek: include needed headers directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Building the driver for RISC-V instead of ARM, shows that the
headers of some symbols depended on were included indirectly
before. Fix this to enable RISC-V build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/realtek-dsa/realtek-mdio.c | 1 +
 drivers/net/realtek-dsa/realtek-smi.c  | 1 +
 drivers/net/realtek-dsa/rtl8365mb.c    | 2 ++
 drivers/net/realtek-dsa/rtl8366rb.c    | 2 ++
 drivers/net/realtek-dsa/tag_rtl4_a.c   | 1 +
 drivers/net/realtek-dsa/tag_rtl8_4.c   | 1 +
 6 files changed, 8 insertions(+)

diff --git a/drivers/net/realtek-dsa/realtek-mdio.c b/drivers/net/realtek-dsa/realtek-mdio.c
index 8b32c3cf539e..579eefebe233 100644
--- a/drivers/net/realtek-dsa/realtek-mdio.c
+++ b/drivers/net/realtek-dsa/realtek-mdio.c
@@ -23,6 +23,7 @@
 #include <regmap.h>
 #include <clock.h>
 #include <gpiod.h>
+#include <linux/printk.h>
 #include <linux/mdio.h>
 
 #include "realtek.h"
diff --git a/drivers/net/realtek-dsa/realtek-smi.c b/drivers/net/realtek-dsa/realtek-smi.c
index 83d197dcdfcd..a12cb7ffd4be 100644
--- a/drivers/net/realtek-dsa/realtek-smi.c
+++ b/drivers/net/realtek-dsa/realtek-smi.c
@@ -31,6 +31,7 @@
 #include <of.h>
 #include <of_device.h>
 #include <linux/mdio.h>
+#include <linux/printk.h>
 #include <clock.h>
 #include <gpiod.h>
 #include <driver.h>
diff --git a/drivers/net/realtek-dsa/rtl8365mb.c b/drivers/net/realtek-dsa/rtl8365mb.c
index 1f11ed4ed4bc..d8e8ac714deb 100644
--- a/drivers/net/realtek-dsa/rtl8365mb.c
+++ b/drivers/net/realtek-dsa/rtl8365mb.c
@@ -94,6 +94,8 @@
 #include <linux/bitops.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
+#include <linux/printk.h>
+#include <linux/export.h>
 #include <regmap.h>
 #include <net.h>
 #include <linux/if_bridge.h>
diff --git a/drivers/net/realtek-dsa/rtl8366rb.c b/drivers/net/realtek-dsa/rtl8366rb.c
index 67dcb7fb704f..5449b9481cf7 100644
--- a/drivers/net/realtek-dsa/rtl8366rb.c
+++ b/drivers/net/realtek-dsa/rtl8366rb.c
@@ -15,6 +15,8 @@
 #include <linux/bitops.h>
 #include <net.h>
 #include <linux/if_bridge.h>
+#include <linux/printk.h>
+#include <linux/export.h>
 #include <regmap.h>
 
 #include "realtek.h"
diff --git a/drivers/net/realtek-dsa/tag_rtl4_a.c b/drivers/net/realtek-dsa/tag_rtl4_a.c
index dabd4ccba2d9..30c6a712d9bf 100644
--- a/drivers/net/realtek-dsa/tag_rtl4_a.c
+++ b/drivers/net/realtek-dsa/tag_rtl4_a.c
@@ -16,6 +16,7 @@
  */
 
 #include <net.h>
+#include <linux/printk.h>
 
 #include "realtek.h"
 #include "dsa_priv.h"
diff --git a/drivers/net/realtek-dsa/tag_rtl8_4.c b/drivers/net/realtek-dsa/tag_rtl8_4.c
index a6762fc4e90d..80e977a65d4d 100644
--- a/drivers/net/realtek-dsa/tag_rtl8_4.c
+++ b/drivers/net/realtek-dsa/tag_rtl8_4.c
@@ -74,6 +74,7 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/printk.h>
 #include <net.h>
 
 #include "realtek.h"
-- 
2.39.2



