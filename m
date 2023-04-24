Delivery-date: Mon, 24 Apr 2023 14:03:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pquuz-00FXaz-36
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:03:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pquuy-0002KH-Lq
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:03:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uh1G4+oRI57dHD0olUR8fXvLm2ks+RsNoM8Hcz99OdY=; b=WJd+OWdE0UB8eihaKeCHa2uRGe
	uYjJXUe96NOEhSRAwCCbuHmMJnfuCWEq0x6vf2lH6sUEvTdcPshXMhGf1YmQlQvd6eP33mnOuuiTR
	SLgnGtnqa6CYekWF7czY7aBIu1ZNRWj28uMl0MA32a2jlkc2nfBNLUhOKgsuLnYnmSYhe9FB1keg2
	ux9kkImsaskK40DVB3SsyuB1lcJgZi0FRWwXjZ2mHFeF/7W37Ia7ifaOwy09uIPF4UXY8pye+MHIH
	9cSh7byGOOuMPuLSQTWTgfFKO5w/B0/p2iuGcUevgoj6rcv24P5ZOB8rPdlNr51kwD31PePgY+4Mu
	jPyUH7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqutn-00GFos-2U;
	Mon, 24 Apr 2023 12:02:27 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqutk-00GFo1-0R
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:02:26 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 29E321BF211;
	Mon, 24 Apr 2023 12:02:17 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:02:11 +0200
Message-Id: <20230424120211.115610-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_050224_473383_FA3191C1 
X-CRM114-Status: GOOD (  15.74  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: implement clk_to_clk_hw using container_of_safe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We basically opencode container_of_safe. The kernel implementation of
container_of has also got a better diagnostic for mismatched arguments,
so let's import it and use it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/clk.h          |  3 ++-
 include/linux/container_of.h | 40 ++++++++++++++++++++++++++++++++++++
 include/linux/kernel.h       | 12 +----------
 3 files changed, 43 insertions(+), 12 deletions(-)
 create mode 100644 include/linux/container_of.h

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 29c697a00bd9..c78132d40582 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -13,6 +13,7 @@
 #include <linux/err.h>
 #include <linux/spinlock.h>
 #include <linux/stringify.h>
+#include <linux/container_of.h>
 #include <xfuncs.h>
 
 struct device;
@@ -296,7 +297,7 @@ static inline struct clk *clk_hw_to_clk(const struct clk_hw *hw)
 
 static inline struct clk_hw *clk_to_clk_hw(const struct clk *clk)
 {
-	return IS_ERR(clk) ? ERR_CAST(clk) : (struct clk_hw *)container_of(clk, struct clk_hw, clk);
+	return container_of_safe(clk, struct clk_hw, clk);
 }
 
 struct clk_div_table {
diff --git a/include/linux/container_of.h b/include/linux/container_of.h
new file mode 100644
index 000000000000..2f4944b791b8
--- /dev/null
+++ b/include/linux/container_of.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_CONTAINER_OF_H
+#define _LINUX_CONTAINER_OF_H
+
+#include <linux/build_bug.h>
+#include <linux/err.h>
+
+#define typeof_member(T, m)	typeof(((T*)0)->m)
+
+/**
+ * container_of - cast a member of a structure out to the containing structure
+ * @ptr:	the pointer to the member.
+ * @type:	the type of the container struct this is embedded in.
+ * @member:	the name of the member within the struct.
+ *
+ */
+#define container_of(ptr, type, member) ({				\
+	void *__mptr = (void *)(ptr);					\
+	static_assert(__same_type(*(ptr), ((type *)0)->member) ||	\
+		      __same_type(*(ptr), void),			\
+		      "pointer type mismatch in container_of()");	\
+	((type *)(__mptr - offsetof(type, member))); })
+
+/**
+ * container_of_safe - cast a member of a structure out to the containing structure
+ * @ptr:	the pointer to the member.
+ * @type:	the type of the container struct this is embedded in.
+ * @member:	the name of the member within the struct.
+ *
+ * If IS_ERR_OR_NULL(ptr), ptr is returned unchanged.
+ */
+#define container_of_safe(ptr, type, member) ({				\
+	void *__mptr = (void *)(ptr);					\
+	static_assert(__same_type(*(ptr), ((type *)0)->member) ||	\
+		      __same_type(*(ptr), void),			\
+		      "pointer type mismatch in container_of_safe()");	\
+	IS_ERR_OR_NULL(__mptr) ? ERR_CAST(__mptr) :			\
+		((type *)(__mptr - offsetof(type, member))); })
+
+#endif	/* _LINUX_CONTAINER_OF_H */
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 44fc02df0bf9..0eb7bd21fe93 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -7,6 +7,7 @@
 #include <linux/barebox-wrapper.h>
 #include <linux/limits.h>
 #include <linux/math64.h>
+#include <linux/container_of.h>
 
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
@@ -256,17 +257,6 @@ extern int hex_to_bin(char ch);
 extern int __must_check hex2bin(u8 *dst, const char *src, size_t count);
 extern char *bin2hex(char *dst, const void *src, size_t count);
 
-/**
- * container_of - cast a member of a structure out to the containing structure
- * @ptr:	the pointer to the member.
- * @type:	the type of the container struct this is embedded in.
- * @member:	the name of the member within the struct.
- *
- */
-#define container_of(ptr, type, member) ({			\
-	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
-	(type *)( (char *)__mptr - offsetof(type,member) );})
-
 /*
  * swap - swap value of @a and @b
  */
-- 
2.38.4



