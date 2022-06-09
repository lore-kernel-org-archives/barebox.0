Delivery-date: Thu, 09 Jun 2022 08:03:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBGe-008SAx-NX
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 08:03:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzBGd-0002Cj-7P
	for lore@pengutronix.de; Thu, 09 Jun 2022 08:03:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPRuN5BoBCf/fmwu/EanKmETjdX7KOq6JjhiCcbIMVY=; b=jCGCj0ejJm3uED
	8P6nrlcZHGfETdjXy8ZhVaZtLM9NBm7zOldTwkJljC9Z1GlHMvFwhF1LO6Hli5U85pyBNCYix59Zp
	WHdJqlhrd2qU/Zf2mh/TF/HlURaPyge7nPDREJvBGoCGXaXPfJlJ+CEGO2RDMmrLJKx5lvccp6O2W
	/TxqidzEnt2YcMZNROhgB3Kn5TFFr3hX7+DdvoMhQYEHQ9AkdT6Re8mtSiusRLpR5NdNpTSwh3mfV
	igordtYD7WJwKdWJ+anVZGm9Yd0jCoCD3sGNOWMh2ddHMNFYT8BHJJu2iU74usVUJSbA8VozsAnjq
	EWxIAX5yAKxVgjCWX2fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBF7-00GwXW-AQ; Thu, 09 Jun 2022 06:02:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzBCb-00Gv1C-Cy
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:59:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-0008J4-3y; Thu, 09 Jun 2022 07:59:28 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCa-007KA4-PJ; Thu, 09 Jun 2022 07:59:27 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzBCV-002nZc-A4; Thu, 09 Jun 2022 07:59:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 07:59:05 +0200
Message-Id: <20220609055922.667016-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609055922.667016-1-a.fatoum@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_225929_542540_35705E0C 
X-CRM114-Status: GOOD (  21.22  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/21] ARM: rpi: support PBL use of mbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox uses DT to find out the base address of the mailbox. For the
generic image, we need to use the mailbox interface to find out which DT
to use. Resolve the chicken-egg problem by hardcoding a list of mailbox
base addresses and selecting the correct one by looking up the CPU ID
and using that to deduce the Raspberry Pi SoC type.

Note that this is incompatible with arm_peri_high=1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/system_info.h        |  6 +++++
 arch/arm/mach-bcm283x/Makefile            |  2 +-
 arch/arm/mach-bcm283x/core.c              | 29 +++++++++++++++++++++++
 arch/arm/mach-bcm283x/include/mach/core.h |  2 ++
 arch/arm/mach-bcm283x/mbox.c              | 24 ++++++++++++-------
 5 files changed, 54 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/mach-bcm283x/core.c

diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
index c7f998774812..5a84fde75b9f 100644
--- a/arch/arm/include/asm/system_info.h
+++ b/arch/arm/include/asm/system_info.h
@@ -44,6 +44,12 @@
 #define CPU_IS_CORTEX_A15	0x410fc0f0
 #define CPU_IS_CORTEX_A15_MASK	0xff0ffff0
 
+#define CPU_IS_CORTEX_A53	0x410fd030
+#define CPU_IS_CORTEX_A53_MASK	0xff0ffff0
+
+#define CPU_IS_CORTEX_A72	0x410fd080
+#define CPU_IS_CORTEX_A72_MASK	0xff0ffff0
+
 #define CPU_IS_PXA250		0x69052100
 #define CPU_IS_PXA250_MASK	0xfffff7f0
 
diff --git a/arch/arm/mach-bcm283x/Makefile b/arch/arm/mach-bcm283x/Makefile
index d68176441322..53343cec8cd6 100644
--- a/arch/arm/mach-bcm283x/Makefile
+++ b/arch/arm/mach-bcm283x/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += mbox.o
+obj-pbl-y += mbox.o core.o
diff --git a/arch/arm/mach-bcm283x/core.c b/arch/arm/mach-bcm283x/core.c
new file mode 100644
index 000000000000..40882fb6d685
--- /dev/null
+++ b/arch/arm/mach-bcm283x/core.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/types.h>
+#include <mach/core.h>
+#include <asm/system_info.h>
+
+void __iomem *bcm2835_get_mmio_base_by_cpuid(void)
+{
+	static u32 cpuid;
+
+	if (!cpuid) {
+		cpuid = read_cpuid_id();
+		pr_debug("ARM CPUID: %08x\n", cpuid);
+	}
+
+	/* We know ARM1167, Cortex A-7, A-53 and A-72 CPUID mask is identical */
+	switch(cpuid & CPU_IS_ARM1176_MASK) {
+	case CPU_IS_ARM1176:	/* bcm2835 */
+		return IOMEM(0x20000000);
+	case CPU_IS_CORTEX_A7:	/* bcm2836 */
+	case CPU_IS_CORTEX_A53:	/* bcm2837 */
+		return IOMEM(0x3f000000);
+	case CPU_IS_CORTEX_A72:	/* bcm2711 */
+		return IOMEM(0xfe000000);
+	}
+
+	pr_err("Couldn't determine rpi by CPUID %08x\n", cpuid);
+	return NULL;
+}
diff --git a/arch/arm/mach-bcm283x/include/mach/core.h b/arch/arm/mach-bcm283x/include/mach/core.h
index bd272b925df5..c8547351a39d 100644
--- a/arch/arm/mach-bcm283x/include/mach/core.h
+++ b/arch/arm/mach-bcm283x/include/mach/core.h
@@ -22,4 +22,6 @@ static void inline bcm2835_register_fb(void)
 	add_generic_device("bcm2835_fb", 0, NULL, 0, 0, 0, NULL);
 }
 
+void __iomem *bcm2835_get_mmio_base_by_cpuid(void);
+
 #endif
diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 4b14afcfe45b..b77065ab305f 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -14,13 +14,20 @@
 #include <init.h>
 #include <io.h>
 #include <of_address.h>
+#include <pbl.h>
 
 #include <mach/mbox.h>
+#include <mach/core.h>
 
 #define TIMEOUT (MSECOND * 1000)
 
 static void __iomem *mbox_base;
 
+#ifdef __PBL__
+#define is_timeout_non_interruptible(start, timeout) ((void)start, 0)
+#define get_time_ns() 0
+#endif
+
 static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 					u32 *recv)
 {
@@ -109,19 +116,20 @@ static void dump_buf(struct bcm2835_mbox_hdr *buffer)
 }
 #endif
 
-static int bcm2835_mbox_probe(void)
+static void __iomem *bcm2835_mbox_probe(void)
 {
 	struct device_node *mbox_node;
 
+	if (IN_PBL)
+		return bcm2835_get_mmio_base_by_cpuid() + 0xb880;
+
 	mbox_node = of_find_compatible_node(NULL, NULL, "brcm,bcm2835-mbox");
 	if (!mbox_node) {
 		pr_err("Missing mbox node\n");
-		return -ENOENT;
+		return NULL;
 	}
 
-	mbox_base = of_iomap(mbox_node, 0);
-
-	return 0;
+	return of_iomap(mbox_node, 0);
 }
 
 int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
@@ -132,9 +140,9 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 	int tag_index;
 
 	if (!mbox_base) {
-		ret = bcm2835_mbox_probe();
-		if (ret)
-			return ret;
+		mbox_base = bcm2835_mbox_probe();
+		if (!mbox_base)
+			return -ENOENT;
 	}
 
 	pr_debug("mbox: TX buffer\n");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

