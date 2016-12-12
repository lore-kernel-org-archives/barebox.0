Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGUxB-0005Fw-Jo
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 18:03:58 +0000
Received: by mail-pg0-x243.google.com with SMTP id 3so1669801pgd.0
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2016 10:03:38 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 12 Dec 2016 10:02:55 -0800
Message-Id: <1481565788-9115-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/21] i.MX: imx6-fusemap: Fix SJC_RESP_LOCK width
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

According to the datasheet SJC_RESP_LOCK is on bit wide, adjust the
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
