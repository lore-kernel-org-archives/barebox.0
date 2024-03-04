Delivery-date: Mon, 04 Mar 2024 20:07:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeW-008dO9-1D
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:07:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDeU-0002Gn-R0
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:07:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p4X8JjvEY2g4bgLp/nCbRWVLHxmxgHGtYeKP3TBTB5I=; b=WcOx9OoEgacVHH3kMITUmV7Klx
	sIWCYTZCnMsEMHXbUYnV3MCrXD8Q/+lK/pN1u/DTpTMFr4wTzbic2OT2vzBhIY7KktfAmEgMtNqQq
	Ycq6KNaXIXrRQhxYEV08zqfEtnM3a7MkBggXTG57zTYEUkIbDaLzAiajWPE9bg5bMO+y9OP60zbRF
	1GuY2Y07bvVZ/D6MToj0C05sD42YG4SR4669DBzh+3pN9c1y2hYMvBQF8XHjSl7zKzi8dZ335iue2
	PAYtvSmQiRnCh1JKkzkFyAsDN1SaQyImmNyQwH7DyxCiYMxD6tfVH5L5+ZN0kJJ5Bz2vOq7WrYjiW
	xuwMMBXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDdr-0000000AKuI-2w90;
	Mon, 04 Mar 2024 19:06:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaT-0000000AIUS-3QWx
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=p4X8JjvEY2g4bgLp/nCbRWVLHxmxgHGtYeKP3TBTB5I=; b=W9h4i3Qdy7/DCl6e3ovnvk2INX
	t7WM1Rhp2TPZO/6H5aizNQgBWz1XOwH0JCbT/mELKDOBxiwpI5qQoyG2rbASsHkyp7ZsO2k3PG/Xs
	d/BbyJg2shg6GlwLrD4OXq/W3Hz8lNIPxuozqjUe2cXvFqtFQbqG4ZikN3yNpdB5SaswDDK9sCEub
	6v4xmLHJ04EDDw4Z1tL3WfhWWVT3dlfnZtwGbL6mnlt6w7TdT5DbUSfa9zcC6eRJDVpLVa/crzQ9h
	rjNMHbOOXlST6IpjF//UCm2qsZCvie9uBbyL/srBL3bMbsGTdR6ZYFfcF1qBteQaO6Qh8d/yV591R
	tZNByJaA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaN-000000051vl-035o
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-000615-4P; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PHH-MN; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-2r;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:48 +0100
Message-Id: <20240304190038.3486881-64-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190251_191916_625C911D 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 063/113] ARM: make board data definitions accessible to other architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct barebox_arm_boarddata is a way for PBL to handover a machine
number instead of a FDT. We will reuse this mechanism to hand over EFI
image handle and system table in a later commit, so prepare for that by
moving it to a central location and adjust the naming.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 30 +++++-----------------
 include/boarddata.h                | 41 ++++++++++++++++++++++++++++++
 2 files changed, 48 insertions(+), 23 deletions(-)
 create mode 100644 include/boarddata.h

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 361edcf37eef..7a7e5a240317 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -23,34 +23,14 @@
 #include <asm/sections.h>
 #include <asm/reloc.h>
 #include <linux/stringify.h>
+#include <boarddata.h>
 
 #define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
 
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
 
-struct barebox_arm_boarddata {
-#define BAREBOX_ARM_BOARDDATA_MAGIC	0xabe742c3
-	u32 magic;
-	u32 machine; /* machine number to pass to barebox. This may or may
-		      * not be a ARM machine number registered on arm.linux.org.uk.
-		      * It must only be unique across barebox. Please use a number
-		      * that do not potientially clashes with registered machines,
-		      * i.e. use a number > 0x10000.
-		      */
-};
-
-/*
- * Create a boarddata struct at given address. Suitable to be passed
- * as boarddata to barebox_arm_entry(). The machine can be retrieved
- * later with barebox_arm_machine().
- */
-static inline void boarddata_create(void *adr, u32 machine)
-{
-	struct barebox_arm_boarddata *bd = adr;
-
-	bd->magic = BAREBOX_ARM_BOARDDATA_MAGIC;
-	bd->machine = machine;
-}
+#define barebox_arm_boarddata		barebox_boarddata
+#define BAREBOX_ARM_BOARDDATA_MAGIC	BAREBOX_BOARDDATA_MAGIC
 
 u32 barebox_arm_machine(void);
 
@@ -58,6 +38,10 @@ unsigned long arm_mem_ramoops_get(void);
 unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
+struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
+
+#define barebox_arm_get_boarddata barebox_get_boarddata
+
 #if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
 void arm_fixup_vectors(void);
 #else
diff --git a/include/boarddata.h b/include/boarddata.h
new file mode 100644
index 000000000000..68ad0d146495
--- /dev/null
+++ b/include/boarddata.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#ifndef _BAREBOX_BOARDDATA_H_
+#define _BAREBOX_BOARDDATA_H_
+
+#include <linux/types.h>
+
+struct barebox_boarddata {
+#define BAREBOX_BOARDDATA_MAGIC		0xabe742c3
+	u32 magic;
+#define BAREBOX_MACH_TYPE_EFI		0xef1bbef1
+	u32 machine; /* machine number to pass to barebox. This may or may
+		      * not be a ARM machine number registered on arm.linux.org.uk.
+		      * It must only be unique across barebox. Please use a number
+		      * that do not potientially clashes with registered machines,
+		      * i.e. use a number > 0x10000.
+		      */
+#ifdef CONFIG_EFI_STUB
+	void *image;
+	void *sys_table;
+#endif
+};
+
+/*
+ * Create a boarddata struct at given address. Suitable to be passed
+ * as boarddata to barebox_$ARCH_entry(). The boarddata can be retrieved
+ * later with barebox_get_boarddata().
+ */
+static inline struct barebox_boarddata *boarddata_create(void *adr, u32 machine)
+{
+	struct barebox_boarddata *bd = adr;
+
+	bd->magic = BAREBOX_BOARDDATA_MAGIC;
+	bd->machine = machine;
+
+	return bd;
+}
+
+const struct barebox_boarddata *barebox_get_boarddata(void);
+
+#endif	/* _BAREBOX_BOARDDATA_H_ */
-- 
2.39.2



