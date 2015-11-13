Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx9qr-0007DQ-TV
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 08:36:58 +0000
Date: Fri, 13 Nov 2015 09:36:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113083636.GC8526@pengutronix.de>
References: <1447323205-10743-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447323205-10743-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] font: fbconsole: add custom font support
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Nov 12, 2015 at 02:13:25AM -0800, Du Huanpeng wrote:
> add custom font and charset support. useful for
> non ascii chars, e.g. Chinese and others.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  drivers/video/fbconsole.c   |  5 +++--
>  include/linux/font.h        | 11 ++++++++++-
>  lib/fonts/Kconfig           |  5 +++++
>  lib/fonts/Makefile          |  1 +
>  lib/fonts/font_7x14.c       |  1 +
>  lib/fonts/font_8x16.c       |  1 +
>  lib/fonts/font_custom_16x.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  lib/fonts/font_mini_4x6.c   |  1 +
>  lib/fonts/fonts.c           | 32 ++++++++++++++++++++++++++++++++
>  9 files changed, 98 insertions(+), 3 deletions(-)
>  create mode 100644 lib/fonts/font_custom_16x.c

I just sent a patch to the list which makes it possible to register the
fonts during runtime rather than putting them into an array during
compile time. Could you rebase your patch on this one?
It will allow you to register your (real) custom font more easily.

> diff --git a/lib/fonts/font_7x14.c b/lib/fonts/font_7x14.c
> index fe99871..60cb57e 100644
> --- a/lib/fonts/font_7x14.c
> +++ b/lib/fonts/font_7x14.c
> @@ -4113,4 +4113,5 @@ const struct font_desc font_7x14 = {
>  	.width	= 7,
>  	.height	= 14,
>  	.data	= fontdata_7x14,
> +	.index	= NULL,
>  };

No need to do that. Uninitialized members will be NULL anyway.

> +#include <linux/font.h>
> +#include <common.h>
> +
> +/* place real font data here or set fontdata_custom_16x points to
> + * the address of font data and also setup the index.
> + */
> +
> +static const unsigned char fontdata_custom_16x[] = {
> +	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0x80, 0x01,	/*O______________O*/
> +	0xFF, 0xFF,	/*OOOOOOOOOOOOOOOO*/
> +};

Instead of a completely dummy font maybe we could add some example
characters. Something enough for a chinese hello world maybe? Or some
emoticons.

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
