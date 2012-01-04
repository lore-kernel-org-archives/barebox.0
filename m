Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiSoH-0000d5-Ix
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 15:31:26 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7C725100CA2B
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 16:32:30 +0100 (CET)
Date: Wed, 4 Jan 2012 16:31:21 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120104163121.38e7c041@eb-e6520>
In-Reply-To: <20120104104741.GG18008@game.jcrosoft.org>
References: <1325669809-32637-1-git-send-email-eric@eukrea.com>
 <1325669809-32637-4-git-send-email-eric@eukrea.com>
 <20120104104741.GG18008@game.jcrosoft.org>
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

Le Wed, 4 Jan 2012 11:47:41 +0100,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> On 10:36 Wed 04 Jan     , Eric B=E9nard wrote:
> > without this, usb gadget can't enumerate during boot once the
> > timeout command is launched (thus preventing usbserial console
> > access to take control of the board before autoboot)
> > =

> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> =

> I send a patch to put it in the is_timeout c code
> =

> I think it's better
> =

I confirm it's better as it also fix the same problem when having a
menu with autoselection.

Thanks !
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
