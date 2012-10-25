Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TRJ9p-0004ml-Cs
 for barebox@lists.infradead.org; Thu, 25 Oct 2012 08:51:18 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EF00E104FBEB
 for <barebox@lists.infradead.org>; Thu, 25 Oct 2012 10:58:09 +0200 (CEST)
Date: Thu, 25 Oct 2012 10:49:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121025084902.GO21588@game.jcrosoft.org>
References: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
 <20121024183359.GN21588@game.jcrosoft.org>
 <20121024215649.25964bc6@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121024215649.25964bc6@eb-e6520>
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
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 21:56 Wed 24 Oct     , Eric B=E9nard wrote:
> Hi,
> =

> Le Wed, 24 Oct 2012 20:33:59 +0200,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > On 20:06 Wed 24 Oct     , Sascha Hauer wrote:
> > > Since we have phylib we have no instance which polls for a link. This
> > > means that network boot often bails out after a powercycle or phy res=
et.
> > > This changes the link status behaviour to:
> > > =

> > > - Always check for a link if the last link test was unsuccesful
> > > - If the last check was succesful, check for a link when the last
> > >   check is longer than 5 seconds ago
> > > - Try to get a link for 5 seconds.
> > 5 seconds is too long
> > =

> > and check the link is wrong you need to check the autoneg
> > the link may be down because no cable
> > =

> and the autoneg can have been successful before the cable was
> removed : how to you handle this cas ?
the advertise tell you something change

so you need to restart the autoneg

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
