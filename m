Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh7e-0007r8-QJ
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:49:24 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id CEE9818B425F
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:34 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:47 +0100
Message-Id: <1391762936-2747-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 05/14] lib: math: fix return path (numstack may be NULL)
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 lib/math.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/math.c b/lib/math.c
index a4731ed..2e53b09 100644
--- a/lib/math.c
+++ b/lib/math.c
@@ -546,8 +546,8 @@ static arith_t evaluate_string(arith_state_t *math_state, const char *expr)
 	arith_t result;
 
 	if (numstack == NULL || stack == NULL) {
-		errmsg = "out of memory";
-		goto err_with_custom_msg;
+		math_state->errmsg = "out of memory";
+		return -1;
 	}
 
 	/* Start with a left paren */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
