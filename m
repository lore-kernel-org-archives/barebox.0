Delivery-date: Thu, 05 Feb 2026 15:31:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo0OE-0099ME-29
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 15:31:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo0OD-0003P9-Jm
	for lore@pengutronix.de; Thu, 05 Feb 2026 15:31:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t+loIoZ1zP4q1z544u0mPZs3IFfIjKlTTlGT+0nGjgw=; b=TAWA3lMGz4HW/iIWq4YmVEC5df
	y6j8pTN1m/g3/h93J1uPRYrFly7LqPPk570KA8Hw53Afma9Mk4PuKQlCjvmo4CKCSEEKiM8M7R8pf
	2lomu+SDDUMI+njlOAW3I5QVroPdu8TKiTcKYGwQBDQPZ5HBRylf4rEe3BKSRyWZusVSEdaJbBblD
	8ekFUGNIPiMrAeDYkkYFpeDIRCECVO+efKUN1rZ/nmyEFFFLusMz6Bvf0ltYmWkBcxSVA0zOXc/xm
	niJkcjd5WuU27q64gXlufIhto3zpChxEcOvgv8JqvKIrnqvgtUXwhdKTyIxmim9Jvr0bsTeKupvmp
	dRClYUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo0Nf-0000000A1g0-1to9;
	Thu, 05 Feb 2026 14:30:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo0Nb-0000000A1fJ-3MtY
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 14:30:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo0NY-0003I9-8L; Thu, 05 Feb 2026 15:30:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo0NY-004Fm9-2O;
	Thu, 05 Feb 2026 15:30:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo0NX-0000000Bsbr-45Um;
	Thu, 05 Feb 2026 15:30:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Feb 2026 15:30:42 +0100
Message-ID: <20260205143043.2831511-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_063047_844425_D82CE661 
X-CRM114-Status: GOOD (  17.02  )
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
Subject: [PATCH] scripts: include: break dependency of list.h on kernel.h
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

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



