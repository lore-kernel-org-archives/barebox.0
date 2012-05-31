Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sa8l1-0004oz-EU
 for barebox@lists.infradead.org; Thu, 31 May 2012 17:01:56 +0000
Date: Thu, 31 May 2012 19:01:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120531170121.GQ30400@pengutronix.de>
References: <CAOoHCj8GbWPQRoPq8+dCnrOS-_gttcKa_VOEup-7noOKL-Ljyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOoHCj8GbWPQRoPq8+dCnrOS-_gttcKa_VOEup-7noOKL-Ljyg@mail.gmail.com>
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
Subject: Re: MTD NAND updates
To: Dirk =?iso-8859-15?Q?H=F6rner?= <dirker@gmail.com>
Cc: barebox@lists.infradead.org

Hi Dirk,

On Thu, May 31, 2012 at 06:31:20PM +0200, Dirk H=F6rner wrote:
> Hi List,
> =

> while going through the NAND specific parts of the MTD layer I noticed th=
at
> there are quite a few updates available from recent Linux kernel versions:
>  * detection of flashes via ONFI
>  * improved detection of flashes via extid
>  * added device id's in the hard-coded table
> =

> I'd like to provide some patches, just a few questions:
>  * should I base them on master or next?

master is fine. I'll handle the conflicts if necessary.

>  * should I try to cherry-pick updates from the kernel or should I just
> merge stuff from the kernel and send patches split into logical parts
> (onfi, extid, id additions)?

Splitting into logical parts seems to make the most sense. If it's just
a single patch you can also cherry-pick it, but we don't need the whole
feature-add-then-several-bugfixes history.

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
