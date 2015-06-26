Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8NN8-0000RI-RD
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 06:44:23 +0000
Received: by lagi2 with SMTP id i2so57982850lag.2
 for <barebox@lists.infradead.org>; Thu, 25 Jun 2015 23:44:00 -0700 (PDT)
Date: Fri, 26 Jun 2015 09:50:30 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150626095030.e8e69f239515ae727fed729b@gmail.com>
In-Reply-To: <20150625200718.GA18611@pengutronix.de>
References: <20150608184033.GL6325@pengutronix.de>
 <20150625152714.71ffc6272ed69a63a346ea02@gmail.com>
 <20150625200718.GA18611@pengutronix.de>
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
Subject: Re: v2015.06.0 ...and a new website
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, 25 Jun 2015 22:07:18 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jun 25, 2015 at 03:27:14PM +0300, Antony Pavlov wrote:
> > On Mon, 8 Jun 2015 20:40:33 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > Hi all,
> > > =

> > > We have a release for June, see below for a list of changes between t=
his
> > > and the last release.
> > > =

> > > Also we are proud to anounce a new website for barebox, check it out =
on
> > > http://www.barebox.org. We finally brought the new documentation
> > > currently growing under Documentation online. Also check out our shiny
> > > new logo.
> > =

> > What is about adding new logo to the git repo?
> =

> We'll add it to the repo. Instead of adding multiple pngs in different
> sizes I want to put the svg in the repo and some foo to convert it to
> png in different sizes. So far librsvg looks like a good candidate for
> converting the svg to png. I need some time though to write the makefile
> magic.
> =


I like this approach! Old logo hierarchy was a little confusing.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
