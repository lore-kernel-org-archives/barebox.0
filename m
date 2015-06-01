Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rafi.de ([178.15.151.14])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzKwU-0007KQ-3W
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 08:19:31 +0000
MIME-Version: 1.0
In-Reply-To: 
References: 
From: andreas.willig@rafi.de
Message-ID: <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
Date: Mon, 1 Jun 2015 10:12:55 +0200
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
Subject: Clocks on Barebox
To: barebox@lists.infradead.org

Hi all
i just updated from 2014 to latest Barebox and hit the following problem:
of_clk_init from clk.c:451 does not find any entries. matches is set to __c=
lk_of_table start where compatible=3D0 and data=3D0,
but from my thoughts the dt is ok on this point:
{
...
clocks {
#address-cells =3D <0x1>;
#size-cells =3D <0x0>;
ckil {
compatible =3D "fsl,imx-ckil", "fixed-clock";
#clock-cells =3D <0x0>;
clock-frequency =3D <0x8000>;
};
ckih1 {
compatible =3D "fsl,imx-ckih1", "fixed-clock";
#clock-cells =3D <0x0>;
clock-frequency =3D <0x0>;
};
osc {
compatible =3D "fsl,imx-osc", "fixed-clock";
#clock-cells =3D <0x0>;
clock-frequency =3D <0x16e3600>;
};
clock@0 {
compatible =3D "fixed-clock";
reg =3D <0x0>;
#clock-cells =3D <0x0>;
clock-frequency =3D <0x16e3600>;
};
}
aips-bus@02000000 {
...
ccm@020c4000 {
compatible =3D "fsl,imx6q-ccm", "fsl,imx6dl-ccm";
reg =3D <0x20c4000 0x4000>;
interrupts =3D <0x0 0x57 0x4 0x0 0x58 0x4>;
#clock-cells =3D <0x1>;
linux,phandle =3D <0x3>;
phandle =3D <0x3>;
};
...
};
...
};
Is there a pretty howto added? Am I missing something?
from arch/arm/mach-imx/clk-imx6.c are removed:
static int imx6_ccm_probe()
{
- unsigned long ckil_rate =3D 32768;
- unsigned long ckih_rate =3D 0;
- unsigned long osc_rate =3D 24000000;
- clks[dummy] =3D clk_fixed("dummy", 0);
- clks[ckil] =3D clk_fixed("ckil", ckil_rate);
- clks[ckih] =3D clk_fixed("ckih", ckih_rate);
- clks[osc] =3D clk_fixed("osc", osc_rate);
}
and on gpt_probe the clock tree refers to a frequency of 0 while seeking fo=
r osc as clk parent which cannot be found and leads to a div by zero and th=
erefore in a panic in further context. This prevents bb from starting (of c=
ourse).

System is Freescale i.MX6 Solo on our on DIMM module.


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
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
