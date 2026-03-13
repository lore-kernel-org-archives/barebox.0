Delivery-date: Fri, 13 Mar 2026 14:33:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eB-000DIR-2I
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:47 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12du-0007wY-LF
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=40utOfHWyDpPHu1jVQAfF7ew+qHfLyh8mJqiJAwY8Q4=; b=SX7yV2A3eUsJ4C3/Q4sll5xuqS
	ZYsOiBKmzTRz3BJJhjyBEfyO87Y+CUApOITRw30sbLyLPBhfk6AFKR2ofFhPbAF0X7B1G6OMEG+w4
	sPHeVx4aDb7fdySb96ihJPWilRpvK+yrBUvJ0ZrZfWtWWzHblF8j56YfoWr+SywUmkV2yDhZPI+kU
	4oyE8/VVHS82+L7Scj1TgJGptqv194GAYxwvLtZPOpdV7OnsozXdO+i3qXY80ljz2vMCbw8HeuvKg
	+CYQtlMWLFpz9TxVd1msKascqBq3RZjv1GNG61cv6SYKOrVDj1459XIRRGuIaymGPKpgvBqueGSCd
	ztpADlqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dA-00000000Fah-26vG;
	Fri, 13 Mar 2026 13:32:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FWf-0ONu
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=40utOfHWyDpPHu1jVQAfF7ew+qHfLyh8mJqiJAwY8Q4=; b=JefeB2fp/dZsUQ4ibS1GMvX9Lt
	aGpC2k+NrE/iVX363yjaMHKTL8vBrWyqaro1Q7mCI8rCqJY/xmBm9sqhzAkbm7bPZYqU6gDZ/Jbjs
	f2rHPKW1o/jjP51mKxAihBleg6e5a9s5NN9ePDsTkB2My1/K1ObHyySNscf+kUrAIhkeYXBp8VXKd
	UKHfuDF5H0OTpxGsoEuSgHc0afXRocw7syM9RVKA8GOZdfnVyt76Wnn5dYA/ffYYxGS0gW+sppBD1
	zhDKS5iNjtD7A7d8bqMyWtWgD8C1u7iTWRWtkCXQBgAO2+TI6iGy0f+xJB79lQzvHaiASEMJkK2iS
	0DOHcM9w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cz-00000003OSj-0UHN
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006pA-LA; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005TB-1P;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-25bR;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:34 +0100
Message-ID: <20260313132631.2257573-51-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_135137_6AABBC64 
X-CRM114-Status: GOOD (  16.83  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 50/58] scripts: include: break dependency of list.h on kernel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already got rid of this dependency for the normal barebox build, so
break it up for the scripts/ build as well to avoid this nconf warning
on some distros:

  In file included from scripts/kconfig/nconf.c:15:
  scripts/kconfig/nconf.h:25:9: warning: ‘max’ redefined
     25 | #define max(a, b) ({\
        |         ^~~
  In file included from ./barebox/scripts/include/linux/list.h:5,
                   from ./barebox/scripts/include/list.h:5,
                   from scripts/kconfig/expr.h:15,
                   from scripts/kconfig/lkc.h:13,
                   from scripts/kconfig/nconf.c:14:
  ./barebox/scripts/include/linux/kernel.h:39:9: note: this is the location of the previous definition
     39 | #define max(x, y) ({                            \
        |         ^~~
  scripts/kconfig/nconf.h:30:9: warning: ‘min’ redefined

(cherry picked from commit a904368d55cfed72774dc42e544c9275f0fe851f)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260205143043.2831511-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/include/linux/container_of.h | 18 ++++++++++++++++++
 scripts/include/linux/kernel.h       | 14 +-------------
 scripts/include/linux/list.h         |  2 +-
 3 files changed, 20 insertions(+), 14 deletions(-)
 create mode 100644 scripts/include/linux/container_of.h

diff --git a/scripts/include/linux/container_of.h b/scripts/include/linux/container_of.h
new file mode 100644
index 000000000000..ca0ec95667b9
--- /dev/null
+++ b/scripts/include/linux/container_of.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _SCRIPTS_LINUX_CONTAINER_OF_H
+#define _SCRIPTS_LINUX_CONTAINER_OF_H
+
+#ifndef container_of
+/**
+ * container_of - cast a member of a structure out to the containing structure
+ * @ptr:	the pointer to the member.
+ * @type:	the type of the container struct this is embedded in.
+ * @member:	the name of the member within the struct.
+ *
+ */
+#define container_of(ptr, type, member) ({			\
+	const typeof(((type *)0)->member) * __mptr = (ptr);	\
+	(type *)((char *)__mptr - offsetof(type, member)); })
+#endif
+
+#endif	/* _SCRIPTS_LINUX_CONTAINER_OF_H */
diff --git a/scripts/include/linux/kernel.h b/scripts/include/linux/kernel.h
index f3083ff3545d..672f681931ec 100644
--- a/scripts/include/linux/kernel.h
+++ b/scripts/include/linux/kernel.h
@@ -5,6 +5,7 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <assert.h>
+#include <linux/container_of.h>
 
 #define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
@@ -20,19 +21,6 @@
 #define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
 #endif
 
-#ifndef container_of
-/**
- * container_of - cast a member of a structure out to the containing structure
- * @ptr:	the pointer to the member.
- * @type:	the type of the container struct this is embedded in.
- * @member:	the name of the member within the struct.
- *
- */
-#define container_of(ptr, type, member) ({			\
-	const typeof(((type *)0)->member) * __mptr = (ptr);	\
-	(type *)((char *)__mptr - offsetof(type, member)); })
-#endif
-
 #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:-!!(e); }))
 
 #ifndef max
diff --git a/scripts/include/linux/list.h b/scripts/include/linux/list.h
index d6b24f6b744d..d10e44469974 100644
--- a/scripts/include/linux/list.h
+++ b/scripts/include/linux/list.h
@@ -2,8 +2,8 @@
 #define __TOOLS_LINUX_LIST_H
 
 #include <linux/types.h>
-#include <linux/kernel.h>
 #include <linux/compiler.h>
+#include <linux/container_of.h>
 
 /*
  * Simple doubly linked list implementation.
-- 
2.47.3



