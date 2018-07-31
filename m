Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9E-00084b-9f
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:03 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001CB-C2
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS98-0000ea-QR
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:54 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:30 +0200
Message-Id: <20180731104442.2451-8-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 07/19] ARM: socfpga: arria10: add ocram base address
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/arria10-regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/include/mach/arria10-regs.h b/arch/arm/mach-socfpga/include/mach/arria10-regs.h
index 5569574e157d..931876f43a17 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-regs.h
+++ b/arch/arm/mach-socfpga/include/mach/arria10-regs.h
@@ -43,6 +43,7 @@
 #define ARRIA10_NOC_FW_SOC2FPGA_SOC2FPGA_SCR_ADDR	(0xffd13500)
 #define ARRIA10_DMANONSECURE_ADDR			(0xffda0000)
 #define ARRIA10_DMASECURE_ADDR				(0xffda1000)
+#define ARRIA10_OCRAM_ADDR				(0xffe00000)
 #define ARRIA10_MPUSCU_ADDR				(0xffffc000)
 #define ARRIA10_MPUL2_ADDR				(0xfffff000)
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
