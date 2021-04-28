Delivery-date: Wed, 28 Apr 2021 13:23:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbiHk-000824-Vc
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 13:23:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbiHk-0002h2-47
	for lore@pengutronix.de; Wed, 28 Apr 2021 13:23:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lx+qFxQbiy6r4lUz+EPXQLIs23giqTqjdOpw05OCGeo=; b=kSOsEWiOozd+TemHxpZATAddy
	x3Sac3lTmsm+nuDG19i6ktD19z/0H6UnUDm4iY7IIe4PifiTExZIWxnlmSHRpYPcapJX1uA1jwMTl
	mEvMItHPBJtYzzLZtCxCbtipKZANOvj/4gJuc4ykyg80fKlNfgFvKGF4dLCFaWQlMouG9ecUc4+KB
	KbppU3gWuH3FWdIt8S67bS9RTfvQcMLLDDQRIx9MUdYM69im3Leie9gP9Sz9Q2BxauNbbYsOtyCrJ
	6Iy9/6wDveYmAnrcsSwc3fQ00Z/3sCNHf/zYRfRV/T8BCosI2cYDLNy8gY62SbHNv/KMQkPKjG9DI
	Pc6w/Wqmw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbiGe-003N5n-Aa; Wed, 28 Apr 2021 11:22:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbiGQ-003N5E-08
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 11:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=CJ1607FQSaACHZ+qM2U5P1wx+JfHMW9iofnRTgE18ak=; b=K64EZmOQUUKcnbbqOcmPeuPoVv
 CEG0IHHPgwCxhb4NNL6ZXiGf193/ushEH7Qxj6uSq+/ivtDxhCiqzZGbO4ijE6KpUpzUf0TDiPWOc
 9HCiz/oVQ8NkWKDmkZNpGKQBCSL38FG1oCtrGTct5n3Ah1C0Dmq9jaYO9aTEEJHI8b2XdoLSzBY0+
 BabnMHtEAV3T0pkxiwILGbVrZLepeaV7HdLdzLkjckTGAEhFyGd0BZG2fsFjJXquZbFu5Tx8hj+po
 2zvlCVNMHqCyzBqbdkIWt4wYJVGiZAldYYsSXuQAtcyspj52p2rXqUVPUt/ln3algZ3ERe8QduCvp
 uTHF3fEw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbiGN-00HNmy-7T
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 11:21:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lbiGL-0002cy-MU
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 13:21:49 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lbiGL-0003sA-E3
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 13:21:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 28 Apr 2021 13:21:43 +0200
Message-Id: <20210428112143.7945-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210428102821.2287-1-m.felsch@pengutronix.de>
References: <20210428102821.2287-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_042151_295190_17421ABA 
X-CRM114-Status: GOOD (  15.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fixup! common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
Hi,

this is the reworked version with Ahmad's review feedback.

Regards,
  Marco

 common/deep-probe.c               | 38 +++++++++++++++++++++++++++++--
 include/asm-generic/barebox.lds.h | 10 +-------
 include/deep-probe.h              | 31 +++++++++++++------------
 3 files changed, 53 insertions(+), 26 deletions(-)

diff --git a/common/deep-probe.c b/common/deep-probe.c
index 9fc67f170c..ef927be02f 100644
--- a/common/deep-probe.c
+++ b/common/deep-probe.c
@@ -2,8 +2,16 @@
 
 #include <common.h>
 #include <deep-probe.h>
+#include <linux/list.h>
 #include <of.h>
 
+struct deep_probe_entry {
+	struct list_head entry;
+	const char *compatible;
+};
+
+static LIST_HEAD(boards_list);
+
 enum deep_probe_state {
 	DEEP_PROBE_UNKONWN = -1,
 	DEEP_PROBE_NOT_SUPPORTED,
@@ -12,6 +20,33 @@ enum deep_probe_state {
 
 static enum deep_probe_state boardstate = DEEP_PROBE_UNKONWN;
 
+int deep_probe_enable_board(const struct driver_d *board_driver, const char *compatible)
+{
+	struct deep_probe_entry *new;
+
+	if (!board_driver && !compatible)
+		return -EINVAL;
+
+	if (board_driver) {
+		const struct of_device_id *of_device_ids = board_driver->of_compatible;
+
+		for (; of_device_ids->compatible; of_device_ids++) {
+			new = xzalloc(sizeof(*new));
+			new->compatible = of_device_ids->compatible;
+			list_add(&new->entry, &boards_list);
+		}
+	}
+
+	if (compatible) {
+		new = xzalloc(sizeof(*new));
+		new->compatible = compatible;
+		list_add(&new->entry, &boards_list);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(deep_probe_enable_board);
+
 bool deep_probe_is_supported(void)
 {
 	struct deep_probe_entry *board;
@@ -20,8 +55,7 @@ bool deep_probe_is_supported(void)
 		return boardstate;
 
 	/* determine boardstate */
-	for (board = &__barebox_deep_probe_start;
-	     board != &__barebox_deep_probe_end; board++) {
+	list_for_each_entry(board, &boards_list, entry) {
 		if (of_machine_is_compatible(board->compatible)) {
 			boardstate = DEEP_PROBE_SUPPORTED;
 			return true;
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c5f9d97547..a7d32160d1 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -114,13 +114,6 @@
 	KEEP(*(.rsa_keys.rodata.*));		\
 	__rsa_keys_end = .;			\
 
-#define BAREBOX_DEEP_PROBE			\
-	STRUCT_ALIGN();				\
-	__barebox_deep_probe_start = .;		\
-	KEEP(*(SORT_BY_NAME(.barebox_deep_probe*)))	\
-	__barebox_deep_probe_end = .;
-
-
 #ifdef CONFIG_CONSTRUCTORS
 #define KERNEL_CTORS()  . = ALIGN(8);                      \
 			__ctors_start = .;                 \
@@ -143,8 +136,7 @@
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
 	BAREBOX_RSA_KEYS			\
-	BAREBOX_PCI_FIXUP			\
-	BAREBOX_DEEP_PROBE
+	BAREBOX_PCI_FIXUP
 
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
diff --git a/include/deep-probe.h b/include/deep-probe.h
index a646c10340..327e02071e 100644
--- a/include/deep-probe.h
+++ b/include/deep-probe.h
@@ -2,25 +2,26 @@
 #ifndef __DEEP_PROBE_H
 #define __DEEP_PROBE_H
 
-#include <linux/stringify.h>
-#include <linux/types.h>
-
-struct deep_probe_entry {
-	const char *compatible;
-};
+struct driver_d;
 
 bool deep_probe_is_supported(void);
+int deep_probe_enable_board(const struct driver_d *board_driver, const char *compatible);
 
-extern struct deep_probe_entry __barebox_deep_probe_start;
-extern struct deep_probe_entry __barebox_deep_probe_end;
+#define deep_probe_enable_board_driver(drv)			\
+	static int __init drv##deep_probe_init(void)		\
+	{							\
+		return deep_probe_enable_board(&drv, NULL);	\
+	}							\
+	pure_initcall(drv##deep_probe_init)
 
-#define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_compatible)			\
-	static const struct deep_probe_entry _entry			\
-	__attribute__ ((used,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
-		.compatible = _compatible,				\
-	}
+#define _deep_probe_enable_compatible(id, compatible)		\
+	static int __init id(void)				\
+	{							\
+		return deep_probe_enable_board(NULL, compatible);\
+	}							\
+	pure_initcall(id)
 
-#define BAREBOX_DEEP_PROBE_ENABLE(_compatible)	\
-	__BAREBOX_DEEP_PROBE_ENABLE(__UNIQUE_ID(deepprobe),_compatible)
+#define deep_probe_enable_board_compatible(compatible)		\
+	_deep_probe_enable_compatible(__PASTE(__UNIQUE_ID(deep_probe), _init), compatible)
 
 #endif /* __DEEP_PROBE_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

