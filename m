Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuLc-0006Kk-Gv
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:41:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 16:41:45 +0200
Message-Id: <20200928144146.21931-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] lib: kasan: remove reference of non-existent test_kasan.o
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We don't have anything that test_kasan.o can be generated out of,
thus drop it to fix the build.

It would still be nice to have this as a command, but that
should be a separate patch.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/kasan/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/kasan/Makefile b/lib/kasan/Makefile
index 31e9d890d538..11106574e0c2 100644
--- a/lib/kasan/Makefile
+++ b/lib/kasan/Makefile
@@ -1,5 +1,5 @@
 
-obj-y += generic_report.o generic.o report.o common.o test_kasan.o
+obj-y += generic_report.o generic.o report.o common.o
 KASAN_SANITIZE_generic_report.o := n
 KASAN_SANITIZE_generic.o := n
 KASAN_SANITIZE_report.o := n
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
