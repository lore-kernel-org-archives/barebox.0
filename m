Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPOS-0004Ev-OG
 for barebox@lists.infradead.org; Tue, 12 May 2020 07:32:02 +0000
Date: Tue, 12 May 2020 09:31:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200512073158.GZ5877@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
 <20200511072140.29610-20-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511072140.29610-20-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 19/23] include: bitops: fix dead increment in fls() and
 ffs()
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 11, 2020 at 09:21:36AM +0200, Ahmad Fatoum wrote:
> Static analyzers trip over this and a comment is as descriptive,
> thus replace the dead code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/asm-generic/bitops/ffs.h | 2 +-
>  include/asm-generic/bitops/fls.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/asm-generic/bitops/ffs.h b/include/asm-generic/bitops/ffs.h
> index fbbb43af7dc0..afc2d7b2d19f 100644
> --- a/include/asm-generic/bitops/ffs.h
> +++ b/include/asm-generic/bitops/ffs.h
> @@ -32,7 +32,7 @@ static inline int ffs(int x)
>  		r += 2;
>  	}
>  	if (!(x & 1)) {
> -		x >>= 1;
> +		/* x >>= 1; */

I would rather just drop the dead code.

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
