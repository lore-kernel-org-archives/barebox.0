Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ganesha.gnumonks.org ([213.95.27.120])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW6sD-0001iJ-UM
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 18:30:51 +0000
From: Harald Welte <laforge@gnumonks.org>
Date: Wed, 17 Feb 2016 19:29:46 +0100
Message-Id: <1455733786-22229-1-git-send-email-laforge@gnumonks.org>
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
Subject: [PATCH] Print error message if of_state_fixup() fails
To: barebox@lists.infradead.org

If of_state_fixup() fails for some reason, boot/bootm will fail, too

However, it is completely unclear where the error has happened, and to
the user it rather seems like the kernel device tree loaded from some
file was broken/corrupt, not that in fact some fixup routine was
failing.

Adding a meaningful error message can help debugging significantly.

Signed-off-by: Harald Welte <laforge@gnumonks.org>
---
 common/state.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/state.c b/common/state.c
index 3e95efd..b55b150 100644
--- a/common/state.c
+++ b/common/state.c
@@ -999,6 +999,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	return 0;
 
  out:
+	dev_err(&state->dev, "error fixing up device tree with boot state\n");
 	of_delete_node(new_node);
 	return ret;
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
