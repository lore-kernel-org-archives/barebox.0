Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdd2-0007lu-5P
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 07:21:54 +0000
Received: from geraet.fritz.box (i538755FA.versanet.de [83.135.85.250])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id EE7071C0011
 for <barebox@lists.infradead.org>; Wed, 16 Oct 2019 07:21:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 16 Oct 2019 09:21:38 +0200
Message-Id: <20191016072139.2323-4-ahmad@a3f.at>
In-Reply-To: <20191016072139.2323-1-ahmad@a3f.at>
References: <20191016072139.2323-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] x86: include: add asmlinkage 'storage class'
To: barebox@lists.infradead.org

We've a number of C functions with external linkage that are only called
from assembly. -Wmissing-prototypes warns about these unless they have
a prototype that goes unused. Let's standardize on using the asmlinkage
'storage class' to mark such declarations.

As <linux/linkage.h> defines asmlinkage to naught unless <asm/linkage.h>
does, it's sufficient to add an empty header to make this usable on x86
as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/include/asm/linkage.h | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 arch/x86/include/asm/linkage.h

diff --git a/arch/x86/include/asm/linkage.h b/arch/x86/include/asm/linkage.h
new file mode 100644
index 000000000000..a8d1bdb7de1f
--- /dev/null
+++ b/arch/x86/include/asm/linkage.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_LINKAGE_H
+#define __ASM_LINKAGE_H
+
+/* referenced by <linux/linkage.h> */
+
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
