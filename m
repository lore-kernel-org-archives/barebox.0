Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpB7R-0003Vg-5z
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 08:21:05 +0000
Received: by lfaz124 with SMTP id z124so38963723lfa.1
 for <barebox@lists.infradead.org>; Thu, 22 Oct 2015 01:20:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 Oct 2015 11:20:38 +0300
Message-Id: <1445502038-2566-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! commands: clk_dump: use COMMAND_SUCCESS instead of 0
 return code
To: barebox@lists.infradead.org

Sorry, I have missed that occurence.
So we can change original patch subject line to


  commands: clk: use COMMAND_SUCCESS instead of 0


---
 commands/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/clk.c b/commands/clk.c
index 2bfdfdf..e9459a3 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -40,7 +40,7 @@ static int do_clk_disable(int argc, char *argv[])
 
 	clk_disable(clk);
 
-	return 0;
+	return COMMAND_SUCCESS;
 }
 
 BAREBOX_CMD_START(clk_disable)
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
