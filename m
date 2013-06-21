Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq0EW-0000Wj-Hv
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 12:14:30 +0000
From: =?iso-8859-15?q?J=FCrgen_Beisert?= <jbe@pengutronix.de>
Date: Fri, 21 Jun 2013 14:14:25 +0200
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
 <1371711261-10039-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-5-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201306211414.25514.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 04/17] ARM: MXS: Add MXS specific clk types
To: barebox@lists.infradead.org

With the following patch on top of [PATCH 04/17]:

diff --git a/drivers/clk/mxs/clk-ref.c b/drivers/clk/mxs/clk-ref.c
index d62ebfc..7ff5527 100644
--- a/drivers/clk/mxs/clk-ref.c
+++ b/drivers/clk/mxs/clk-ref.c
@@ -40,6 +40,17 @@ struct clk_ref {
 #define SET	0x4
 #define CLR	0x8
 =

+static int clk_ref_is_enabled(struct clk *clk)
+{
+	struct clk_ref *ref =3D to_clk_ref(clk);
+	u32 reg =3D readl(ref->reg);
+
+	if (reg & 1 << ((ref->idx + 1) * 8 - 1))
+		return 0;
+
+	return 1;
+}
+
 static int clk_ref_enable(struct clk *clk)
 {
 	struct clk_ref *ref =3D to_clk_ref(clk);
@@ -118,6 +129,7 @@ static int clk_ref_set_rate(struct clk *clk, unsigned l=
ong rate,
 }
 =

 static const struct clk_ops clk_ref_ops =3D {
+	.is_enabled	=3D clk_ref_is_enabled,
 	.enable		=3D clk_ref_enable,
 	.disable	=3D clk_ref_disable,
 	.recalc_rate	=3D clk_ref_recalc_rate,

...I get the expected output at runtime (e.g. CPU and EMI clocks get
reported as 'enabled'):

luma:/ clk_dump
ref_xtal (rate 24000000, enabled)
    pll (rate 480000000, enabled)
        ref_cpu (rate 454736842, enabled) <---------
            cpu_pll (rate 454736842, enabled)
                cpu (rate 454736842, enabled)
                    hbus (rate 151578947, enabled)
        ref_emi (rate 261818181, enabled) <---------
            emi_pll (rate 130909090, enabled)
                emi_sel (rate 130909090, enabled)
                    emi (rate 130909090, enabled)
        ref_pix (rate 480000000, disabled)
            lcdif_sel (rate 480000000, disabled)
                lcdif_div (rate 480000000, disabled)
                    lcdif (rate 480000000, disabled)
        ref_io (rate 480000000, enabled)
            ssp_sel (rate 480000000, enabled)
                ssp_div (rate 96000000, enabled)
                    ssp (rate 96000000, enabled)
        spdif_div (rate 120000000, enabled)
            spdif (rate 120000000, disabled)
    saif_sel (rate 24000000, enabled)
        saif_div (rate 366, enabled)
            saif (rate 366, disabled)
    gpmi_sel (rate 24000000, enabled)
        gpmi_div (rate 24000000, enabled)
            gpmi (rate 24000000, disabled)
    etm_sel (rate 24000000, enabled)
        etm_div (rate 24000000, enabled)
            etm (rate 24000000, disabled)
    cpu_xtal (rate 24000000, enabled)
    xbus (rate 24000000, enabled)
    emi_xtal (rate 24000000, enabled)
    clk32k_div (rate 32000, enabled)
        clk32k (rate 32000, enabled)
            adc (rate 2000, enabled)
    rtc (rate 31250, enabled)
    dri (rate 24000000, disabled)
    pwm (rate 24000000, disabled)
    filt (rate 24000000, disabled)
    uart (rate 24000000, enabled)

jbe

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Beisert =A0 =A0 =A0 =A0 =A0 =A0 |
Linux Solutions for Science and Industry =A0 =A0 =A0| Phone: +49-5121-20691=
7-5128 |
Peiner Str. 6-8, 31137 Hildesheim, Germany =A0 =A0| Fax: =A0 +49-5121-20691=
7-5555 |
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://www.pe=
ngutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
