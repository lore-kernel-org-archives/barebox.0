Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvkqE-000205-Ha
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 07:56:39 +0000
Date: Mon, 30 Jul 2012 09:56:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730075615.GJ30009@pengutronix.de>
References: <20120727183103.GX22657@game.jcrosoft.org>
 <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
 <1343413990-31891-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343413990-31891-8-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/12] decompress_unlzo: define decompress_unlzo as
 decompress
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 08:33:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can use decompress in the decompressor
> this will simplify multi decompress support
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  lib/decompress_unlzo.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
> index 0e6a7ad..56abfc6 100644
> --- a/lib/decompress_unlzo.c
> +++ b/lib/decompress_unlzo.c
> @@ -289,3 +289,4 @@ exit_1:
>  exit:
>  	return ret;
>  }
> +#define decompress decompress_unlzo

Shouldn't this be before 5/12?

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
