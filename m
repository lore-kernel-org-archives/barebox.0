Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6i7p-0002OU-V3
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 13:48:23 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 93E72FFACB5
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 15:03:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Feb 2013 14:47:05 +0100
Message-Id: <1361022429-3688-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130216113811.GG19322@game.jcrosoft.org>
References: <20130216113811.GG19322@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] linux/types: import __aligned_x64 from the kernel
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

need it by upcoming EFI GPT support

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/types.h |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/types.h b/include/linux/types.h
index 76c6b67..14f8315 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -142,6 +142,19 @@ typedef __u64 __bitwise __be64;
 typedef __u16 __bitwise __sum16;
 typedef __u32 __bitwise __wsum;
 
+/*
+ * aligned_u64 should be used in defining kernel<->userspace ABIs to avoid
+ * common 32/64-bit compat problems.
+ * 64-bit values align to 4-byte boundaries on x86_32 (and possibly other
+ * architectures) and to 8-byte boundaries on 64-bit architectures.  The new
+ * aligned_64 type enforces 8-byte alignment so that structs containing
+ * aligned_64 values have the same alignment on 32-bit and 64-bit architectures.
+ * No conversions are necessary between 32-bit user-space and a 64-bit kernel.
+ */
+#define __aligned_u64 __u64 __attribute__((aligned(8)))
+#define __aligned_be64 __be64 __attribute__((aligned(8)))
+#define __aligned_le64 __le64 __attribute__((aligned(8)))
+
 #ifdef CONFIG_PHYS_ADDR_T_64BIT
 typedef u64 phys_addr_t;
 typedef u64 phys_size_t;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
