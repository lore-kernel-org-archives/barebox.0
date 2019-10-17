Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKyyp-0007Fx-E8
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 06:09:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iKyyi-0001cG-JJ
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 08:09:40 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iKyyb-0006Pi-Lv
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 08:09:33 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 17 Oct 2019 08:09:28 +0200
Message-Id: <20191017060928.23882-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20191017060928.23882-1-s.trumtrar@pengutronix.de>
References: <20191017060928.23882-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: socfpga: arria10-xload: fix Wmissing-prototypes
To: Barebox List <barebox@lists.infradead.org>

Fix the warning:

arch/arm/mach-socfpga/arria10-xload.c:17:5: warning: no previous prototype for
'a10_update_bits' [-Wmissing-prototypes]
   17 | int a10_update_bits(unsigned int reg, unsigned int mask,
      |     ^~~~~~~~~~~~~~~

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/arria10-xload.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/include/mach/arria10-xload.h b/arch/arm/mach-socfpga/include/mach/arria10-xload.h
index 71f839736230..7575231bbf34 100644
--- a/arch/arm/mach-socfpga/include/mach/arria10-xload.h
+++ b/arch/arm/mach-socfpga/include/mach/arria10-xload.h
@@ -4,6 +4,7 @@
 void arria10_init_mmc(void);
 int arria10_prepare_mmc(int barebox_part, int rbf_part);
 int arria10_read_blocks(void *dst, int blocknum, size_t len);
+int a10_update_bits(unsigned int reg, unsigned int mask, unsigned int val);
 
 struct partition {
 	uint64_t first_sec;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
