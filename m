Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEsGs-00037Y-RG
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 03:52:15 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A229EFFA21C
 for <barebox@lists.infradead.org>; Wed,  6 Aug 2014 05:51:49 +0200 (CEST)
Date: Wed, 6 Aug 2014 05:56:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140806035607.GF19147@ns203013.ovh.net>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
 <20140731071425.GQ6146@pengutronix.de>
 <201407310933.02138.jbe@pengutronix.de>
 <20140731074416.GR6146@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140731074416.GR6146@pengutronix.de>
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
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>

On 09:44 Thu 31 Jul     , Uwe Kleine-K??nig wrote:
> =

> On Thu, Jul 31, 2014 at 09:33:02AM +0200, Juergen Borleis wrote:
> > Hi Uwe,
> > =

> > On Thursday 31 July 2014 09:14:25 Uwe Kleine-K=F6nig wrote:
> > > [...]
> > > Compared with storing the default environment in the external store t=
he
> > > only difference is that you don't need to modify it if you change the
> > > internal one, right?
> > =

> > This would also be an advantage of this new feature.
> The only one even?
> =

> > > I wonder what the targeted use case is.
> > =

> > To use an external stored environment *only* for development purposes o=
r tests =

> > and to keep the possibility to do so.
> Doesn't make a warm and cosy feeling. Isn't it easier and more robust to
> just not tell barebox about the external storage at all and for the
> testing/development procedure do an explicit
> =

> 	loadenv /dev/tralala
+1

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
