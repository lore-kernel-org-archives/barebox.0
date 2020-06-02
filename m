Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gi-000701-AO
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:28 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:10 +0200
Message-Id: <20200602085412.16554-24-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 23/25] commands: test: drop dead assignment
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

last_expr is set to a different value few lines later. Drop the dead
assignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/test.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/commands/test.c b/commands/test.c
index 505b7c56b1a4..c845cec01789 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -86,7 +86,6 @@ static int do_test(int argc, char *argv[])
 	if (argc < 2)
 		return 1;
 
-	last_expr = 0;
 	left = argc - 1;
 	ap = argv + 1;
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
