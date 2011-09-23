Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004P0-Hs
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:14 +0200
Message-Id: <1316769860-24549-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] cfi flash: use cpu native accessors
To: barebox@lists.infradead.org

So that the driver can work on big endian systems again

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash.h |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 34a4cf8..df482b6 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -247,17 +247,17 @@ void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
 
 static inline void flash_write8(u8 value, void *addr)
 {
-	writeb(value, addr);
+	cpu_writeb(value, addr);
 }
 
 static inline void flash_write16(u16 value, void *addr)
 {
-	writew(value, addr);
+	cpu_writew(value, addr);
 }
 
 static inline void flash_write32(u32 value, void *addr)
 {
-	writel(value, addr);
+	cpu_writel(value, addr);
 }
 
 static inline void flash_write64(u64 value, void *addr)
@@ -267,17 +267,17 @@ static inline void flash_write64(u64 value, void *addr)
 
 static inline u8 flash_read8(void *addr)
 {
-	return readb(addr);
+	return cpu_readb(addr);
 }
 
 static inline u16 flash_read16(void *addr)
 {
-	return readw(addr);
+	return cpu_readw(addr);
 }
 
 static inline u32 flash_read32(void *addr)
 {
-	return readl(addr);
+	return cpu_readl(addr);
 }
 
 static inline u64 flash_read64(void *addr)
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
