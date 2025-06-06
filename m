Delivery-date: Fri, 06 Jun 2025 10:59:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSus-004K6S-0X
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSun-0003fv-Gy
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dhajCjFc2MIUWDhfJg+Bc21FPb3O5w5QrPwLEcRMELg=; b=iTB6l+SzTVUWum2SRRUCPPFuix
	5pfz4R7S8+Ymf/UMRWZOimExaFt/38SS1BW/fp4XnK9oJzHSz4pt1cIVkp8qcch7K8yQr5rN3IJIz
	Zw01tl9Xn5kyavpFVR8cVeO+0yx3pd4LaHeM/WEu4nvYVc0Jlp6NAQyu3sWRYmtpB8x+pdK8LYsDq
	Np0X+IC0nRUo7VbjtZJkXanbVfQF3EQA61DfGyM+xo/f3lwvIaiu3ElVMAZjMsdrj7SfaplXjt+rw
	p8L66JRb5A2Dw430qyKlWh8V8t8lmbtGFv8fbp7JbrTIXAHTlBqf9uEOFrDgWGEWlbsVQhAwTuZcu
	oXoAV38w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu7-0000000HSOe-1odQ;
	Fri, 06 Jun 2025 08:58:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu1-0000000HSKB-1FXM
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSu0-0002si-2J; Fri, 06 Jun 2025 10:58:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:09 +0200
Message-Id: <20250606085813.2183260-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015817_331669_B2089AF8 
X-CRM114-Status: GOOD (  14.69  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/10] include: add definitions for UID/GID/DEV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not care for these fields, but they simplify porting kernel file
systems, so add helpers for them.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/kdev_t.h       | 22 ++++++++++++++
 include/linux/uidgid.h       | 59 ++++++++++++++++++++++++++++++++++++
 include/linux/uidgid_types.h | 15 +++++++++
 3 files changed, 96 insertions(+)
 create mode 100644 include/linux/kdev_t.h
 create mode 100644 include/linux/uidgid.h
 create mode 100644 include/linux/uidgid_types.h

diff --git a/include/linux/kdev_t.h b/include/linux/kdev_t.h
new file mode 100644
index 000000000000..2919eb6bde82
--- /dev/null
+++ b/include/linux/kdev_t.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KDEV_T_H
+#define _LINUX_KDEV_T_H
+
+#include <linux/compiler.h>
+
+#define MINORBITS	20
+#define MINORMASK	((1U << MINORBITS) - 1)
+
+#define MAJOR(dev)	((unsigned int) ((dev) >> MINORBITS))
+#define MINOR(dev)	((unsigned int) ((dev) & MINORMASK))
+#define MKDEV(ma,mi)	(((ma) << MINORBITS) | (mi))
+
+static __always_inline dev_t new_decode_dev(u32 dev)
+{
+	unsigned major = (dev & 0xfff00) >> 8;
+	unsigned minor = (dev & 0xff) | ((dev >> 12) & 0xfff00);
+	return MKDEV(major, minor);
+}
+
+
+#endif
diff --git a/include/linux/uidgid.h b/include/linux/uidgid.h
new file mode 100644
index 000000000000..7589e77b325f
--- /dev/null
+++ b/include/linux/uidgid.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_UIDGID_H
+#define _LINUX_UIDGID_H
+
+/*
+ * A set of types for the internal kernel types representing uids and gids.
+ *
+ * The types defined in this header allow distinguishing which uids and gids in
+ * the kernel are values used by userspace and which uid and gid values are
+ * the internal kernel values.  With the addition of user namespaces the values
+ * can be different.  Using the type system makes it possible for the compiler
+ * to detect when we overlook these differences.
+ *
+ */
+#include <linux/uidgid_types.h>
+
+#define KUIDT_INIT(value) (kuid_t){ value }
+#define KGIDT_INIT(value) (kgid_t){ value }
+
+#define make_kuid(uid) KUIDT_INIT(uid)
+#define make_kgid(gid) KGIDT_INIT(gid)
+
+#define GLOBAL_ROOT_UID KUIDT_INIT(0)
+#define GLOBAL_ROOT_GID KGIDT_INIT(0)
+
+#define INVALID_UID KUIDT_INIT(-1)
+#define INVALID_GID KGIDT_INIT(-1)
+
+static inline uid_t __kuid_val(kuid_t uid)
+{
+	return 0;
+}
+
+static inline gid_t __kgid_val(kgid_t gid)
+{
+	return 0;
+}
+
+static inline uid_t from_kuid(kuid_t kuid)
+{
+	return __kuid_val(kuid);
+}
+
+static inline gid_t from_kgid(kgid_t kgid)
+{
+	return __kgid_val(kgid);
+}
+
+static inline bool uid_eq(kuid_t left, kuid_t right)
+{
+	return __kuid_val(left) == __kuid_val(right);
+}
+
+static inline bool gid_eq(kgid_t left, kgid_t right)
+{
+	return __kgid_val(left) == __kgid_val(right);
+}
+
+#endif /* _LINUX_UIDGID_H */
diff --git a/include/linux/uidgid_types.h b/include/linux/uidgid_types.h
new file mode 100644
index 000000000000..b35ac4955a33
--- /dev/null
+++ b/include/linux/uidgid_types.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_UIDGID_TYPES_H
+#define _LINUX_UIDGID_TYPES_H
+
+#include <linux/types.h>
+
+typedef struct {
+	uid_t val;
+} kuid_t;
+
+typedef struct {
+	gid_t val;
+} kgid_t;
+
+#endif /* _LINUX_UIDGID_TYPES_H */
-- 
2.39.5



