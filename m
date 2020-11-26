Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiM3o-0007n2-Ku
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 18:32:06 +0000
Received: from geraet.fritz.box (unknown [87.123.103.207])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C55221BF20E
 for <barebox@lists.infradead.org>; Thu, 26 Nov 2020 18:32:00 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 26 Nov 2020 19:31:52 +0100
Message-Id: <20201126183154.348024-2-ahmad@a3f.at>
In-Reply-To: <20201126183154.348024-1-ahmad@a3f.at>
References: <20201126183154.348024-1-ahmad@a3f.at>
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
Subject: [PATCH 2/4] commands: nv: fix set/remove of multiple variables in one
 go
To: barebox@lists.infradead.org

Multiple nonopt arguments seems to have never worked, because the value
was always extracted out of the first non-opt argument. After the first
iteration, it'll have it's '=' stripped and thus value == NULL for all i
> 0. Fix this.

Before:
  $ nv a=1 b=2 c=3
  $ echo "[$nv.a $nv.b $nv.c]"
  [1  ]

After:
  $ nv a=1 b=2 c=3
  $ echo "[$nv.a $nv.b $nv.c]"
  [1 2 3]

Fixes: 0c2fccceb625 ("nv: Allow to set/remove multiple variables with one command")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/nv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/nv.c b/commands/nv.c
index 8d4192402ca5..fa865811dce2 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -55,7 +55,7 @@ static int do_nv(int argc, char *argv[])
 
 	for (i = 0; i < argc; i++) {
 		int ret;
-		value = strchr(argv[0], '=');
+		value = strchr(argv[i], '=');
 		if (value) {
 			*value = 0;
 			value++;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
