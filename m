Delivery-date: Mon, 14 Oct 2024 15:27:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L74-004Gsf-1y
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:27:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L72-0002QI-SH
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:27:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rICxxWw+ocM6A/Hza2xAW9oQysoucg4vCDhDOjfM/fM=; b=Yuw+8vAkMWemcQpNbu3iAGV7gf
	3crlHxzuWoPOXuTb7KdVhKTeqycsunUcjvCppl8qZHFQuOuXcI2Ke8ChDKNoZyfRuJ925XIHeSQpv
	dvJz2VfqY92NCoA/5UcVaM/HnzVzzevrCphIQ6noAFtJHCL29CTchp8Yf+c4da0pkpiiEgWnsCUEx
	CrqApzElPM4QELyawnEGHaWuPm4VVoLC9rADuA8CbIQJYTpWAbyLjcswSg3Rb8+zYlYuZrPlTNjSP
	uwsb6E/56ZaY0elRFuyva4QAn0Ik2JEr78yJeV2ZgajNI9xm3lnYSDm2/kUhxxZvgOV8EuEE2x680
	jhhqJUmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6U-00000005Gbv-3BfN;
	Mon, 14 Oct 2024 13:27:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JQ2-00000004xiI-2F3Z
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rICxxWw+ocM6A/Hza2xAW9oQysoucg4vCDhDOjfM/fM=; b=WGNny+aXcIQ9ioexZcywYwMu6k
	dNtUImr+7259F77Z/u7qM2JiJ/zn8W5LOIMDimCP0f2fok6ft05yEq93KYvh5OY4qVk16euEHocN8
	yWqen8aAG8JpIm+xQeSzDCqSodLY0tlKmNNiBfXHxRSc1Aa1XkxpNY1jN/S1NWh0iAYCpVHqGGkJB
	XOqi5ImCBrleedbvT64t8UJYZDO9G/uHtswpHb+GFMrmDS5bN/7PGbqvmFZCTJby2P4yodxx4WBpx
	KgVND3Pq3dAELxHlIeMNqCEpw67rHksiUuWQunWqz+lmJboNlo97oyTHpJCRZn6kHVfou0TfFP0St
	ZxFr7BpQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPy-00000006KQC-1OON
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000h1-HY; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-001mS9-40; Mon, 14 Oct 2024 13:39:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-00BrES-08;
	Mon, 14 Oct 2024 13:39:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:07 +0200
Message-Id: <20241014113912.2826190-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_123918_651483_78AB767E 
X-CRM114-Status: GOOD (  16.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 08/13] include: import uapi/linux/kernel.h header from Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The UAPI (userspace API) headers in LInux are chiefly meant for
inclusion from userspace, but they are also used from normal kernel
headers to break recursive dependencies.

In order to keep it easier to sync the kernel header code, let's adopt
the same structure in barebox.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/align.h       |  8 +++++---
 include/linux/const.h       | 24 +-----------------------
 include/linux/math.h        |  2 +-
 include/uapi/linux/const.h  | 36 ++++++++++++++++++++++++++++++++++++
 include/uapi/linux/kernel.h |  7 +++++++
 5 files changed, 50 insertions(+), 27 deletions(-)
 create mode 100644 include/uapi/linux/const.h
 create mode 100644 include/uapi/linux/kernel.h

diff --git a/include/linux/align.h b/include/linux/align.h
index 4b373bf73d5b..3b0c60d6e9ae 100644
--- a/include/linux/align.h
+++ b/include/linux/align.h
@@ -2,9 +2,11 @@
 #ifndef _LINUX_ALIGN_H
 #define _LINUX_ALIGN_H
 
-#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
-#define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
-#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+#include <linux/const.h>
+
+#define ALIGN(x, a)		__ALIGN_KERNEL((x), (a))
+#define ALIGN_DOWN(x, a)	__ALIGN_KERNEL((x) - ((a) - 1), (a))
+#define __ALIGN_MASK(x, mask)	__ALIGN_KERNEL_MASK((x), (mask))
 #define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
 #define PTR_ALIGN_DOWN(p, a)	((typeof(p))ALIGN_DOWN((unsigned long)(p), (a)))
 #define PTR_IS_ALIGNED(x, a)	IS_ALIGNED((unsigned long)(x), (a))
