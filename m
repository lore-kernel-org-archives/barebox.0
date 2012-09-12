Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBhSN-00060k-Qe
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 07:33:56 +0000
Date: Wed, 12 Sep 2012 09:33:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912073349.GI6180@pengutronix.de>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
 <1347127542-11981-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347127542-11981-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 07/11] Introduce graphic utils
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 08, 2012 at 08:05:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> to Factorise pixel rendering
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/splash.c        |   61 +---------------------------------
>  include/graphic_utils.h  |   13 ++++++++
>  include/image_renderer.h |   20 -----------
>  lib/Makefile             |    1 +
>  lib/bmp.c                |    5 +--
>  lib/graphic_utils.c      |   83 ++++++++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 101 insertions(+), 82 deletions(-)
>  create mode 100644 include/graphic_utils.h
>  create mode 100644 lib/graphic_utils.c
> 
> diff --git a/commands/splash.c b/commands/splash.c
> index 4bddc6c..f4b975b 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -8,66 +8,7 @@
>  #include <fcntl.h>
>  #include <fb.h>
>  #include <image_renderer.h>
> -
> -static u32 get_pixel(struct fb_info *info, u32 color)
> -{
> -	u32 px;
> -	u8 t = (color >> 24) & 0xff;
> -	u8 r = (color >> 16) & 0xff;
> -	u8 g = (color >> 8 ) & 0xff;
> -	u8 b = (color >> 0 ) & 0xff;
> -
> -	if (info->grayscale) {
> -		 px = (r | g | b) ? 0xffffffff : 0x0;
> -		 return px;
> -	}
> -
> -	px = (t >> (8 - info->transp.length)) << info->transp.offset |
> -		 (r >> (8 - info->red.length)) << info->red.offset |
> -		 (g >> (8 - info->green.length)) << info->green.offset |
> -		 (b >> (8 - info->blue.length)) << info->blue.offset;
> -
> -	return px;
> -}
> -
> -static void memsetw(void *s, u16 c, size_t n)
> -{
> -	size_t i;
> -	u16* tmp = s;
> -
> -	for (i = 0; i < n; i++)
> -		*tmp++ = c;
> -}
> -
> -static void memsetl(void *s, u32 c, size_t n)
> -{
> -	size_t i;
> -	u32* tmp = s;
> -
> -	for (i = 0; i < n; i++)
> -		*tmp++ = c;
> -}
> -
> -static void memset_pixel(struct fb_info *info, void* buf, u32 color, size_t size)
> -{
> -	u32 px;
> -	u8 *screen = buf;
> -
> -	px = get_pixel(info, color);
> -
> -	switch (info->bits_per_pixel) {
> -	case 8:
> -		memset(screen, (uint8_t)px, size);
> -		break;
> -	case 16:
> -		memsetw(screen, (uint16_t)px, size);
> -		break;
> -	case 32:
> -	case 24:
> -		memsetl(screen, px, size);
> -		break;
> -	}
> -}

These were introduced with the last patch. The order should be reversed.

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
