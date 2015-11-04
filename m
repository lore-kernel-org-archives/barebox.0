Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZtwkJ-0000Y5-4k
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 12:00:56 +0000
Date: Wed, 4 Nov 2015 13:00:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151104120032.GM25416@pengutronix.de>
References: <1446450818-19106-1-git-send-email-u74147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446450818-19106-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] lib: font: fbconsole: add custom font support
To: Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Nov 02, 2015 at 03:53:38PM +0800, Du Huanpeng wrote:
> this patch enable you to add new char support. with customer char
> set(no need to be full char set), font size.
> 
> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  drivers/video/fbconsole.c   | 39 +++++++++++++++++++--------------------
>  include/linux/font.h        | 11 ++++++++++-
>  lib/fonts/Kconfig           |  5 +++++
>  lib/fonts/Makefile          |  2 ++
>  lib/fonts/font_7x14.c       |  1 +
>  lib/fonts/font_8x16.c       |  1 +
>  lib/fonts/font_custom_16x.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  lib/fonts/font_mini_4x6.c   |  1 +
>  lib/fonts/fonts.c           | 38 +++++++++++++++++++++++++++++++++++---
>  9 files changed, 118 insertions(+), 24 deletions(-)
>  create mode 100644 lib/fonts/font_custom_16x.c
> 
> diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> index b10503e..dad45c3 100644
> --- a/drivers/video/fbconsole.c
> +++ b/drivers/video/fbconsole.c
> @@ -22,8 +22,8 @@ struct fbc_priv {
>  	struct param_d *par_font;
>  	int par_font_val;
>  
> -	int font_width, font_height;
> -	const u8 *fontdata;
> +	struct font_desc font;
> +

Could you split the change of putting a struct font_desc into struct
fbc_priv into a separate patch? That would make the addition of custom
fonts better reviewable. Also, can we use a struct font_desc *font
rather than struct font_desc font?

Otherwise I think the patch is fine.

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
