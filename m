Delivery-date: Wed, 03 Apr 2024 09:24:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rruyn-005RPZ-1E
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 09:24:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rruym-0003LA-MZ
	for lore@pengutronix.de; Wed, 03 Apr 2024 09:24:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hW4i3/06d3/YTADUuygXoCmJkls0LcuFWqFY2uu7gk0=; b=DFpg0KGpbpHm9QBYIAJ9Vr/7uy
	5fLVWePZr0FNdwyAwlG3FkpApKt3q8Jtxx8oL5fcmN5RPLcJUE7hRLSmNV7cKMTLNJ1CHhHDoRHCf
	3zSY+IczfSYL1l3ZvJ2WMnm02xaVJbaHtzHzIIwGtcHuNFxkxAuJs6nijBIdeY93zHJOnrZGdU3Lf
	wg0Lf7HTYByuQ5pKxfAfCoJUQa7d8ob0AbBrjSSTKqtT1dl9l3GTymhTxbYWMnll6cbWvy6Gso9yz
	XlvvaxcBiYbHQeg0XBP1hVdwZJTBJ2t6IWWu+jHvBJbUxcSszyAXSguQoOKFaLhpeNGbumo89MY9w
	PudQ/Nbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rruyD-0000000EULa-41LY;
	Wed, 03 Apr 2024 07:23:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rruy9-0000000EUHd-0xbi
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 07:23:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rruy6-0002ty-ID; Wed, 03 Apr 2024 09:23:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rruy6-00A8GL-5h; Wed, 03 Apr 2024 09:23:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rruy6-00BIuc-0G;
	Wed, 03 Apr 2024 09:23:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Apr 2024 09:23:31 +0200
Message-Id: <20240403072332.2694292-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_002337_382869_134FB3E4 
X-CRM114-Status: GOOD (  18.43  )
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
Subject: [PATCH 1/2] include: kconfig.h: move __is_defined definition into new header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we run the preprocessor over device trees before compiling them,
we don't define the Kconfig symbols and including <generated/autoconf.h>
would fail.

The file defines __is_defined however, which can be useful for other
macros that are either defined to 1 or undefined like the macros we
define for device tree fragments to indicate which file they are being
appended to. To make it possible to use __is_defined from fragments,
move the kconfig-independent part out of <linux/kconfig.h> into
<linux/is_defined.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/is_defined.h | 37 +++++++++++++++++++++++++++++++++++++
 include/linux/kconfig.h    | 33 +--------------------------------
 2 files changed, 38 insertions(+), 32 deletions(-)
 create mode 100644 include/linux/is_defined.h

diff --git a/include/linux/is_defined.h b/include/linux/is_defined.h
new file mode 100644
index 000000000000..d68f8e877f9b
--- /dev/null
+++ b/include/linux/is_defined.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_IS_DEFINED_H_
+#define __LINUX_IS_DEFINED_H_
+
+#define __ARG_PLACEHOLDER_1 0,
+#define __take_second_arg(__ignored, val, ...) val
+
+/*
+ * The use of "&&" / "||" is limited in certain expressions.
+ * The following enable to calculate "and" / "or" with macro expansion only.
+ */
+#define __and(x, y)			___and(x, y)
+#define ___and(x, y)			____and(__ARG_PLACEHOLDER_##x, y)
+#define ____and(arg1_or_junk, y)	__take_second_arg(arg1_or_junk y, 0)
+
+#define __or(x, y)			___or(x, y)
+#define ___or(x, y)			____or(__ARG_PLACEHOLDER_##x, y)
+#define ____or(arg1_or_junk, y)		__take_second_arg(arg1_or_junk 1, y)
+
+/*
+ * Helper macros to use CONFIG_ options in C/CPP expressions. Note that
+ * these only work with boolean and tristate options.
+ */
+
+/*
+ * Getting something that works in C and CPP for an arg that may or may
+ * not be defined is tricky.  Here, if we have "#define CONFIG_BOOGER 1"
+ * we match on the placeholder define, insert the "0," for arg1 and generate
+ * the triplet (0, 1, 0).  Then the last step cherry picks the 2nd arg (a one).
+ * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and when
+ * the last step cherry picks the 2nd arg, we get a zero.
+ */
+#define __is_defined(x)			___is_defined(x)
+#define ___is_defined(val)		____is_defined(__ARG_PLACEHOLDER_##val)
+#define ____is_defined(arg1_or_junk)	__take_second_arg(arg1_or_junk 1, 0)
+
+#endif
diff --git a/include/linux/kconfig.h b/include/linux/kconfig.h
index fec5076eda91..58f68adbbadf 100644
--- a/include/linux/kconfig.h
+++ b/include/linux/kconfig.h
@@ -3,38 +3,7 @@
 #define __LINUX_KCONFIG_H
 
 #include <generated/autoconf.h>
-
-#define __ARG_PLACEHOLDER_1 0,
-#define __take_second_arg(__ignored, val, ...) val
-
-/*
- * The use of "&&" / "||" is limited in certain expressions.
- * The following enable to calculate "and" / "or" with macro expansion only.
- */
-#define __and(x, y)			___and(x, y)
-#define ___and(x, y)			____and(__ARG_PLACEHOLDER_##x, y)
-#define ____and(arg1_or_junk, y)	__take_second_arg(arg1_or_junk y, 0)
-
-#define __or(x, y)			___or(x, y)
-#define ___or(x, y)			____or(__ARG_PLACEHOLDER_##x, y)
-#define ____or(arg1_or_junk, y)		__take_second_arg(arg1_or_junk 1, y)
-
-/*
- * Helper macros to use CONFIG_ options in C/CPP expressions. Note that
- * these only work with boolean and tristate options.
- */
-
-/*
- * Getting something that works in C and CPP for an arg that may or may
- * not be defined is tricky.  Here, if we have "#define CONFIG_BOOGER 1"
- * we match on the placeholder define, insert the "0," for arg1 and generate
- * the triplet (0, 1, 0).  Then the last step cherry picks the 2nd arg (a one).
- * When CONFIG_BOOGER is not defined, we generate a (... 1, 0) pair, and when
- * the last step cherry picks the 2nd arg, we get a zero.
- */
-#define __is_defined(x)			___is_defined(x)
-#define ___is_defined(val)		____is_defined(__ARG_PLACEHOLDER_##val)
-#define ____is_defined(arg1_or_junk)	__take_second_arg(arg1_or_junk 1, 0)
+#include <linux/is_defined.h>
 
 /*
  * IS_BUILTIN(CONFIG_FOO) evaluates to 1 if CONFIG_FOO is set to 'y', 0
-- 
2.39.2



