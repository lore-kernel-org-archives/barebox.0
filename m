Delivery-date: Thu, 13 Nov 2025 10:35:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjQ-000Uqq-2U
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjP-0007Lg-Sy
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mf+tBG2W+4ddtpXzSIF7SWzm2wsJIFWUs44XGNHkAjQ=; b=2/56M8VbmNP3fOI3xShaYGO6+l
	4ZxpYuVVsXSMlXWLtjdHNNp1r8HOERZETE/qCoscUy+Kr4yZ/3R6RQNsTXIXQjlv+BvwqGDBWb8Yx
	8ZK+keSPm0HSM6nk1ItnAiICQqdtJmF5AK093KqE/C780U2pnfz+WHn6VP4yHmpwC7++CntI9rP3s
	cx2h2l0tDRBByvxCVEb3zQs8tj2UMUMC5Yu/MSRZJ5KKl6VWE2MYSS4Kzv1KTya8U7S86iiJUdJud
	FTM7qZOEYSm48uXY+44lpy6pjibyOXb3/yhj4+49n5wduk+ZmqzfxfYxVsBcx6KCCLusDQKsEdM5a
	pXM1a3Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTix-0000000ACTw-0u5D;
	Thu, 13 Nov 2025 09:34:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTir-0000000ACRa-3CPM
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 09:34:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070D-E8; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXo-35;
	Thu, 13 Nov 2025 10:34:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1CB8;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-1-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=4402;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=v8BRHp50RyK4IAfJypDjXSEisS6XmQZN5926QNJljQU=;
 b=jGNttVfdisJvRyEczf2hufkCRQdK6uIXda5w8vjOGRU1U0QmTIA1Nl0+Rkk8nfsB+6yiXAOd/
 1sNgSvc7WqDCnHYO3j/3U0qTNQh6kUmM2AsSW29/Nb+0LLCtw0AXJnF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_013433_851709_4730D00A 
X-CRM114-Status: GOOD (  18.86  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] introduce SoC UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most SoCs have a unique ID (UID) which can be used to identify a
particular SoC instance. This is exposed to the environment by some SoC
drivers as soc0.serial_number like also done in Linux. The SoC UID can
also conveniently be used to generate a unique machine_id on systems
with a readonly rootfs. The two usecases require the SoC UID in different
formats. While machine_id_set_hashable() takes a binary representation
of the SoC UID, soc0.serial_number is a string. The conversion from the
binary representation to the string is SoC specific, some SoCs interpret
the binary data as a byte array (AM62x for example), others interpret it
as words of different lengths in different endianesses (i.MX). Others
even print the binary data as decimal (qcom).

Needing a SoC driver for providing the SoC UID is an unlucky choice as
some SoCs do not have a SoC driver, but instead read the SoC UID in
their eFuse driver in drivers/nvmem (STM32MP bsec). These drivers
provide hashable data to generate a machine_id, but do not expose the
SoC ID.

This patch introduces barebox_set_soc_uid(). This function provides a
new environment variable global.soc_uid which contains the SoC UID.
It also passes the SoC UID to machine_id_set_hashable() for generating a
machine_id. To accomodate for different string representations of the
binary data barebox_set_soc_uid() takes both the binary data and a
string in the SoCs preferred format of the same data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c          | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/barebox-info.h |  4 ++++
 2 files changed, 62 insertions(+)

diff --git a/common/misc.c b/common/misc.c
index 0af5a9cf30cdb952063974969c368061420a6e2b..ef6687f01389beaed44fc446b25ec5f21e712366 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -16,6 +16,7 @@
 #include <restart.h>
 #include <poweroff.h>
 #include <string.h>
+#include <machine_id.h>
 #include <linux/stringify.h>
 
 int errno;
@@ -252,6 +253,63 @@ const char *barebox_get_serial_number(void)
 
 BAREBOX_MAGICVAR(global.serial_number, "Board serial number");
 
+static char *soc_uid_str;
+static void *soc_uid;
+static size_t soc_uid_len;
+
+/*
+ * barebox_set_soc_uid - set a Unique SoC ID
+ *
+ * Set a Unique SoC ID. The ID is usually read from SoC internal eFuses. It
+ * can vary in length on different SoCs and can have different canonical hex
+ * representations. @uidstr can be NULL in which case uidbuf is interpreted
+ * as a byte array.
+ *
+ * barebox uses the SoC ID to generate a machine_id and exports it to the
+ * environment via global.soc_uid.
+ *
+ * In Linux the serial number is exported as /sys/devices/soc0/serial_number
+ * which should generally have the same format as *uidstr.
+ */
+void barebox_set_soc_uid(const char *uidstr, const void *uidbuf, size_t len)
+{
+	if (soc_uid_str) {
+		pr_warn("SoC UID already set. Ignoring\n");
+		return;
+	}
+
+	soc_uid = xmemdup(uidbuf, len);
+	soc_uid_len = len;
+
+	if (uidstr) {
+		soc_uid_str = xstrdup(uidstr);
+	} else {
+		soc_uid_str = xzalloc(len * 2 + 1);
+		bin2hex(soc_uid_str, uidbuf, len);
+	}
+
+	machine_id_set_hashable(uidbuf, len);
+
+	globalvar_add_simple_string("soc_uid", &soc_uid_str);
+}
+BAREBOX_MAGICVAR(global.soc_uid, "SoC Unique ID");
+
+const char *barebox_get_soc_uid(void)
+{
+	return soc_uid_str;
+}
+
+int barebox_get_soc_uid_bin(const void **buf, size_t *len)
+{
+	if (!soc_uid)
+		return -ENOENT;
+
+	*buf = soc_uid;
+	*len = soc_uid_len;
+
+	return 0;
+}
+
 #ifdef CONFIG_OFTREE
 static char *of_machine_compatible;
 
diff --git a/include/barebox-info.h b/include/barebox-info.h
index bcceb7b0e0211c8c7dccd6b9f480c9fbc13dcf63..898fb493b6348ee64670f928a3598a7c3d277554 100644
--- a/include/barebox-info.h
+++ b/include/barebox-info.h
@@ -25,6 +25,10 @@ bool barebox_hostname_is_valid(const char *s);
 const char *barebox_get_serial_number(void);
 void barebox_set_serial_number(const char *);
 
+void barebox_set_soc_uid(const char *uidstr, const void *uidbuf, size_t len);
+const char *barebox_get_soc_uid(void);
+int barebox_get_soc_uid_bin(const void **buf, size_t *len);
+
 #ifdef CONFIG_OFTREE
 void barebox_set_of_machine_compatible(const char *);
 const char *barebox_get_of_machine_compatible(void);

-- 
2.47.3



