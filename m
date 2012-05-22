Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp23.mail.ru ([94.100.176.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWu8b-0000ca-9p
 for barebox@lists.infradead.org; Tue, 22 May 2012 18:48:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 22 May 2012 22:48:48 +0400
Message-Id: <1337712528-16387-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM i.MX: Possible bug fixed due misspelling when copy/paste
To: barebox@lists.infradead.org

We must check pointer to function rather than result.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/speed-imx51.c |    4 ++--
 arch/arm/mach-imx/speed-imx53.c |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 84f4892..5a845a6 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -98,9 +98,9 @@ static unsigned long get_rate_select(int select,
 {
 	switch (select) {
 	case 0:
-		return get_rate1() ? get_rate1() : 0;
+		return get_rate1 ? get_rate1() : 0;
 	case 1:
-		return get_rate2() ? get_rate2() : 0;
+		return get_rate2 ? get_rate2() : 0;
 	case 2:
 		return get_rate3 ? get_rate3() : 0;
 	case 3:
diff --git a/arch/arm/mach-imx/speed-imx53.c b/arch/arm/mach-imx/speed-imx53.c
index a2385fa..634341e 100644
--- a/arch/arm/mach-imx/speed-imx53.c
+++ b/arch/arm/mach-imx/speed-imx53.c
@@ -103,9 +103,9 @@ static unsigned long get_rate_select(int select,
 {
 	switch (select) {
 	case 0:
-		return get_rate1() ? get_rate1() : 0;
+		return get_rate1 ? get_rate1() : 0;
 	case 1:
-		return get_rate2() ? get_rate2() : 0;
+		return get_rate2 ? get_rate2() : 0;
 	case 2:
 		return get_rate3 ? get_rate3() : 0;
 	case 3:
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
