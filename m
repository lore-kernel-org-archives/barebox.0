Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQy3t-0001Lk-EP
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:10:17 +0000
Received: by mail-pf0-x244.google.com with SMTP id y143so8292776pfb.1
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:09:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:09:09 -0800
Message-Id: <20170110150913.31416-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 16/20] i.MX: iomux-vf610: Add missing pad definitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-vf610.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/iomux-vf610.h b/arch/arm/mach-imx/include/mach/iomux-vf610.h
index 84a1eb5..b9e509b 100644
--- a/arch/arm/mach-imx/include/mach/iomux-vf610.h
+++ b/arch/arm/mach-imx/include/mach/iomux-vf610.h
@@ -163,9 +163,13 @@ enum {
 	VF610_PAD_PTD22__NF_IO6		= IOMUX_PAD(0x0120, 0x0120, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
 	VF610_PAD_PTD21__NF_IO5		= IOMUX_PAD(0x0124, 0x0124, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
 	VF610_PAD_PTD20__NF_IO4		= IOMUX_PAD(0x0128, 0x0128, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD19__GPIO_75	= IOMUX_PAD(0x012C, 0x012C, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
 	VF610_PAD_PTD19__NF_IO3		= IOMUX_PAD(0x012c, 0x012c, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD18__GPIO_76	= IOMUX_PAD(0x0120, 0x0130, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
 	VF610_PAD_PTD18__NF_IO2		= IOMUX_PAD(0x0130, 0x0130, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD17__GPIO_77	= IOMUX_PAD(0x0134, 0x0134, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
 	VF610_PAD_PTD17__NF_IO1		= IOMUX_PAD(0x0134, 0x0134, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
+	VF610_PAD_PTD16__GPIO_78	= IOMUX_PAD(0x0138, 0x0138, 0, __NA_, 0, VF610_GPIO_PAD_CTRL),
 	VF610_PAD_PTD16__NF_IO0		= IOMUX_PAD(0x0138, 0x0138, 2, __NA_, 0, VF610_NFC_IO_PAD_CTRL),
 	VF610_PAD_PTB24__NF_WE_B	= IOMUX_PAD(0x0178, 0x0178, 5, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
 	VF610_PAD_PTB25__NF_CE0_B	= IOMUX_PAD(0x017c, 0x017c, 5, __NA_, 0, VF610_NFC_CN_PAD_CTRL),
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