diff --git a/include/linux/const.h b/include/linux/const.h
index 77e4f6fd8a2a..90662deeb7ca 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -5,29 +5,7 @@
 #ifndef _LINUX_CONST_H
 #define _LINUX_CONST_H
 
-/* Some constant macros are used in both assembler and
- * C code.  Therefore we cannot annotate them always with
- * 'UL' and other type specifiers unilaterally.  We
- * use the following macros to deal with this.
- *
- * Similarly, _AT() will cast an expression with a type in C, but
- * leave it unchanged in asm.
- */
-
-#ifdef __ASSEMBLY__
-#define _AC(X,Y)	X
-#define _AT(T,X)	X
-#else
-#define __AC(X,Y)	(X##Y)
-#define _AC(X,Y)	__AC(X,Y)
-#define _AT(T,X)	((T)(X))
-#endif
-
-#define _UL(x)		(_AC(x, UL))
-#define _ULL(x)		(_AC(x, ULL))
-
-#define _BITUL(x)	(_UL(1) << (x))
-#define _BITULL(x)	(_ULL(1) << (x))
+#include <uapi/linux/const.h>
 
 #define UL(x)		(_UL(x))
 #define ULL(x)		(_ULL(x))
diff --git a/include/linux/math.h b/include/linux/math.h
index e7c47fa404ab..e09ecaeab67c 100644
--- a/include/linux/math.h
+++ b/include/linux/math.h
@@ -33,7 +33,7 @@
  */
 #define round_down(x, y) ((x) & ~__round_mask(x, y))
 
-#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
+#define DIV_ROUND_UP __KERNEL_DIV_ROUND_UP
 
 #define DIV_ROUND_DOWN_ULL(ll, d) \
 	({ unsigned long long _tmp = (ll); do_div(_tmp, d); _tmp; })
diff --git a/include/uapi/linux/const.h b/include/uapi/linux/const.h
new file mode 100644
index 000000000000..a429381e7ca5
--- /dev/null
+++ b/include/uapi/linux/const.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* const.h: Macros for dealing with constants.  */
+
+#ifndef _UAPI_LINUX_CONST_H
+#define _UAPI_LINUX_CONST_H
+
+/* Some constant macros are used in both assembler and
+ * C code.  Therefore we cannot annotate them always with
+ * 'UL' and other type specifiers unilaterally.  We
+ * use the following macros to deal with this.
+ *
+ * Similarly, _AT() will cast an expression with a type in C, but
+ * leave it unchanged in asm.
+ */
+
+#ifdef __ASSEMBLY__
+#define _AC(X,Y)	X
+#define _AT(T,X)	X
+#else
+#define __AC(X,Y)	(X##Y)
+#define _AC(X,Y)	__AC(X,Y)
+#define _AT(T,X)	((T)(X))
+#endif
+
+#define _UL(x)		(_AC(x, UL))
+#define _ULL(x)		(_AC(x, ULL))
+
+#define _BITUL(x)	(_UL(1) << (x))
+#define _BITULL(x)	(_ULL(1) << (x))
+
+#define __ALIGN_KERNEL(x, a)		__ALIGN_KERNEL_MASK(x, (__typeof__(x))(a) - 1)
+#define __ALIGN_KERNEL_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+
+#define __KERNEL_DIV_ROUND_UP(n, d) (((n) + (d) - 1) / (d))
+
+#endif /* _UAPI_LINUX_CONST_H */
diff --git a/include/uapi/linux/kernel.h b/include/uapi/linux/kernel.h
new file mode 100644
index 000000000000..d3f1a684864e
--- /dev/null
+++ b/include/uapi/linux/kernel.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+#ifndef _UAPI_LINUX_KERNEL_H
+#define _UAPI_LINUX_KERNEL_H
+
+#include <linux/const.h>
+
+#endif /* _UAPI_LINUX_KERNEL_H */
-- 
2.39.5



