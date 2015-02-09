Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YKiVZ-0008Se-6J
 for barebox@lists.infradead.org; Mon, 09 Feb 2015 07:11:50 +0000
Date: Mon, 9 Feb 2015 08:11:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150209071126.GQ12209@pengutronix.de>
References: <1423171292-26728-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423171292-26728-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 0/3] mtd: nand: ONFI probing for x16 devices on i.MX25
 (and others)
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 05, 2015 at 10:21:29PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On an i.MX25 based machine barebox issued a warning during startup:
> =

> 	nand: Trying ONFI probe in 16 bits mode, aborting !
> =

> without much side effects as the NAND chip was detected correctly neverth=
eless.
> =

> On the quest to fix this warning I noticed that there isn't much justific=
ation
> to not probe via ONFI even in x16 mode in the presence of the read_byte
> callback that is correctly used in the ONFI detection code. But removing =
this
> early exit in the generic probe routines brought to light that the imx na=
nd
> driver didn't implement this read_byte callback correctly.
> =

> This series first fixes the imx nand driver to implement the read_byte ca=
llback
> correctly and then "fixes" the ONFI code to try detection even in x16 mod=
e.
> This made the above mentioned warning go away and print
> =

> 	nand: ONFI flash detected
> =

> instead \o/. The generic code change was mostly cherry-picked from Linux,=
 so I
> kept the original author annotation here.
> =

> As an added bonus there is a little optimisation at the end of the series.
> =

> Best regards
> Uwe
> =

> Brian Norris (1):
>   mtd: nand: cleanup ONFI printed errors, warnings
> =

> Uwe Kleine-K=F6nig (2):
>   mtd: nand-imx: fix byte reading in x16 mode
>   mtd: nand-imx: don't copy more bytes than read from hardware

Applied, thanks

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
