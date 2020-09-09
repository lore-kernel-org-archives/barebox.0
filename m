Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxrG-0002u8-Bo
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 11:01:47 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  9 Sep 2020 13:01:15 +0200
Message-Id: <20200909110118.19923-2-jbe@pengutronix.de>
In-Reply-To: <20200909110118.19923-1-jbe@pengutronix.de>
References: <20200909110118.19923-1-jbe@pengutronix.de>
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
Subject: [PATCH 2/5] commands: mmc_extcsd: print_field: fix layout
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/mmc_extcsd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index 40d11df17d..7ae068348d 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -2163,7 +2163,7 @@ static int print_field(u8 *reg, int index)
 			str = "FIFO policy for cache";
 		else
 			str = "not provided";
-		printf("\t[0] Device flushing: %s", str);
+		printf("\t[0] Device flushing: %s\n", str);
 		return 1;
 
 	case EXT_CSD_OPTIMAL_READ_SIZE:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
