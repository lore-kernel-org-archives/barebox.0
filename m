Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Opkpf-0001Cf-O7
	for barebox@lists.infradead.org; Sun, 29 Aug 2010 16:34:12 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 29 Aug 2010 18:33:45 +0200
Message-Id: <1283099625-21699-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] move include/unaligned to include/linux/unaligned/
To: barebox@lists.infradead.org

as originally in linux

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/include/asm/unaligned.h              |    6 +++---
 include/{ => linux}/unaligned/access_ok.h     |    0
 include/{ => linux}/unaligned/be_byteshift.h  |    0
 include/{ => linux}/unaligned/be_memmove.h    |    0
 include/{ => linux}/unaligned/be_struct.h     |    0
 include/{ => linux}/unaligned/generic.h       |    0
 include/{ => linux}/unaligned/le_byteshift.h  |    0
 include/{ => linux}/unaligned/le_memmove.h    |    0
 include/{ => linux}/unaligned/le_struct.h     |    0
 include/{ => linux}/unaligned/memmove.h       |    0
 include/{ => linux}/unaligned/packed_struct.h |    0
 11 files changed, 3 insertions(+), 3 deletions(-)
 rename include/{ => linux}/unaligned/access_ok.h (100%)
 rename include/{ => linux}/unaligned/be_byteshift.h (100%)
 rename include/{ => linux}/unaligned/be_memmove.h (100%)
 rename include/{ => linux}/unaligned/be_struct.h (100%)
 rename include/{ => linux}/unaligned/generic.h (100%)
 rename include/{ => linux}/unaligned/le_byteshift.h (100%)
 rename include/{ => linux}/unaligned/le_memmove.h (100%)
 rename include/{ => linux}/unaligned/le_struct.h (100%)
 rename include/{ => linux}/unaligned/memmove.h (100%)
 rename include/{ => linux}/unaligned/packed_struct.h (100%)

diff --git a/arch/arm/include/asm/unaligned.h b/arch/arm/include/asm/unaligned.h
index 34f7838..44593a8 100644
--- a/arch/arm/include/asm/unaligned.h
+++ b/arch/arm/include/asm/unaligned.h
@@ -1,9 +1,9 @@
 #ifndef _ASM_ARM_UNALIGNED_H
 #define _ASM_ARM_UNALIGNED_H
 
-#include <unaligned/le_byteshift.h>
-#include <unaligned/be_byteshift.h>
-#include <unaligned/generic.h>
+#include <linux/unaligned/le_byteshift.h>
+#include <linux/unaligned/be_byteshift.h>
+#include <linux/unaligned/generic.h>
 
 /*
  * Select endianness
diff --git a/include/unaligned/access_ok.h b/include/linux/unaligned/access_ok.h
similarity index 100%
rename from include/unaligned/access_ok.h
rename to include/linux/unaligned/access_ok.h
diff --git a/include/unaligned/be_byteshift.h b/include/linux/unaligned/be_byteshift.h
similarity index 100%
rename from include/unaligned/be_byteshift.h
rename to include/linux/unaligned/be_byteshift.h
diff --git a/include/unaligned/be_memmove.h b/include/linux/unaligned/be_memmove.h
similarity index 100%
rename from include/unaligned/be_memmove.h
rename to include/linux/unaligned/be_memmove.h
diff --git a/include/unaligned/be_struct.h b/include/linux/unaligned/be_struct.h
similarity index 100%
rename from include/unaligned/be_struct.h
rename to include/linux/unaligned/be_struct.h
diff --git a/include/unaligned/generic.h b/include/linux/unaligned/generic.h
similarity index 100%
rename from include/unaligned/generic.h
rename to include/linux/unaligned/generic.h
diff --git a/include/unaligned/le_byteshift.h b/include/linux/unaligned/le_byteshift.h
similarity index 100%
rename from include/unaligned/le_byteshift.h
rename to include/linux/unaligned/le_byteshift.h
diff --git a/include/unaligned/le_memmove.h b/include/linux/unaligned/le_memmove.h
similarity index 100%
rename from include/unaligned/le_memmove.h
rename to include/linux/unaligned/le_memmove.h
diff --git a/include/unaligned/le_struct.h b/include/linux/unaligned/le_struct.h
similarity index 100%
rename from include/unaligned/le_struct.h
rename to include/linux/unaligned/le_struct.h
diff --git a/include/unaligned/memmove.h b/include/linux/unaligned/memmove.h
similarity index 100%
rename from include/unaligned/memmove.h
rename to include/linux/unaligned/memmove.h
diff --git a/include/unaligned/packed_struct.h b/include/linux/unaligned/packed_struct.h
similarity index 100%
rename from include/unaligned/packed_struct.h
rename to include/linux/unaligned/packed_struct.h
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
