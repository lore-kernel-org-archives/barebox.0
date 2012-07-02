Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlcuU-0002HI-Eg
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 09:27:11 +0000
Date: Mon, 2 Jul 2012 11:27:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120702092705.GL2698@pengutronix.de>
References: <1340990360-5716-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340990360-5716-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Unused files removed
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2012 at 09:19:20PM +0400, Alexander Shiyan wrote:
> Files "modules.builtin" probably have been copied from kernel tree.
> This files not used by barebox and can be removed safely.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  lib/lzo/modules.builtin          |    2 --
>  lib/zlib_inflate/modules.builtin |    1 -
>  2 files changed, 0 insertions(+), 3 deletions(-)
>  delete mode 100644 lib/lzo/modules.builtin
>  delete mode 100644 lib/zlib_inflate/modules.builtin
> 
> diff --git a/lib/lzo/modules.builtin b/lib/lzo/modules.builtin
> deleted file mode 100644
> index d860562..0000000
> --- a/lib/lzo/modules.builtin
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -kernel/lib/lzo/lzo_compress.ko
> -kernel/lib/lzo/lzo_decompress.ko
> diff --git a/lib/zlib_inflate/modules.builtin b/lib/zlib_inflate/modules.builtin
> deleted file mode 100644
> index 7206225..0000000
> --- a/lib/zlib_inflate/modules.builtin
> +++ /dev/null
> @@ -1 +0,0 @@
> -kernel/lib/zlib_inflate/zlib_inflate.ko
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
