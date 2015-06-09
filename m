Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2Hhy-0004Cd-5b
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 11:28:43 +0000
MIME-Version: 1.0
In-Reply-To: <20150609101805.GO26575@pengutronix.de>
References: <20150609101805.GO26575@pengutronix.de>,
 <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
From: andreas.willig@rafi.de
Message-ID: <OF03F48783.387A0F3D-ONC1257E5F.003F03B2-C1257E5F.003F03BA@o0802.rafi.inhouse>
Date: Tue, 9 Jun 2015 13:28:17 +0200
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

here my oftables section from barebox.map:

.oftables       0x278f7bc0       0x18
                0x278f7bc0                . =3D ALIGN (0x8)
                0x278f7bc0                __clk_of_table_start =3D .
 *(.__clk_of_table_*)
 .__clk_of_table_end
                0x278f7bc0        0x8 drivers/built-in.o
                0x278f7bc0                __clk_of_table_sentinel
 .__clk_of_table_fixed_clk
                0x278f7bc8        0x8 drivers/built-in.o
                0x278f7bc8                __clk_of_table_fixed_clk
 .__clk_of_table_fixed_factor_clk
                0x278f7bd0        0x8 drivers/built-in.o
                0x278f7bd0                __clk_of_table_fixed_factor_clk
                0x278f7bd8                __clk_of_table_end =3D .

from imx6qdl.dtsi:
...
    clocks {
        #address-cells =3D <1>;
        #size-cells =3D <0>;
        ckil {
            compatible =3D "fsl,imx-ckil", "fixed-clock";
            #clock-cells =3D <0>;
            clock-frequency =3D <32768>;
        };
        ckih1 {
            compatible =3D "fsl,imx-ckih1", "fixed-clock";
            #clock-cells =3D <0>;
            clock-frequency =3D <0>;
        };
        osc {
            compatible =3D "fsl,imx-osc", "fixed-clock";
            #clock-cells =3D <0>;
            clock-frequency =3D <24000000>;
        };
    };
...

I' m not quite sure how to read the barebox.map at this Point. Do I have cl=
ocks in Image or not? The parsercode just breaks out without finding any en=
umerated items.... =



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


-----Sascha Hauer <s.hauer@pengutronix.de> schrieb: ----- =

An: andreas.willig@rafi.de
Von: Sascha Hauer <s.hauer@pengutronix.de>
Datum: 09.06.2015 12:18
Kopie: barebox@lists.infradead.org
Betreff: Re: Clocks on Barebox


On Mon, Jun 01, 2015 at 10:12:55AM +0200, andreas.willig@rafi.de wrote:
> Hi all
> i just updated from 2014 to latest Barebox and hit the following problem:
> of_clk_init from clk.c:451 does not find any entries. matches is set to _=
_clk_of_table start where compatible=3D0 and data=3D0,

Do you mean the clk_of_table is empty? Could you post an excerpt from
you barebox.map file containing the __clk_of_table? Here it looks like:

                0x0000000000092178                __clk_of_table_start =3D
.
 *(.__clk_of_table_*)
 .__clk_of_table_fixed_clk
                0x0000000000092178        0x8 drivers/built-in.o
                0x0000000000092178
__clk_of_table_fixed_clk
 .__clk_of_table_fixed_factor_clk
                0x0000000000092180        0x8 drivers/built-in.o
                0x0000000000092180
__clk_of_table_fixed_factor_clk
 .__clk_of_table_end
                0x0000000000092188        0x8 drivers/built-in.o
                0x0000000000092188
__clk_of_table_sentinel
                0x0000000000092190                __clk_of_table_end =3D .

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
