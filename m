Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbtTp-00068Y-TE
 for barebox@lists.infradead.org; Mon, 13 May 2013 14:11:58 +0000
Date: Mon, 13 May 2013 16:11:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513141135.GT32299@pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130513105722.GP32299@pengutronix.de>
 <5190E56F.9080903@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5190E56F.9080903@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Mon, May 13, 2013 at 03:06:55PM +0200, Sebastian Hesselbarth wrote:
> On 05/13/13 12:57, Sascha Hauer wrote:
> >On Mon, May 13, 2013 at 11:17:21AM +0200, Sebastian Hesselbarth wrote:
> >>The regbase pointer is required as early debug _will_ access register
> >>before and after remap and there is no way around it. But
> >>mvreadl/mvwritel will be limited to code that sits in mach-mvebu, all
> >>drivers will depend on DT.
> >
> >Having the register base as variable sounds like a good idea. This
> >should give us some more flexibility, no matter what we do later.
> >
> >Please note that normally barebox images are expected to be runnable
> >second stage (bootm barebox.bin). Though not really mandatory this still
> >is a nice feature for development. This becomes difficult to support if
> >the initial code expects the registers at 0xd0000000, hence I suggested
> >remapping it in the kwb image so that all second stage code can already
> >work on the remapped registers.
> =

> Yeah, this is bugging Thomas and me for some time. The tricky part in
> this is, that the register for setting the internal register base is in
> the internal registers itself. You don't know the base address, you
> cannot remap it - you can't even read it. Thomas is working on
> something, but he will have to comment on that.

Dosen=F6ffner innenliegend - Can opener inside ;)

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
