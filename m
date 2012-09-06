Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9ZZc-0002Ll-MN
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 10:44:37 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E6EABFF8A74
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 12:52:12 +0200 (CEST)
Date: Thu, 6 Sep 2012 12:44:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120906104455.GH20330@game.jcrosoft.org>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
 <1346927845.3775.2.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346927845.3775.2.camel@coredoba.hi.pengutronix.de>
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
Subject: Re: [PATCH 01/12] add barebox logo
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:37 Thu 06 Sep     , Jan L=FCbbe wrote:
> Hi,
> =

> On Thu, 2012-09-06 at 08:04 +0200, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> > skip as too big
> =

> This adds 18MB of binary logos to the tree, which is larger than the
> complete current tree. Is this really necessary?
I put the bmp that's why if we drop it we have just 7MiB

and compare tot he linux tree we have a small tree

> =

> Perhaps we could build the required files on demand from an SVG or
> something?
no sorry no svg availlable

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
