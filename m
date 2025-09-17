Delivery-date: Wed, 17 Sep 2025 15:54:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbm-0045l5-0L
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 15:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uysbj-0006W5-UV
	for lore@pengutronix.de; Wed, 17 Sep 2025 15:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J5iaNiI117tPFGOyW3xFJ+vad/wmGRZ9742szV/zP3Y=; b=Y6zE/u1UMAkG6Ala6+65o6tKq6
	jVRq6J9a04kWxN6iSxOOXeoSbABCDIMVU62X4HBu898WGDiUHDZ2AxYjejqyRRwpDKGJ2WWmgMokG
	QqGvLIe4vHLcXrhDvGUfRz60ekB1XZ/s9yUnmi71U04gLkarBJibt2nk89iLUpv3J8GCPRVpgAxXj
	JlzwQQWGMoxdL3OouDHBwYoBXvRjjE6QrF6VqjzLlz5Bj++FwnUN+92kRcF+q+RJJzjPub5jnCVma
	q08AWT/04bFdAJi6APkmLzfuTm/vgE6uLBXyLjPosVgKqPQu93lLxIauUgCIuU89i9nlqqzKEQF3H
	n4EFEjpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbI-0000000BsjK-1MiA;
	Wed, 17 Sep 2025 13:53:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uysbD-0000000BsgV-0A9z
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 13:53:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbB-0006AX-CN; Wed, 17 Sep 2025 15:53:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-001luN-2e;
	Wed, 17 Sep 2025 15:53:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-2sKB;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-2-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=7088;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=y9Gkw3OdRo8324n0nWgAHXjC5rAN41upUPbOmVNhoik=;
 b=AwTukpZ3RVd4KtxcjG4REjyU4Bft29g8DAuVE1d0dawQZ7WTprypyMQ+ITNheDhM5X5rSflwl
 gI2sTzhQ6RVAtXvTElUpQns8GPYgxgoEABQAv2lBOioNPks9Es56AxN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_065331_254645_0FBEF272 
X-CRM114-Status: GOOD (  22.04  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/24] scripts: include scripts/include for all host
 tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already have one implementation of list.h, so we do not need to
replicate it of Kconfig specially. Make use of scripts/include for all
host tools to align us with what Linux is doing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile               |   6 ++-
 scripts/Makefile       |   1 -
 scripts/basic/Makefile |   2 -
 scripts/include/list.h |   7 +++
 scripts/kconfig/list.h | 132 -------------------------------------------------
 5 files changed, 11 insertions(+), 137 deletions(-)

diff --git a/Makefile b/Makefile
index 169b750fe15199913e3169529cdbfa3d47febf69..19d860db1208c9e3a1ac196dcf1cfad38379288a 100644
--- a/Makefile
+++ b/Makefile
@@ -410,8 +410,10 @@ KBUILD_USERHOSTCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
 KBUILD_USERCFLAGS  := $(KBUILD_USERHOSTCFLAGS) $(USERCFLAGS)
 KBUILD_USERLDFLAGS := $(USERLDFLAGS)
 
-KBUILD_HOSTCFLAGS   := $(KBUILD_USERHOSTCFLAGS) $(HOST_LFS_CFLAGS) $(HOSTCFLAGS)
-KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
+KBUILD_HOSTCFLAGS   := $(KBUILD_USERHOSTCFLAGS) $(HOST_LFS_CFLAGS) \
+		       $(HOSTCFLAGS) -I $(srctree)/scripts/include
+KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS) \
+		       -I $(srctree)/scripts/include
 KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
diff --git a/scripts/Makefile b/scripts/Makefile
index 85e0815445537fee8593515f6b892ed761154ed2..7d6bc5a8ab9798dfaf6583d5d09ae63aa98f43ac 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -29,7 +29,6 @@ hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
 hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
 HOSTCFLAGS_rkimage.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_rkimage = `$(PKG_CONFIG) --libs openssl`
-KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTCFLAGS_mxsimage.o = `$(PKG_CONFIG) --cflags openssl`
 HOSTLDLIBS_mxsimage  = `$(PKG_CONFIG) --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `$(PKG_CONFIG) --cflags libusb-1.0`
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index e48754e29924117ec6b2f159cfdf8e76ef77fa29..eeb6a38c5551516bc3b1539e5f236ff952fea394 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -3,5 +3,3 @@
 # fixdep: used to generate dependency information during build process
 
 hostprogs-always-y	+= fixdep
-
-KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
diff --git a/scripts/include/list.h b/scripts/include/list.h
new file mode 100644
index 0000000000000000000000000000000000000000..ced30b635f95c7bbf2e123ddeb1a093099ce9650
--- /dev/null
+++ b/scripts/include/list.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef LIST_H
+#define LIST_H
+
+#include "linux/list.h"
+
+#endif
diff --git a/scripts/kconfig/list.h b/scripts/kconfig/list.h
deleted file mode 100644
index 45cb237ab7ef7a9f17779647220da6a30afd06fc..0000000000000000000000000000000000000000
--- a/scripts/kconfig/list.h
+++ /dev/null
@@ -1,132 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef LIST_H
-#define LIST_H
-
-/*
- * Copied from include/linux/...
- */
-
-#undef offsetof
-#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
-
-/**
- * container_of - cast a member of a structure out to the containing structure
- * @ptr:        the pointer to the member.
- * @type:       the type of the container struct this is embedded in.
- * @member:     the name of the member within the struct.
- *
- */
-#define container_of(ptr, type, member) ({                      \
-	const typeof( ((type *)0)->member ) *__mptr = (ptr);    \
-	(type *)( (char *)__mptr - offsetof(type,member) );})
-
-
-struct list_head {
-	struct list_head *next, *prev;
-};
-
-
-#define LIST_HEAD_INIT(name) { &(name), &(name) }
-
-#define LIST_HEAD(name) \
-	struct list_head name = LIST_HEAD_INIT(name)
-
-/**
- * list_entry - get the struct for this entry
- * @ptr:	the &struct list_head pointer.
- * @type:	the type of the struct this is embedded in.
- * @member:	the name of the list_head within the struct.
- */
-#define list_entry(ptr, type, member) \
-	container_of(ptr, type, member)
-
-/**
- * list_for_each_entry	-	iterate over list of given type
- * @pos:	the type * to use as a loop cursor.
- * @head:	the head for your list.
- * @member:	the name of the list_head within the struct.
- */
-#define list_for_each_entry(pos, head, member)				\
-	for (pos = list_entry((head)->next, typeof(*pos), member);	\
-	     &pos->member != (head); 	\
-	     pos = list_entry(pos->member.next, typeof(*pos), member))
-
-/**
- * list_for_each_entry_safe - iterate over list of given type safe against removal of list entry
- * @pos:	the type * to use as a loop cursor.
- * @n:		another type * to use as temporary storage
- * @head:	the head for your list.
- * @member:	the name of the list_head within the struct.
- */
-#define list_for_each_entry_safe(pos, n, head, member)			\
-	for (pos = list_entry((head)->next, typeof(*pos), member),	\
-		n = list_entry(pos->member.next, typeof(*pos), member);	\
-	     &pos->member != (head);					\
-	     pos = n, n = list_entry(n->member.next, typeof(*n), member))
-
-/**
- * list_empty - tests whether a list is empty
- * @head: the list to test.
- */
-static inline int list_empty(const struct list_head *head)
-{
-	return head->next == head;
-}
-
-/*
- * Insert a new entry between two known consecutive entries.
- *
- * This is only for internal list manipulation where we know
- * the prev/next entries already!
- */
-static inline void __list_add(struct list_head *_new,
-			      struct list_head *prev,
-			      struct list_head *next)
-{
-	next->prev = _new;
-	_new->next = next;
-	_new->prev = prev;
-	prev->next = _new;
-}
-
-/**
- * list_add_tail - add a new entry
- * @new: new entry to be added
- * @head: list head to add it before
- *
- * Insert a new entry before the specified head.
- * This is useful for implementing queues.
- */
-static inline void list_add_tail(struct list_head *_new, struct list_head *head)
-{
-	__list_add(_new, head->prev, head);
-}
-
-/*
- * Delete a list entry by making the prev/next entries
- * point to each other.
- *
- * This is only for internal list manipulation where we know
- * the prev/next entries already!
- */
-static inline void __list_del(struct list_head *prev, struct list_head *next)
-{
-	next->prev = prev;
-	prev->next = next;
-}
-
-#define LIST_POISON1  ((void *) 0x00100100)
-#define LIST_POISON2  ((void *) 0x00200200)
-/**
- * list_del - deletes entry from list.
- * @entry: the element to delete from the list.
- * Note: list_empty() on entry does not return true after this, the entry is
- * in an undefined state.
- */
-static inline void list_del(struct list_head *entry)
-{
-	__list_del(entry->prev, entry->next);
-	entry->next = (struct list_head*)LIST_POISON1;
-	entry->prev = (struct list_head*)LIST_POISON2;
-}
-#endif

-- 
2.47.3



