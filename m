Delivery-date: Tue, 01 Apr 2025 13:05:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQn-006xuO-2A
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQm-0003A6-LG
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CxOZ4YcfmoIF28yPBzBuUAlZmye3rIatzU8OlNpIwdQ=; b=Z1DIbw42oO0v7EOk7iVpHtuVE3
	5YWWYkHBBSndVqhXWxdlBN7kXdrOnwS3qBxcU4fykfbBjoTzan4nrDu2NV+CPIWDvHTzoyg6AUOx9
	HXEdDniT05FFZUrdrFkqCdGbVSdlCGueYc6k4VC4aNZvAKkHQwV3iqKWIHGzfGY8zNnB+GYL16h6m
	T/H0DhiMeDBt8849a5IGR01zb9mJYrop/Uv6PEDqP0SCsLDGBj5Uks85CrY+C7jFM171oI7slgWj5
	Ggleao4B0a5QQEusPsVE+r99ApzR5Fhk/wrhcvTUi/vfPksVBjehgwGX0CCspjjf0D0jp4x+Vt09V
	/VO4wAMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQJ-00000002inm-2Bzc;
	Tue, 01 Apr 2025 11:04:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA9-00000002foe-08xy
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000NU-Ry; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWx-29;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-1q;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:59 +0200
Message-Id: <20250401104806.3959859-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034809_304053_B2271A0A 
X-CRM114-Status: GOOD (  15.16  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/16] boot: split off bootarg API into new bootargs.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding new functions to the flexible bootarg support
that are not used at boot-time, factor out the bootargs support,
so new code need not include the whole boot.h header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/boot.h     | 16 +---------------
 include/bootargs.h | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 15 deletions(-)
 create mode 100644 include/bootargs.h

diff --git a/include/boot.h b/include/boot.h
index 71da2e2baba8..c1676364cadc 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -6,21 +6,7 @@
 #include <menu.h>
 #include <environment.h>
 #include <bootm-overrides.h>
-
-#ifdef CONFIG_FLEXIBLE_BOOTARGS
-const char *linux_bootargs_get(void);
-int linux_bootargs_overwrite(const char *bootargs);
-#else
-static inline const char *linux_bootargs_get(void)
-{
-	return getenv("bootargs");
-}
-
-static inline int linux_bootargs_overwrite(const char *bootargs)
-{
-	return setenv("bootargs", bootargs);
-}
-#endif
+#include <bootargs.h>
 
 struct bootentries {
 	struct list_head entries;
diff --git a/include/bootargs.h b/include/bootargs.h
new file mode 100644
index 000000000000..c85fd4c4a797
--- /dev/null
+++ b/include/bootargs.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __BOOTARGS_H
+#define __BOOTARGS_H
+
+#include <environment.h>
+
+#ifdef CONFIG_FLEXIBLE_BOOTARGS
+const char *linux_bootargs_get(void);
+int linux_bootargs_overwrite(const char *bootargs);
+#else
+static inline const char *linux_bootargs_get(void)
+{
+	return getenv("bootargs");
+}
+
+static inline int linux_bootargs_overwrite(const char *bootargs)
+{
+	return setenv("bootargs", bootargs);
+}
+#endif
+
+#endif /* __BOOTARGS_H */
-- 
2.39.5



