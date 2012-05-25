Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXo6I-0007kY-Hi
 for barebox@lists.infradead.org; Fri, 25 May 2012 06:34:15 +0000
Date: Fri, 25 May 2012 08:34:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120525063411.GF30400@pengutronix.de>
References: <1337889903-18638-1-git-send-email-eric@eukrea.com>
 <20120524202510.GE30400@pengutronix.de>
 <20120524224640.291aabdd@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120524224640.291aabdd@eb-e6520>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX25: fix eSDHC1 pads
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 24, 2012 at 10:46:40PM +0200, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Thu, 24 May 2012 22:25:10 +0200,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> > On Thu, May 24, 2012 at 10:05:03PM +0200, Eric B=E9nard wrote:
> > > enabling SION bit makes SDHC1 working on the i.MX25.
> > =

> > Can we instead just sync the iomux file with the kernel? I think this
> =

> OK will post the patch syncing barebox & kernel.
> =

> > will make less problems in the longer run. At least as long the iomux
> > files in the kernel still exist...
> > =

> is iomux settings planned to be removed from the kernel ?

I suppose when all i.MX are converted to devicetree and pinmux they will
be removed. I don't know how long this will take though.

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
