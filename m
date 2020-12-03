Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkqj0-0001ds-N1
 for barebox@lists.infradead.org; Thu, 03 Dec 2020 15:40:55 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Thu, 3 Dec 2020 16:40:50 +0100
Message-Id: <1607010050-98351-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] ARM: i.MX: OCOTP: read serial number with correct endianness
To: barebox@lists.infradead.org

The serial number is stored with the low bytes first, as can be seen in
Linux commit 8267ff89b713 ("ARM: imx: Add serial number support for
i.MX6/7 SoCs").  The same goes for i.MX8M.

Also renamed the macro to the more descriptive name from Linux.

Fixes: c4d9463d969b ("i.MX: Introduce imx_ocotp_read_uid()")
Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 arch/arm/mach-imx/include/mach/ocotp.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
index 7ba5da156b76..20205c5da759 100644
--- a/arch/arm/mach-imx/include/mach/ocotp.h
+++ b/arch/arm/mach-imx/include/mach/ocotp.h
@@ -26,8 +26,8 @@
 #define OCOTP_BIT(n)		FIELD_PREP(OCOTP_BIT_MASK, n)
 #define OCOTP_WIDTH(n)		FIELD_PREP(OCOTP_WIDTH_MASK, (n) - 1)
 
-#define OCOTP_OFFSET_CFG0	0x410
-#define OCOTP_OFFSET_CFG1	0x420
+#define OCOTP_UID_L		0x410
+#define OCOTP_UID_H		0x420
 
 
 int imx_ocotp_read_field(uint32_t field, unsigned *value);
@@ -39,9 +39,9 @@ static inline u64 imx_ocotp_read_uid(void __iomem *ocotp)
 {
 	u64 uid;
 
-	uid  = readl(ocotp + OCOTP_OFFSET_CFG0);
+	uid  = readl(ocotp + OCOTP_UID_H);
 	uid <<= 32;
-	uid |= readl(ocotp + OCOTP_OFFSET_CFG1);
+	uid |= readl(ocotp + OCOTP_UID_L);
 
 	return uid;
 }
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
