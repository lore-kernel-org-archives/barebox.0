Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp8hM-00010w-0q
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 05:46:01 +0000
Received: by lfaz124 with SMTP id z124so35401314lfa.1
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2015 22:45:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 Oct 2015 08:45:27 +0300
Message-Id: <1445492727-905-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
References: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] commands: clk_dump: use COMMAND_SUCCESS instead of 0
 return code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/clk.c b/commands/clk.c
index 469d9b3..2bfdfdf 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -149,7 +149,7 @@ static int do_clk_dump(int argc, char *argv[])
 
 	clk_dump(verbose);
 
-	return 0;
+	return COMMAND_SUCCESS;
 }
 
 BAREBOX_CMD_HELP_START(clk_dump)
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
