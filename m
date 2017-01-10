Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3m-0001F8-M6
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:08 +0000
Received: by mail-pf0-x241.google.com with SMTP id f144so10456287pfa.2
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:00 -0800
Message-Id: <20170110150913.31416-8-andrew.smirnov@gmail.com>
In-Reply-To: <20170110150913.31416-1-andrew.smirnov@gmail.com>
References: <20170110150913.31416-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 07/20] i.MX: imx6-fusemap: Fix SJC_RESP_LOCK width
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

According to the datasheet SJC_RESP_LOCK is one bit wide, adjust the
definition correspondingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx6-fusemap.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/imx6-fusemap.h b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
index 5fdd904..efa16fd 100644
--- a/arch/arm/mach-imx/include/mach/imx6-fusemap.h
+++ b/arch/arm/mach-imx/include/mach/imx6-fusemap.h
@@ -6,7 +6,7 @@
 #define IMX6_OCOTP_TESTER_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(0) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_BOOT_CFG_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(2) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_MEM_TRIM_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(4) | OCOTP_WIDTH(2))
-#define IMX6_OCOTP_SJC_RESP_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(6) | OCOTP_WIDTH(2))
+#define IMX6_OCOTP_SJC_RESP_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(6) | OCOTP_WIDTH(1))
 #define IMX6_OCOTP_MAC_ADDR_LOCK	(OCOTP_WORD(0x400) | OCOTP_BIT(8) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_GP1_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(10) | OCOTP_WIDTH(2))
 #define IMX6_OCOTP_GP2_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(12) | OCOTP_WIDTH(2))
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
