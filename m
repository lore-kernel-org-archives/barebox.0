Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSzT-0006VH-NS
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:22:24 +0000
Received: by mail-lb0-f179.google.com with SMTP id p9so3448696lbv.38
 for <barebox@lists.infradead.org>; Fri, 28 Mar 2014 02:21:55 -0700 (PDT)
Date: Fri, 28 Mar 2014 13:31:44 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140328133144.83922cc5506a8d980d2cbd14@gmail.com>
Mime-Version: 1.0
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
Subject: tegra: clk_fixed_factor
To: Sascha Hauer <s.hauer@pengutronix.de>, Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Hi!

This latest commit in next breaks tegra build

  Author: Sascha Hauer <s.hauer@pengutronix.de>
  Date:   Thu Mar 13 09:41:28 2014 +0100

      clk: clk-fixed-factor: pass flags to initializers
     =

      Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I can't check this trivial fix properly by myself as my tegra board is cons=
erved:

--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -62,7 +62,7 @@ static void tegra20_osc_clk_init(void)
        clks[clk_32k] =3D clk_fixed("clk_32k", 32768);
 =

        clks[pll_ref] =3D clk_fixed_factor("pll_ref", "clk_m", 1,
-                                        get_pll_ref_div());
+                                        get_pll_ref_div(), 0);
 }

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
