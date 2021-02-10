Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9qTP-0003Hc-Dj
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 14:28:09 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de
 (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
 by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id
 11AERQ8L732872
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Wed, 10 Feb 2021 15:27:26 +0100
Received: from reddoxx.intern.sigma-chemnitz.de
 (reddoxx.intern.sigma-chemnitz.de [192.168.0.193])
 by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id
 11AEROfv1819519
 for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de;
 Wed, 10 Feb 2021 15:27:24 +0100
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Wed, 10 Feb 2021 15:27:03 +0100
Message-Id: <20210210142704.1855761-2-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
References: <20210210142704.1855761-1-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] imx8:pinfunc: fix definition
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 dts/src/arm64/freescale/imx8mm-pinfunc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/dts/src/arm64/freescale/imx8mm-pinfunc.h b/dts/src/arm64/freescale/imx8mm-pinfunc.h
index 5ccc4cc91959..a003e6af3353 100644
--- a/dts/src/arm64/freescale/imx8mm-pinfunc.h
+++ b/dts/src/arm64/freescale/imx8mm-pinfunc.h
@@ -124,7 +124,7 @@
 #define MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD                                     0x0A4 0x30C 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SD1_CMD_GPIO2_IO1                                      0x0A4 0x30C 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0                                 0x0A8 0x310 0x000 0x0 0x0
-#define MX8MM_IOMUXC_SD1_DATA0_GPIO2_IO2                                    0x0A8 0x31  0x000 0x5 0x0
+#define MX8MM_IOMUXC_SD1_DATA0_GPIO2_IO2                                    0x0A8 0x310 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1                                 0x0AC 0x314 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SD1_DATA1_GPIO2_IO3                                    0x0AC 0x314 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2                                 0x0B0 0x318 0x000 0x0 0x0
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
