Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTSc-0006Dp-Sr
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:30:20 +0000
Date: Wed, 17 Jun 2020 10:30:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617083017.GA11869@pengutronix.de>
References: <20200617025816.33834-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617025816.33834-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] kbuild: remove package targets
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Wed, Jun 17, 2020 at 11:58:16AM +0900, Masahiro Yamada wrote:
> This hunk is already out of sync from upstream Linux.
> 
> Barebox does not support package targets, so let's delete this
> rotten code.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  Makefile | 12 ------------
>  1 file changed, 12 deletions(-)

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
