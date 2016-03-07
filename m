Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFb-0004yD-VV
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:12 +0000
Received: by mail-lb0-x229.google.com with SMTP id x1so129965829lbj.3
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:50 -0800 (PST)
Received: from localhost.localdomain ([31.173.84.173])
 by smtp.gmail.com with ESMTPSA id vq10sm2751728lbb.14.2016.03.07.05.30.48
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Mar 2016 05:30:48 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:22 +0300
Message-Id: <1457357426-9868-12-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 11/15] MIPS: ath79: pbl: add pbl_ar9331_mdio_gpio_enable macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/pbl_macros.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 24cfd60..8f4d09a 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -179,6 +179,14 @@
 			| AR933X_GPIO_FUNC_RSRV15, GPIO_FUNC
 .endm
 
+#define RESET_REG_BOOTSTRAP	((KSEG1 | AR71XX_RESET_BASE) \
+					| AR933X_RESET_REG_BOOTSTRAP)
+
+.macro	pbl_ar9331_mdio_gpio_enable
+	/* Bit 18 enables MDC and MDIO function on GPIO26 and GPIO28 */
+	pbl_reg_set (1 << 18), RESET_REG_BOOTSTRAP
+.endm
+
 .macro	hornet_mips24k_cp0_setup
 	.set push
 	.set noreorder
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
