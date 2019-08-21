Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KMi-0002Bz-Ld
 for barebox@lists.infradead.org; Wed, 21 Aug 2019 06:45:06 +0000
Date: Wed, 21 Aug 2019 08:45:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190821064503.qyjz2s453rlnjjri@pengutronix.de>
References: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] ARM: socfpga: fix xload on arria10
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 19, 2019 at 12:00:46PM +0200, Steffen Trumtrar wrote:
> Since the commit
> 	5a1a5ed2537d7d12f851f3778707681d6c08d6e8
> 	ARM: images: use piggydata
> 
> the loading mechanism in the arria10 xload is neither functional nor needed.
> Now, barebox has/can be loaded like a normal image, so the filesize, that is
> written to the barebox header, can be evaluated.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/arria10-xload.c | 65 ++++++---------------------
>  images/Makefile.socfpga               |  2 +-
>  2 files changed, 14 insertions(+), 53 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
