Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f78aJ-0000yj-Dg
 for barebox@lists.infradead.org; Fri, 13 Apr 2018 23:58:29 +0000
Date: Sat, 14 Apr 2018 01:58:15 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180413235815.h4zgmhhweqexqbcx@pengutronix.de>
References: <20180413233053.15570-1-u.kleine-koenig@pengutronix.de>
 <20180413233053.15570-3-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180413233053.15570-3-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 3/4] pci: improve debug output
To: barebox@lists.infradead.org

Hello,

On Sat, Apr 14, 2018 at 01:30:52AM +0200, Uwe Kleine-K=F6nig wrote:
>  		if (ALIGN(*last, size) + size > dev->bus->resource[restype]->end) {
> -			pr_debug("BAR does not fit within bus %s res\n", type);
> +			pr_debug(" pbar%d: !! type=3D%s allocbase=3D0x%08x + size=3D0x%08x > =
resource_end=3D%pa (barval=3D%08x)\n",
> +				 bar, type, ALIGN(*last, size), size, &dev->bus->resource[restype]->=
end, barval);

slightly related: I have a machine where this new line results in:

	pci:  pbar0: !! type=3DNP allocbase=3D0x01800000 + size=3D0x00800000 > res=
ource_end=3D0x01efffff (barval=3Dff800000)

This makes me wonder if the LHS of the check needs to read

	ALIGN(*last, size) + size - 1

. I will think about this after sleeping, and then probably send a patch
for that.

Best regards
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
