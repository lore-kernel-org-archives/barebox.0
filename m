Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHvUV-0005xm-0V
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 20:54:29 +0000
Received: from geraet.fritz.box (muedsl-82-207-214-223.citykom.de
 [82.207.214.223]) (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 32C07240007
 for <barebox@lists.infradead.org>; Mon, 14 Sep 2020 20:54:20 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 14 Sep 2020 22:54:15 +0200
Message-Id: <20200914205415.835304-1-ahmad@a3f.at>
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
Subject: [PATCH] sandbox: unwind: fix indentation
To: barebox@lists.infradead.org

Indentation was unintentionally doubled. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/lib/unwind.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/lib/unwind.c b/arch/sandbox/lib/unwind.c
index 15a2798cc404..f46365ac2b3b 100644
--- a/arch/sandbox/lib/unwind.c
+++ b/arch/sandbox/lib/unwind.c
@@ -7,5 +7,5 @@ void __sanitizer_print_stack_trace(void);
 
 void dump_stack(void)
 {
-		__sanitizer_print_stack_trace();
+	__sanitizer_print_stack_trace();
 }
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
