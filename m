Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xfn-0006aY-9B
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:19:00 +0000
Received: by mail-la0-f49.google.com with SMTP id y1so4387954lam.8
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:18:36 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:55 +0400
Message-Id: <1390057983-17921-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/13] MIPS: add Loongson-1B processor constants and CPU probe
To: barebox@lists.infradead.org

This commit is based on this linux commit:

    commit 2fa36399e63c911134f28b6878aada9b395c4209
    Author: Kelvin Cheung <keguang.zhang@gmail.com>
    Date:   Wed Jun 20 20:05:32 2012 +0100

        MIPS: Add CPU support for Loongson1B

        Loongson 1B is a 32-bit SoC designed by Institute of Computing Technology
        (ICT) and the Chinese Academy of Sciences (CAS), which implements the
        MIPS32 release 2 instruction set.

        [ralf@linux-mips.org: But which is not strictly a MIPS32 compliant device
        which also is why it identifies itself with the Legacy Vendor ID in the
        PrID register.  When applying the patch I shoveled some code around to
        keep things in alphabetical order and avoid forward declarations.]

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/cpu.h | 27 +++++++++++++++++++++++++++
 arch/mips/lib/cpu-probe.c   | 21 +++++++++++++++++++++
 2 files changed, 48 insertions(+)

diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
index e63f847..dcc2a27 100644
--- a/arch/mips/include/asm/cpu.h
+++ b/arch/mips/include/asm/cpu.h
@@ -28,6 +28,20 @@
 #define PRID_COMP_BROADCOM	0x020000
 #define PRID_COMP_INGENIC	0xd00000
 
+/*
+ * Assigned Processor ID (implementation) values for bits 15:8 of the PRId
+ * register.  In order to detect a certain CPU type exactly eventually
+ * additional registers may need to be examined.
+ */
+
+#define PRID_IMP_MASK		0xff00
+
+/*
+ * These are valid when 23:16 == PRID_COMP_LEGACY
+ */
+
+#define PRID_IMP_LOONGSON1	0x4200
+
 #define PRID_IMP_UNKNOWN	0xff00
 
 /*
@@ -50,6 +64,18 @@
 #define PRID_IMP_JZRISC		0x0200
 
 /*
+ * Particular Revision values for bits 7:0 of the PRId register.
+ */
+
+#define PRID_REV_MASK		0x00ff
+
+/*
+ * Definitions for 7:0 on legacy processors
+ */
+
+#define PRID_REV_LOONGSON1B	0x0020
+
+/*
  * Older processors used to encode processor version and revision in two
  * 4-bit bitfields, the 4K seems to simply count up and even newer MTI cores
  * have switched to use the 8-bits as 3:3:2 bitfield with the last field as
@@ -80,6 +106,7 @@ enum cpu_type_enum {
 	CPU_24K,
 	CPU_BMIPS3300,
 	CPU_JZRISC,
+	CPU_LOONGSON1,
 
 	CPU_LAST
 };
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index de45421..8235a54 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -81,6 +81,24 @@ static void decode_configs(struct cpuinfo_mips *c)
 	BUG_ON(!ok);				/* Arch spec violation!  */
 }
 
+static inline void cpu_probe_legacy(struct cpuinfo_mips *c)
+{
+	switch (c->processor_id & PRID_IMP_MASK) {
+	case PRID_IMP_LOONGSON1:
+		decode_configs(c);
+
+		c->cputype = CPU_LOONGSON1;
+
+		switch (c->processor_id & PRID_REV_MASK) {
+		case PRID_REV_LOONGSON1B:
+			__cpu_name = "Loongson 1B";
+			break;
+		}
+
+		break;
+	}
+}
+
 static inline void cpu_probe_mips(struct cpuinfo_mips *c)
 {
 	decode_configs(c);
@@ -130,6 +148,9 @@ void cpu_probe(void)
 
 	c->processor_id = read_c0_prid();
 	switch (c->processor_id & 0xff0000) {
+	case PRID_COMP_LEGACY:
+		cpu_probe_legacy(c);
+		break;
 	case PRID_COMP_MIPS:
 		cpu_probe_mips(c);
 		break;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
