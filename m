Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9HR-00037U-TF
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 07:59:35 +0000
Date: Mon, 25 Nov 2019 08:59:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125075931.5jokmmwvvepk5riz@pengutronix.de>
References: <20191120073816.16119-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120073816.16119-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] mci: dove: fix dereference of nullable pointer
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Wed, Nov 20, 2019 at 08:38:16AM +0100, Ahmad Fatoum wrote:
> data->{blocks, blocksize, flags} are all used outside of the if clause
> checking whether data is not NULL.
> Fix this to avoid dereferencing null pointers.
> 
> Fixes: bdcf89d274 ("mci: add Marvell Dove SDHCI driver")
> Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/mci/dove-sdhci.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
