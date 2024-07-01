Delivery-date: Mon, 01 Jul 2024 09:12:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBDf-000QAF-2x
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:12:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBDf-0005Ap-AD
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:12:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u40yRZWO2PMEsEaVI+OS3RhIs4hj0TpGkeZkppa/Lvs=; b=GccQT/NoE35UbqRHUjZBNCYcri
	U6r4gJrXQAsLgzjqjv5Ka6zHHVN5d293K4aLyVFgRNd7SwGWD7jymVN+UPY2ZGA7Ao+ZD3Ybue+3m
	kICWDLgGP10ZJ+ZPu3rW9AoJ+NGzpRbqG2DA3CE93OUoHMpINjDuGWd912gUAfxBPb+AIehL2NhFo
	OxMBSeyma7LzC6Mp2KHVAQm3o+o272mGS6TapBXeP5RuTa1cVwaG4t7gny1jNTgrihexHB8t0Vs8k
	k0/SHoWdzbWhYXDn5hLbM3eNBIkggltFdi2piUSg2772na3wRYb3IRd3MZmehHR2RTkZnXMnT3ii1
	37XPR9pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBDC-00000001zCO-12fC;
	Mon, 01 Jul 2024 07:12:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBD8-00000001zBW-3aTf
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:12:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBD7-00054s-9m; Mon, 01 Jul 2024 09:12:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBD6-006JcA-TR; Mon, 01 Jul 2024 09:12:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBD6-000ZpI-2e;
	Mon, 01 Jul 2024 09:12:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:12:23 +0200
Message-Id: <20240701071223.137695-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701071223.137695-1-a.fatoum@pengutronix.de>
References: <20240701071223.137695-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_001227_098740_15A19DB7 
X-CRM114-Status: GOOD (  12.96  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] include: common.h: move barebox version/info declarations to new header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Including all of common.h just to get the barebox version is overkill.
Let's move the version/info declarations into a separate header that can
be used instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/barebox-info.h | 31 +++++++++++++++++++++++++++++++
 include/common.h       | 23 +----------------------
 2 files changed, 32 insertions(+), 22 deletions(-)
 create mode 100644 include/barebox-info.h

diff --git a/include/barebox-info.h b/include/barebox-info.h
new file mode 100644
index 000000000000..446cd0dbaf93
--- /dev/null
+++ b/include/barebox-info.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef __BAREBOX_INFO_H__
+#define __BAREBOX_INFO_H__
+
+#include <linux/types.h>
+
+extern const char version_string[];
+extern const char release_string[];
+extern const char buildsystem_version_string[];
+
+#ifdef CONFIG_BANNER
+void barebox_banner(void);
+#else
+static inline void barebox_banner(void) {}
+#endif
+
+const char *barebox_get_model(void);
+void barebox_set_model(const char *);
+const char *barebox_get_hostname(void);
+void barebox_set_hostname(const char *);
+void barebox_set_hostname_no_overwrite(const char *);
+bool barebox_hostname_is_valid(const char *s);
+
+const char *barebox_get_serial_number(void);
+void barebox_set_serial_number(const char *);
+
+void barebox_set_of_machine_compatible(const char *);
+const char *barebox_get_of_machine_compatible(void);
+
+#endif
diff --git a/include/common.h b/include/common.h
index d7b5261bc921..fb8931c51eb9 100644
--- a/include/common.h
+++ b/include/common.h
@@ -20,6 +20,7 @@
 #include <asm/common.h>
 #include <asm/io.h>
 #include <linux/printk.h>
+#include <barebox-info.h>
 
 /*
  * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
@@ -113,26 +114,4 @@ int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
 			 int rwsize, int destmode);
 #define RW_BUF_SIZE	(unsigned)4096
 
-extern const char version_string[];
-extern const char release_string[];
-extern const char buildsystem_version_string[];
-#ifdef CONFIG_BANNER
-void barebox_banner(void);
-#else
-static inline void barebox_banner(void) {}
-#endif
-
-const char *barebox_get_model(void);
-void barebox_set_model(const char *);
-const char *barebox_get_hostname(void);
-void barebox_set_hostname(const char *);
-void barebox_set_hostname_no_overwrite(const char *);
-bool barebox_hostname_is_valid(const char *s);
-
-const char *barebox_get_serial_number(void);
-void barebox_set_serial_number(const char *);
-
-void barebox_set_of_machine_compatible(const char *);
-const char *barebox_get_of_machine_compatible(void);
-
 #endif	/* __COMMON_H_ */
-- 
2.39.2



