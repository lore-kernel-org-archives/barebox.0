Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rafi.de ([178.15.151.14])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2BzA-0007Qu-E7
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 05:22:05 +0000
MIME-Version: 1.0
In-Reply-To: <20150603081935.GQ6325@pengutronix.de>
References: <20150603081935.GQ6325@pengutronix.de>,
 <OF82039B53.F8CCC59C-ONC1257E57.002D20B0-C1257E57.002D20B8@o0802.rafi.inhouse>
 <20150601114150.GG6325@pengutronix.de>
 <OF4A53439D.B017BB3F-ONC1257E58.0014663E-C1257E58.00146649@o0802.rafi.inhouse>
From: andreas.willig@rafi.de
Message-ID: <OF0C768F98.A61061DB-ONC1257E5F.001D72E8-C1257E5F.001D72F0@o0802.rafi.inhouse>
Date: Tue, 9 Jun 2015 07:21:39 +0200
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

any news on the clocking Problem, did you receive my patch file? I did a wo=
rkaround and readded the hardcoded osc settings, but i think this is not th=
e way on long term.

Congrats for the new barebox.org website, pretty nice :)



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
Datum: 03.06.2015 10:19
Kopie: barebox@lists.infradead.org
Betreff: Re: Clocks on Barebox


On Tue, Jun 02, 2015 at 05:42:49AM +0200, andreas.willig@rafi.de wrote:
> Hi Sascha,
> I'm currently on the next branch, but i did not see changes at this
> point since master or stable release. Like issued earlier the clock
> table enumeration is empty. Is there a specific compatible attribute
> required?

I just tested barebox -next on the SabreLite board with the
imx_v7_defconfig. It works as expected. Do you have any patches applied
or use a different config file? I have no idea what goes wrong here.

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
