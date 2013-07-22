Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1B1F-0000Te-TE
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 07:58:58 +0000
From: =?iso-8859-15?q?J=FCrgen_Beisert?= <jbe@pengutronix.de>
Date: Mon, 22 Jul 2013 09:59:23 +0200
References: <2655265.6QViDogYJX@n56v> <20130709174049.GX516@pengutronix.de>
In-Reply-To: <20130709174049.GX516@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201307220959.23884.jbe@pengutronix.de>
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
Subject: Re: mini2440 (256MB NAND)
To: barebox@lists.infradead.org

Hi Cristiano,

On Tuesday 09 July 2013 19:40:49 Sascha Hauer wrote:
> On Mon, Jul 08, 2013 at 10:42:43PM +0100, Cristiano Rodrigues wrote:
> > I'm trying to run the barebox (trunk version or any other recent versio=
n)
> > in my mini2440 board but until now, I can't boot from nand.
>
> Sorry, I can't help you with friendlyarm. Probably J=FCrgen has an idea,
> but he is on holiday at the moment. Maybe he can help you once he's
> back.

I'm back now ;)
AFAIK there was some change in the generic bootstrap code. I guess the base =

code in the stepping stone RAM skipps the DRAM initialization by accident d=
ue =

to this change. That's why it works when the DRAM is already up and running =

and it fails if not.

Juergen

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
