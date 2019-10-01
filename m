Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBaa-0006VX-Mr
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 06:24:50 +0000
Received: from geraet.fritz.box (muedsl-82-207-205-165.citykom.de
 [82.207.205.165]) (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B3015C000F
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 06:24:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  1 Oct 2019 08:24:30 +0200
Message-Id: <20191001062430.804-1-ahmad@a3f.at>
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
Subject: [PATCH] input: specialkeys: remove unused printk argument
To: barebox@lists.infradead.org

Two pr_info calls have no format specifiers, but are still passed an
argument. Remove the unused arguments.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/input/specialkeys.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/specialkeys.c b/drivers/input/specialkeys.c
index ff29b8455d7a..a3f2bf4e4f48 100644
--- a/drivers/input/specialkeys.c
+++ b/drivers/input/specialkeys.c
@@ -13,12 +13,12 @@ static void input_specialkeys_notify(struct input_notifier *in,
 {
 	switch (ev->code) {
 	case KEY_RESTART:
-		pr_info("Triggering reset due to special key.\n", ev->code);
+		pr_info("Triggering reset due to special key.\n");
 		restart_machine();
 		break;
 
 	case KEY_POWER:
-		pr_info("Triggering poweroff due to special key.\n", ev->code);
+		pr_info("Triggering poweroff due to special key.\n");
 		poweroff_machine();
 		break;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
