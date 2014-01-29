Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8ZmE-0005BA-6n
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 18:22:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 29 Jan 2014 22:21:47 +0400
Message-Id: <1391019709-30606-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
References: <1391019709-30606-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/4] ppc 8xxx: Fix logic
To: barebox@lists.infradead.org

Expression (pdimm->data_width >= 32) || (pdimm->data_width <= 40)
always evaluates to true, so probably we need to use "&&" here.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/ppc/ddr-8xxx/options.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ppc/ddr-8xxx/options.c b/arch/ppc/ddr-8xxx/options.c
index 22b621f..9ce2bc1 100644
--- a/arch/ppc/ddr-8xxx/options.c
+++ b/arch/ppc/ddr-8xxx/options.c
@@ -48,7 +48,7 @@ uint32_t populate_memctl_options(int all_DIMMs_registered,
 	if (pdimm->n_ranks != 0) {
 		if ((pdimm->data_width >= 64) && (pdimm->data_width <= 72))
 			popts->data_bus_width = 0;
-		else if ((pdimm->data_width >= 32) ||
+		else if ((pdimm->data_width >= 32) &&
 			(pdimm->data_width <= 40))
 			popts->data_bus_width = 1;
 		else
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
