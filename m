Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Z2w-0001Ym-QI
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 19:12:20 +0000
Received: from tellur.intern.lynxeye.de (p57B5F16F.dip0.t-ipconnect.de
 [87.181.241.111]) by lynxeye.de (Postfix) with ESMTPA id 5E96026C2002
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 20:59:27 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Jun 2015 20:59:21 +0200
Message-Id: <1435345163-16565-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
References: <1435345163-16565-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/4] commands: digest: fix harmless warning
To: barebox@lists.infradead.org

Fixes with !CONFIG_LONGHELP:
commands/digest.c:71:13: warning:
'prints_algo_help' defined but not used [-Wunused-function]

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 commands/digest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/digest.c b/commands/digest.c
index 340c07a..4cc615d 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -68,7 +68,7 @@ err:
 	return ret;
 }
 
-static void prints_algo_help(void)
+static void __maybe_unused prints_algo_help(void)
 {
 	puts("\navailable algo:\n");
 	digest_algo_prints("\t");
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
