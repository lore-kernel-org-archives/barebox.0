Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXwPV-0001LO-Uf
 for barebox@lists.infradead.org; Wed, 19 Jul 2017 21:21:36 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 19 Jul 2017 23:20:59 +0200
Message-Id: <20170719212104.2613-1-sam@ravnborg.org>
In-Reply-To: <20170719212013.GA1675@ravnborg.org>
References: <20170719212013.GA1675@ravnborg.org>
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
Subject: [PATCH 1/6] arm: at91 bootstrap: declare local function static
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <srn@skov.dk>, Sam Ravnborg <sam@ravnborg.org>

From: Sam Ravnborg <srn@skov.dk>

Function is only used in this file and no prototype exist
in any header.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/bootstrap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index 9dd575b74..5d21b2d02 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -149,7 +149,7 @@ static void boot_reset_action(struct menu *m, struct menu_entry *me)
 	restart_machine();
 }
 
-void at91_bootstrap_menu(void)
+static void at91_bootstrap_menu(void)
 {
 	struct menu *m;
 	struct menu_entry *me;
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
