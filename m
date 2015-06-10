Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2YHo-00083F-Ak
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 05:10:50 +0000
MIME-Version: 1.0
In-Reply-To: <20150610045944.GU6325@pengutronix.de>
References: <20150610045944.GU6325@pengutronix.de>,
 <20150609101805.GO26575@pengutronix.de>
 <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
 <OF03F48783.387A0F3D-ONC1257E5F.003F03B2-C1257E5F.003F03BA@o0802.rafi.inhouse>
From: andreas.willig@rafi.de
Message-ID: <OF768B6D2F.3B4803F6-ONC1257E60.001C6BB6-C1257E60.001C6BBF@o0802.rafi.inhouse>
Date: Wed, 10 Jun 2015 07:10:25 +0200
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

you make my day :) this is it, everything is fine, i removed my Workaround =
with hardinit osc to tree, and everything works smooth and beautiful :)

Problem solved, looking Forward, seeing this patch on branch next :)

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
Datum: 10.06.2015 06:59
Kopie: barebox@lists.infradead.org
Betreff: Re: Clocks on Barebox


On Tue, Jun 09, 2015 at 01:28:17PM +0200, andreas.willig@rafi.de wrote:
> Hi Sascha,
> =

> here my oftables section from barebox.map:
> =

> .oftables       0x278f7bc0       0x18
>                 0x278f7bc0                . =3D ALIGN (0x8)
>                 0x278f7bc0                __clk_of_table_start =3D .
>  *(.__clk_of_table_*)
>  .__clk_of_table_end
>                 0x278f7bc0        0x8 drivers/built-in.o
>                 0x278f7bc0                __clk_of_table_sentinel
>  .__clk_of_table_fixed_clk
>                 0x278f7bc8        0x8 drivers/built-in.o
>                 0x278f7bc8                __clk_of_table_fixed_clk
>  .__clk_of_table_fixed_factor_clk
>                 0x278f7bd0        0x8 drivers/built-in.o
>                 0x278f7bd0                __clk_of_table_fixed_factor_clk
>                 0x278f7bd8                __clk_of_table_end =3D .

And here's the problem. The sentinel entry containing only NULL marks
the end of the array. It should be the last entry, but here it's the
first entry which effectively makes the table empty. It turned out it
was pure luck that the sentinel entry ended up as last entry normally.

I've just sent out a patch fixing this, please test.

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
