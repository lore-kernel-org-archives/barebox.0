Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSp6h-0006xp-U1
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 18:33:01 +0000
Date: Wed, 5 Jul 2017 20:32:35 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705183235.GA17038@ravnborg.org>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] clk: fix clk_get error handling
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

From 20397009e13e6111c8b17e5cbaf0addf3aaf593a Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Mon, 3 Jul 2017 21:21:02 +0200
Subject: [PATCH 1/3] clk: fix clk_get error handling
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

If there is no OFTREE support of_clk_get_by_name failed with
-ENOENT, which caused clk_get to bail out.
This had the effect that nothing was printed on the serial console
with at91sam9263-ek.

There are no error paths that will return -ENODEV as we test for today,
so change this to -ENOENT which is in use.
This allows us to contine with clk_get_sys() in case of other
errors as was the intention of the original fix.

Fixes: 90f7eacb ("clk: let clk_get return errors from of_clk_get_by_name")
Cc: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/clk/clkdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 6b1666355..abdc41527 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -181,7 +181,7 @@ struct clk *clk_get(struct device_d *dev, const char *c=
on_id)
 =

 	if (dev) {
 		clk =3D of_clk_get_by_name(dev->device_node, con_id);
-		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENODEV)
+		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENOENT)
 			return clk;
 	}
 =

-- =

2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
