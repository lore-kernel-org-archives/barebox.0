Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSp84-0007Cf-1S
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 18:34:25 +0000
Date: Wed, 5 Jul 2017 20:34:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705183400.GC17038@ravnborg.org>
References: <20170705182747.GB13920@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170705182747.GB13920@ravnborg.org>
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
Subject: [PATCH 3/3] arm: at91 bootstrap: declare local function static
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

From 8eb65eccbdd304ba4fb06e8de2a958791e0077f0 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Wed, 5 Jul 2017 08:52:19 +0200
Subject: [PATCH 3/3] arm: at91 bootstrap: declare local function static

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
