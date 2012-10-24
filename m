Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TR74a-0004CU-Rc
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 19:57:05 +0000
Received: from mail433.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E2FB4104F126
 for <barebox@lists.infradead.org>; Wed, 24 Oct 2012 22:03:47 +0200 (CEST)
Date: Wed, 24 Oct 2012 21:56:49 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20121024215649.25964bc6@eb-e6520>
In-Reply-To: <20121024183359.GN21588@game.jcrosoft.org>
References: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
 <20121024183359.GN21588@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net phy: poll for a link
To: barebox@lists.infradead.org

Hi,

Le Wed, 24 Oct 2012 20:33:59 +0200,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> On 20:06 Wed 24 Oct     , Sascha Hauer wrote:
> > Since we have phylib we have no instance which polls for a link. This
> > means that network boot often bails out after a powercycle or phy reset.
> > This changes the link status behaviour to:
> > =

> > - Always check for a link if the last link test was unsuccesful
> > - If the last check was succesful, check for a link when the last
> >   check is longer than 5 seconds ago
> > - Try to get a link for 5 seconds.
> 5 seconds is too long
> =

> and check the link is wrong you need to check the autoneg
> the link may be down because no cable
> =

and the autoneg can have been successful before the cable was
removed : how to you handle this cas ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
