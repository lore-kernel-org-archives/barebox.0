Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTXO-0006xo-1n
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:15:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:11 +0200
Message-Id: <20170410071420.26884-2-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ARM: socfpga: change param_type struct name
To: Barebox List <barebox@lists.infradead.org>

We are going to introduce a "enum param_type" in barebox, so
rename the struct type of the same name in the socfpga sequencer
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/include/mach/sequencer.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.h b/arch/arm/mach-socfpga/include/mach/sequencer.h
index dd0378af34..d2da21d13f 100644
--- a/arch/arm/mach-socfpga/include/mach/sequencer.h
+++ b/arch/arm/mach-socfpga/include/mach/sequencer.h
@@ -369,7 +369,7 @@ static const uint32_t ac_rom_init[];
 
 /* parameter variable holder */
 
-typedef struct param_type {
+typedef struct sequencer_param_type {
 	t_btfld dm_correct_mask;
 	t_btfld read_correct_mask;
 	t_btfld read_correct_mask_vg;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
