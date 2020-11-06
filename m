Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb1xN-0003Xf-Ed
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 13:39:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Nov 2020 14:39:00 +0100
Message-Id: <20201106133900.2656-27-s.hauer@pengutronix.de>
In-Reply-To: <20201106133900.2656-1-s.hauer@pengutronix.de>
References: <20201106133900.2656-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 26/26] nand command: Allow offsets with [kM] suffixes
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand-bitflip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/nand-bitflip.c b/commands/nand-bitflip.c
index 217a243f66..1395021ec0 100644
--- a/commands/nand-bitflip.c
+++ b/commands/nand-bitflip.c
@@ -53,7 +53,7 @@ static int do_nand_bitflip(int argc, char *argv[])
 			block = simple_strtoul(optarg, NULL, 0);
 			break;
 		case 'o':
-			offset = simple_strtoull(optarg, NULL, 0);
+			offset = strtoull_suffix(optarg, NULL, 0);
 			break;
 		case 'c':
 			check = 1;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
