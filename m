Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiQxa-0000Wz-De
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 13:33:01 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1B5051000E90
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 14:33:59 +0100 (CET)
Date: Wed, 4 Jan 2012 14:32:50 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120104143250.55a91f0d@eb-e6520>
In-Reply-To: <20120104114426.GA1810@game.jcrosoft.org>
References: <1325669809-32637-1-git-send-email-eric@eukrea.com>
 <1325669809-32637-4-git-send-email-eric@eukrea.com>
 <20120104104741.GG18008@game.jcrosoft.org>
 <20120104121015.254532c7@eb-e6520>
 <20120104114426.GA1810@game.jcrosoft.org>
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
Subject: Re: [PATCH v4 4/5] timeout: add poller_call
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

Le Wed, 4 Jan 2012 12:44:26 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> On 12:10 Wed 04 Jan     , Eric B=E9nard wrote:
> > Hi Jean-Christophe,
> > =

> > Le Wed, 4 Jan 2012 11:47:41 +0100,
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> > =

> > > On 10:36 Wed 04 Jan     , Eric B=E9nard wrote:
> > > > without this, usb gadget can't enumerate during boot once the
> > > > timeout command is launched (thus preventing usbserial console
> > > > access to take control of the board before autoboot)
> > > > =

> > > > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > > =

> > > I send a patch to put it in the is_timeout c code
> > > =

> > I just saw it.
> > =

> > > I think it's better
> > Maybe, I don't understand whyu you need to add if (time_offset_ns >=3D
> > 100 * USECOND) which was not here before.
> I'm working to add bitbanging i2c so I do not want the small delay to be
> impacted by the pull
> =

then I suggest you first add the poll change without this test, and
then add this test once you add bitbanging i2c. That will make the
change more understandable.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
