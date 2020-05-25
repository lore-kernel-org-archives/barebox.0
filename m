Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd641-0006Tn-R9
 for barebox@lists.infradead.org; Mon, 25 May 2020 05:54:19 +0000
Date: Mon, 25 May 2020 07:54:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200525055403.GL11869@pengutronix.de>
References: <20200519163733.2836-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519163733.2836-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] arch/arm/boards: Replace license and copyright
 boilerplate by SPDX identfiers
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 19, 2020 at 06:37:33PM +0200, Uwe Kleine-K=F6nig wrote:
> This adapts all files that were identifed by licensecheck
> (https://salsa.debian.org/build-common-team/licensecheck.git) as
> licensed under the GPL.
> =

> The advantage is that these specifiers are machine-parseable which helps
> license conformance, e.g. for packaging barebox in Debian.
> =

> While touching these files also do some minor comment reformatting to
> get some uniform layout.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since (implicit) v1
> (20200428132405.3624-1-u.kleine-koenig@pengutronix.de):
> =

>  - dropped all hunks that Roland identified as questionable
>  - added a few files that licensecheck was able to identify after an
>    update
>  - fixing some minor style issues, some of them pointed out by Roland
>  - dropped the =A9 in SPDX-FileCopyrightText lines

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
