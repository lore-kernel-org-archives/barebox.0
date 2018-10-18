Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LN-AQ
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:58:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:08 +0200
Message-Id: <20181018065827.19973-2-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/20] ARM: Fix missing prototype warning
To: Barebox List <barebox@lists.infradead.org>

Fixes Warnings in usage of ENTRY_FUNCTION whith -Wmissing-prototypes
enabled:

arch/arm/boards/phytec-som-imx6/lowlevel.c:118:14:
 warning: no previous prototype for 'start_phytec_phycore_imx6ul_som_512mb' [-Wmissing-prototypes]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index bd355f617b..c0c749ae34 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -166,6 +166,8 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 }
 
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
+	void name (uint32_t r0, uint32_t r1, uint32_t r2);		\
+									\
 	static void __##name(uint32_t, uint32_t, uint32_t);		\
 									\
 	void NAKED __section(.text_head_entry_##name)	name		\
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
