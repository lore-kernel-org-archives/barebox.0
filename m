Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiPMg-0005kC-Ex
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 11:50:43 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E9AC71008083
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 12:51:42 +0100 (CET)
Date: Wed, 4 Jan 2012 12:44:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104114426.GA1810@game.jcrosoft.org>
References: <1325669809-32637-1-git-send-email-eric@eukrea.com>
 <1325669809-32637-4-git-send-email-eric@eukrea.com>
 <20120104104741.GG18008@game.jcrosoft.org>
 <20120104121015.254532c7@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120104121015.254532c7@eb-e6520>
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
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 12:10 Wed 04 Jan     , Eric B=E9nard wrote:
> Hi Jean-Christophe,
> =

> Le Wed, 4 Jan 2012 11:47:41 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > On 10:36 Wed 04 Jan     , Eric B=E9nard wrote:
> > > without this, usb gadget can't enumerate during boot once the
> > > timeout command is launched (thus preventing usbserial console
> > > access to take control of the board before autoboot)
> > > =

> > > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > =

> > I send a patch to put it in the is_timeout c code
> > =

> I just saw it.
> =

> > I think it's better
> Maybe, I don't understand whyu you need to add if (time_offset_ns >=3D
> 100 * USECOND) which was not here before.
I'm working to add bitbanging i2c so I do not want the small delay to be
impacted by the pull

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
