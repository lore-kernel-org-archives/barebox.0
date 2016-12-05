Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDoed-0001Ql-CY
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 08:29:44 +0000
Date: Mon, 5 Dec 2016 09:29:19 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20161205082919.vbqtltxd43jw4qvj@pengutronix.de>
References: <1480618503-11376-1-git-send-email-akurz@blala.de>
 <1480671998.17003.37.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1480671998.17003.37.camel@pengutronix.de>
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
Subject: Re: [PATCH] bootm: dont use internal oftree fallback by default
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>

On Fri, Dec 02, 2016 at 10:46:38AM +0100, Lucas Stach wrote:
> Am Donnerstag, den 01.12.2016, 19:55 +0100 schrieb Alexander Kurz:
> > Booting via bootm offers several methods to load oftree data. When no
> > dedicated oftree image is provided, barebox checks for the presence of
> > its own internal oftree, assuming it as a good choice for boot.
> > =

> > This fallback method breaks the usecase when a modern OF-based barebox
> > is used to boot a legacy ATAG dependent non OF based vendor provided ke=
rnel
> > (e.g. ATAGs will be switched off).
> > Unfortunately those kernels are being still actively shipped today.
> > =

> > Change barebox according to the principle of least surprise: when no
> > oftree data is proactively configured, then perform a non-oftree boot.
> > Make the fallback-use of the barebox internal oftree an opt-in feature.
> > =

> > Note: this will break boards where the boot process relied on this feat=
ure,
> > e.g.: oftree based barebox plus oftree based kernel without an explicit
> > given dts. For those boards global.bootm.internal_oftree_fallback=3D1 s=
hould
> > be set.
> > =

> The least surprise on a modern oftree based kernel is that the firmware
> (Barebox) provides the DT, if there isn't an explicit override.
> =

> So NACK on the patch in it's current form. If you have a board where you
> know that the kernel doesn't play along, you may reverse this patch so
> that you can set global.bootm.no_internal_oftree=3D1 in your board code.

Ack for the NAck. And AFAIK you can already today just do

	oftree -f

before calling bootm to discard the internal dtb which should make
barebox fall back to ATAG.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
