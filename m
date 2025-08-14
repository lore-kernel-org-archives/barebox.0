Delivery-date: Thu, 14 Aug 2025 15:51:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN5-000Wdn-11
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:51:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN3-0005Cw-Fz
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hb5LX9DLfrQsb/EaGAksB2Tz1T3lHIeq9MB5KorCdKg=; b=d89yXxVId3faP5SSFusgQ/JpsE
	aaCr3TVA5gqfrxQJUcIlrgo7kOF0EGLZXEHDb5WMjAZkNKJKWbaPZ/T7rJm+32z1Veq2nVJqstl5j
	u2Don3hTf5ZhNoALm68YIGNzdRJn1M8TY53s61PJviaX1TselEcKc5AHhJ1jH+NS4NjFLzalz2MJH
	07zmvLWa4Dbnvlb/6ZXS0BHLc2Rnd1Rc8+TX84PhW5pVLI21EtRgPSQ67m6GGI6jzQ72vmPZvvlKR
	40Q+Ax7vtrZRq7TvR6711qyU2TJMLSPcbFdzcPMmHiGKTIUuULcE0h2Vp6tzgQOs0CO2/GgIAEvgt
	8K2i48jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYMX-0000000H6iF-2Nuk;
	Thu, 14 Aug 2025 13:51:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfe-0000000GvRn-2WgE
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HH-22; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GGn-0c;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-0J;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:47 +0200
Message-Id: <20250814130702.4039241-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060706_802891_EC40BE1A 
X-CRM114-Status: GOOD (  22.71  )
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
Subject: [PATCH RFC 02/17] scripts: include scripts/include for all host tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have one implementation of list.h, so we do not need to
replicate it of Kconfig specially. Make use of scripts/include for all
host tools to align us with what Linux is doing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile               |   6 +-
 scripts/Makefile       |   1 -
 scripts/basic/Makefile |   2 -
 scripts/include/list.h |   7 +++
 scripts/kconfig/list.h | 132 -----------------------------------------
 5 files changed, 11 insertions(+), 137 deletions(-)
 create mode 100644 scripts/include/list.h
 delete mode 100644 scripts/kconfig/list.h

diff --git a/Makefile b/Makefile
index 836176d541c3..209999618e88 100644
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
index 85e081544553..7d6bc5a8ab97 100644
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
index e48754e29924..eeb6a38c5551 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -3,5 +3,3 @@
 # fixdep: used to generate dependency information during build process
 
 hostprogs-always-y	+= fixdep
-
-KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
diff --git a/scripts/include/list.h b/scripts/include/list.h
new file mode 100644
index 000000000000..ced30b635f95
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
index 45cb237ab7ef..000000000000
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
2.39.5



