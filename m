Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFjYj-0000P0-F8
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 13:50:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 15:50:16 +0200
Message-Id: <1437054617-1819-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437054617-1819-1-git-send-email-s.hauer@pengutronix.de>
References: <1437054617-1819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX6 cm-fx6: Fix Chip density for DDR_64BIT_2GB case
To: Barebox List <barebox@lists.infradead.org>
Cc: Nikita Kiryanov <nikita@compulab.co.il>, embeddedsupport@compulab.co.il

DDR_64BIT_2GB corresponds to two chip selects (ncs = 2) with 1GiB
each. In this case cs_density must be configured to 8Gb (1GiB).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/cm-fx6/lowlevel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/cm-fx6/lowlevel.c b/arch/arm/boards/cm-fx6/lowlevel.c
index 9c5c33c..fa8bd7b 100644
--- a/arch/arm/boards/cm-fx6/lowlevel.c
+++ b/arch/arm/boards/cm-fx6/lowlevel.c
@@ -206,6 +206,8 @@ static void spl_mx6q_dram_init(enum ddr_config dram_config, bool reset)
 		cm_fx6_sysinfo_q.ncs = 1;
 		break;
 	case DDR_64BIT_2GB:
+		cm_fx6_sysinfo_q.cs_density = 8;
+		cm_fx6_ddr3_cfg_q.density = 2;
 		cm_fx6_sysinfo_q.dsize = 2;
 		cm_fx6_sysinfo_q.ncs = 2;
 		break;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
