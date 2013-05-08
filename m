Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua7Qp-0006a1-TH
 for barebox@lists.infradead.org; Wed, 08 May 2013 16:41:33 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4CB9EFF8F4E
 for <barebox@lists.infradead.org>; Wed,  8 May 2013 18:41:10 +0200 (CEST)
Date: Wed, 8 May 2013 18:36:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130508163648.GD1884@game.jcrosoft.org>
References: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
 <20130508051106.GS32299@pengutronix.de>
 <6061FD58-D248-4A13-98E4-7AAD7A80CFCF@jcrosoft.com>
 <20130508182526.40de08c6@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130508182526.40de08c6@e6520eb>
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
Subject: Re: [PATCH 1/1] Revert "nand_base: detect more ONFI flash"
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 18:25 Wed 08 May     , Eric B=E9nard wrote:
> Hi Jean-Christophe,
> =

> Le Wed, 8 May 2013 15:30:24 +0800,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > =

> > On May 8, 2013, at 1:11 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Tue, May 07, 2013 at 10:21:39PM +0200, Jean-Christophe PLAGNIOL-VI=
LLARD wrote:
> > >> this brake the nand support on at91sam9x5ek
> > >> where we have a non compliant ONFI nand
> > >> NAND device: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB=
 3,3V 8-bit), 256MiB, page size: 2048, OOB size: 64
> > >> =

> > >> This reverts commit 4c2bdc8728016b3412523e3264651651fe752860.
> > > =

> > > Thank you for letting us know that this patch causes a regression for
> > > you. I this happens, please first try and fix the regression. If that
> > > doesn't work please tell us what about the original patch is so wrong
> > > that it needs to be reverted. With a good explanation it could be that
> > > someone else has an idea. And whatever you do, put the original autho=
r,
> > > Eric in this case, on Cc.
> > =

> > This commit was supposed just able to detect that a Nand is ONFI
> > =

> > but instead it brake supported Nand
> > =

> > So Eric can fix it but I've not time to debug this before 1 month
> > and the few platform that use ONFI are all busy
> > =

> > So as the commit just allow to detect a band is ONFI can we revert it
> > =

> > to keep non-ONFI Nand to work
> > =

> IIRC, I tested this patch on some i.MX board with non ONFI NAND flash
> and that worked fine unless I made a mistake in my tests which is
> always possible.
> =

> I've just sent a patch which may fix your problem, please give it a try
> (only compile tested, not tested on real hardware).
ok will try
> =

> Eric
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
