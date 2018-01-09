Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eYtVu-0005IP-T1
 for barebox@lists.infradead.org; Tue, 09 Jan 2018 13:00:25 +0000
Received: by mail-lf0-x241.google.com with SMTP id a12so15819529lfe.13
 for <barebox@lists.infradead.org>; Tue, 09 Jan 2018 05:00:12 -0800 (PST)
Received: from lovely (anon-40-247.vpn.ipredator.se. [46.246.40.247])
 by smtp.googlemail.com with ESMTPSA id y15sm2854026lje.10.2018.01.09.05.00.09
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jan 2018 05:00:09 -0800 (PST)
Message-ID: <1515502805.2493.11.camel@googlemail.com>
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Tue, 09 Jan 2018 14:00:05 +0100
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: chf.fritz@googlemail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX6: add new silicon revision number 1.6
To: barebox@lists.infradead.org

This patch adds new silicon revision number 1.6 as specified in document
IMX6DQCEC.pdf.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/mach-imx/include/mach/imx6.h     | 2 ++
 arch/arm/mach-imx/include/mach/revision.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index e0ced7e..288c753 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -109,6 +109,8 @@ static inline int __imx6_cpu_revision(void)
 		return IMX_CHIP_REV_1_4;
 	case 0x05:
 		return IMX_CHIP_REV_1_5;
+	case 0x06:
+		return IMX_CHIP_REV_1_6;
 	case 0x100:
 		return IMX_CHIP_REV_2_0;
 	}
diff --git a/arch/arm/mach-imx/include/mach/revision.h b/arch/arm/mach-imx/include/mach/revision.h
index 908a0a1..d9495d9 100644
--- a/arch/arm/mach-imx/include/mach/revision.h
+++ b/arch/arm/mach-imx/include/mach/revision.h
@@ -8,6 +8,7 @@
 #define IMX_CHIP_REV_1_3	0x13
 #define IMX_CHIP_REV_1_4	0x14
 #define IMX_CHIP_REV_1_5	0x15
+#define IMX_CHIP_REV_1_6	0x16
 #define IMX_CHIP_REV_2_0	0x20
 #define IMX_CHIP_REV_2_1	0x21
 #define IMX_CHIP_REV_2_2	0x22
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
