Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OrBm1-0000kT-Uu
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 15:32:22 +0000
Date: Thu, 2 Sep 2010 17:32:20 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20100902153220.GR14214@pengutronix.de>
References: <20100902141001.GA28968@game.jcrosoft.org>
	<1283436624-29567-5-git-send-email-plagnioj@jcrosoft.com>
	<20100902152933.GQ14214@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100902152933.GQ14214@pengutronix.de>
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
Subject: Re: [PATCH 5/9] vsprintf: add %w and %w support to print unit
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello,

On Thu, Sep 02, 2010 at 05:29:33PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Jean-Christophe,
> =

> On Thu, Sep 02, 2010 at 04:10:20PM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > Show a '%w' or %W thing.
> > This will show a frequency or byte at format xxx[.xxx] [ kMG]
> > the precision can not excess the base kMG of the current unit
> > otherwise it will be automatically reduce
> > if no precision is specified and there is rest we will use a default
> > precision of 3 as 66.667 M
> > base will be typically 1000 for Hz or B and 1024 for iB
> I see this used e.g. as:
> =

> 	printk("%WiB", somevalue)
> =

> right?  hmm, what if somevalue is say 5?  If I understand correctly the
> output then is: "5 iB".
[I forgot to complete this, sorry]

"5 iB" looks ugly, doesn't it?  Do you care enough to fix that?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
