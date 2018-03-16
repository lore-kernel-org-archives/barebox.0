Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BN-Je
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:04 +0100
Message-Id: <20180316125354.23462-29-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 28/78] ARM: relocate_to_current_adr: Use unsigned long for
 variables
To: Barebox List <barebox@lists.infradead.org>

relocate_to_current_adr() fixes up pointers in the binary, so unsigned
long is a better match as it works on aarch64 aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 7c07d00c1b..3766116d97 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -30,8 +30,8 @@
  */
 void relocate_to_current_adr(void)
 {
-	uint32_t offset;
-	uint32_t *dstart, *dend, *dynsym, *dynend;
+	unsigned long offset;
+	unsigned long *dstart, *dend, *dynsym, *dynend;
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
@@ -43,14 +43,14 @@ void relocate_to_current_adr(void)
 	dynend = (void *)__dynsym_end + offset;
 
 	while (dstart < dend) {
-		uint32_t *fixup = (uint32_t *)(*dstart + offset);
-		uint32_t type = *(dstart + 1);
+		unsigned long *fixup = (unsigned long *)(*dstart + offset);
+		unsigned long type = *(dstart + 1);
 
 		if ((type & 0xff) == 0x17) {
 			*fixup = *fixup + offset;
 		} else {
 			int index = type >> 8;
-			uint32_t r = dynsym[index * 4 + 1];
+			unsigned long r = dynsym[index * 4 + 1];
 
 			*fixup = *fixup + r + offset;
 		}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
