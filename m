Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dS7nS-0007e4-MF
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 20:18:17 +0000
Date: Mon, 3 Jul 2017 22:17:46 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170703201746.GA15480@ravnborg.org>
References: <20170703161922.GA24614@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170703161922.GA24614@ravnborg.org>
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
Subject: [PATCH 1/2] clk: fix clk_get error handling
To: barebox@lists.infradead.org
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

From feaf9f379a1100b3e56faa83e22360b25a5eb904 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Mon, 3 Jul 2017 21:21:02 +0200
Subject: [PATCH 1/2] clk: fix clk_get error handling
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

If there is no OFTREE support of_clk_get_by_name failed with
-ENOENT, which caused clk_get to bail out.
This had the effect that nothing was printed on the serial console
with at91sam9263-ek.

Fix this by modifying the logic to explicitly check for -EPROBE_DEFER
like we do in the kernel.

Fixes: 90f7eacb ("clk: let clk_get return errors from of_clk_get_by_name")
Cc: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/clk/clkdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 6b1666355..939b067cc 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -181,7 +181,7 @@ struct clk *clk_get(struct device_d *dev, const char *c=
on_id)
 =

 	if (dev) {
 		clk =3D of_clk_get_by_name(dev->device_node, con_id);
-		if (!IS_ERR(clk) || PTR_ERR(clk) !=3D -ENODEV)
+		if (!IS_ERR(clk) || PTR_ERR(clk) =3D=3D -EPROBE_DEFER)
 			return clk;
 	}
 =

-- =

2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
