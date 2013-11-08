Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-000248-1G
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:35 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:56 +0400
Message-Id: <1383934379-27100-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
References: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/6] commands: nandtest: Fix signed/unsigned arguments for
 printf
To: barebox@lists.infradead.org

"%d" in format string requires a signed integer.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/nandtest.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/nandtest.c b/commands/nandtest.c
index f6e8f99..0da5444 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -163,8 +163,8 @@ static void print_stats(int nr_passes, int length)
 	for (i = 0; i < MAX_ECC_BITS; i++)
 		printf("ECC %d bit error(s)	: %d\n", i + 1, ecc_stats[i]);
 
-	printf("ECC >%d bit error(s)	: %d\n", MAX_ECC_BITS, ecc_stats_over);
-	printf("ECC corrections failed	: %d\n", ecc_failed_cnt);
+	printf("ECC >%d bit error(s)	: %u\n", MAX_ECC_BITS, ecc_stats_over);
+	printf("ECC corrections failed	: %u\n", ecc_failed_cnt);
 	printf("-------------------------\n");
 }
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
