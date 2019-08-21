Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Pwo-0007Nc-B2
 for barebox@lists.infradead.org; Wed, 21 Aug 2019 12:42:43 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992066AbfHUMmgNQ5KW (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Wed, 21 Aug 2019 14:42:36 +0200
Date: Wed, 21 Aug 2019 14:42:35 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190821124234.GA14745@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] startup: Fix typo in comment
To: Barebox List <barebox@lists.infradead.org>

Fixes: 35266d7e583f ("startup: Factor out the autoboot counter...")
Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 common/startup.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index 92bf94f84..bef9d29c6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -202,7 +202,7 @@ void set_autoboot_state(enum autoboot_state autoboot)
  * do_autoboot_countdown - print autoboot countdown to console
  *
  * This prints the autoboot countdown to the console and waits for input. This
- * evaluates the global.autoboot_about_key to determine which keys are allowed
+ * evaluates the global.autoboot_abort_key to determine which keys are allowed
  * to interrupt booting and also global.autoboot_timeout to determine the timeout
  * for the counter. This function can be called multiple times, it is executed
  * only the first time.
-- 
2.23.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
