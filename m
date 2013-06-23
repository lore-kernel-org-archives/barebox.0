Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqpnP-00007Q-SK
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 19:17:57 +0000
Received: by mail-la0-f47.google.com with SMTP id fe20so9421213lab.20
 for <barebox@lists.infradead.org>; Sun, 23 Jun 2013 12:17:32 -0700 (PDT)
Date: Sun, 23 Jun 2013 23:16:11 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130623231611.45358b0e316e65de6bc77010@gmail.com>
In-Reply-To: <20130623184217.GL32299@pengutronix.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
 <20130621154840.GF32299@pengutronix.de>
 <20130621203745.932331ebb1544b8246d480d2@gmail.com>
 <20130623184217.GL32299@pengutronix.de>
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
Subject: Re: [PATCH 0/8] low level initialisation for ar2313
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, 23 Jun 2013 20:42:17 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Jun 21, 2013 at 08:37:45PM +0400, antonynpavlov@gmail.com wrote:
> > On Fri, 21 Jun 2013 17:48:40 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > Well done, Oleksij! Congratulations!
> > =

> > Thanks, Sascha!
> > =

> > Now we have in the next branch THE FIRST PUBLICLY AVAILABLE FULLY SUPPO=
RTED "HARDWARE" MIPS-based BOARD!
> =

> Hurray \o/
> =

> What about the dlink 320? Does it only work 2nd stage?

Alas it works only 2nd stage.

I have a Ingenic JZ4770-based tablet with barebox only firmware. I made the=
 1st stage loader as a very very dirty hack, but it works! It is time to cl=
ean it...


> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
