Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rafi.de ([178.15.151.14])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yzd6f-0004K8-H3
 for barebox@lists.infradead.org; Tue, 02 Jun 2015 03:43:14 +0000
References: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>,
 <20150601114150.GG6325@pengutronix.de>
In-Reply-To: <20150601114150.GG6325@pengutronix.de>
MIME-Version: 1.0
From: andreas.willig@rafi.de
Message-ID: <OF4A53439D.B017BB3F-ONC1257E58.0014663E-C1257E58.00146649@o0802.rafi.inhouse>
Date: Tue, 2 Jun 2015 05:42:49 +0200
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
Subject: Re: Clocks on Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,
I'm currently on the next branch, but i did not see changes at this point s=
ince master or stable release. Like issued earlier the clock table enumerat=
ion is empty. Is there a specific compatible attribute required? =

 =


Mit freundlichen Gr=FC=DFen aus Berg/ With kind regards

i.A. Andreas Willig
Dipl.-Ing. (FH)
Entwicklung Elektronik

RAFI GmbH & Co. KG
Postfach 2060
88276 Ravensburg
Tel.: +49 (0) 751 89-6142

mailto:andreas.willig@rafi.de, http://www.rafi.de

Kommanditgesellschaft: Sitz Berg, Amtsgericht Ulm, HRA 550059
Komplement=E4r: RAFI Beteiligungs-GmbH, Sitz Berg, Amtsgericht Ulm HRB 5500=
74
Gesch=E4ftsf=FChrer: Albert Wasmeier, Dipl.-Kfm. Gerhard Schenk
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291 =


 =

-----Sascha Hauer <s.hauer@pengutronix.de> schrieb: -----

 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 An: andreas.willig@rafi.de
 Von: Sascha Hauer <s.hauer@pengutronix.de>
 Datum: 01.06.2015 13:41 =

 Kopie: barebox@lists.infradead.org
 Betreff: Re: Clocks on Barebox
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
   Hi Andreas,

On Mon, Jun 01, 2015 at 10:12:55AM +0200, andreas.willig@rafi.de wrote:
> Hi all
> i just updated from 2014 to latest Barebox and hit the following problem:
> of_clk_init from clk.c:451 does not find any entries. matches is set to _=
_clk_of_table start where compatible=3D0 and data=3D0,
> but from my thoughts the dt is ok on this point:

I have no idea currently. You are doing nothing obviously wrong.

> from arch/arm/mach-imx/clk-imx6.c are removed:
> static int imx6_ccm_probe()
> {
> - unsigned long ckil_rate =3D 32768;
> - unsigned long ckih_rate =3D 0;
> - unsigned long osc_rate =3D 24000000;
> - clks[dummy] =3D clk_fixed("dummy", 0);
> - clks[ckil] =3D clk_fixed("ckil", ckil_rate);
> - clks[ckih] =3D clk_fixed("ckih", ckih_rate);
> - clks[osc] =3D clk_fixed("osc", osc_rate);
> }

These are removed because they come from the OF clock providers now. For
this you need COMMON_CLK_OF_PROVIDER enabled, but this should be
selected by the imx6 support automatically though. Let me test this on
some hardware here. What barebox version do you use? master, next, or
the latest release?

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
    =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
