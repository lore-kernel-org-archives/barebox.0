Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U27-0008Kj-Rv
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:37 +0100
Message-Id: <20161123093937.15711-10-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] arm: at91 bootstrap: Fix menu title
To: Barebox List <barebox@lists.infradead.org>

It's no longer possible to assign a string to menu->display, instead
menu_add_title() must be called. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/bootstrap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
index 8502bb0..9dd575b 100644
--- a/arch/arm/mach-at91/bootstrap.c
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -155,7 +155,8 @@ void at91_bootstrap_menu(void)
 	struct menu_entry *me;
 
 	m = menu_alloc();
-	m->display = m->name = "boot";
+	m->name = "boot";
+	menu_add_title(m, m->name);
 
 	menu_add(m);
 
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
