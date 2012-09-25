Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGZld-00022H-OZ
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 18:21:58 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 78F3CFFA59A
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 20:27:55 +0200 (CEST)
Date: Tue, 25 Sep 2012 20:19:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120925181925.GN26553@game.jcrosoft.org>
References: <20120924093122.GD26553@game.jcrosoft.org>
 <1348593966.3396.46.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348593966.3396.46.camel@coredoba.hi.pengutronix.de>
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
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:26 Tue 25 Sep     , Jan L=FCbbe wrote:
> On Mon, 2012-09-24 at 11:31 +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >  include/linux/phy.h                             |  266 +++++++++++++++=
+++++++++++
> >  include/miidev.h                                |   51 +----
> =

> We now have a "struct mii_bus" in include/linux/phy.h and
> include/miidev.h. Is this intentional?
miidev is dropped

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
