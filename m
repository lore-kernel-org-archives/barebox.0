Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMBnw-0001Mi-0R
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 07:04:04 +0000
Date: Wed, 18 Sep 2013 09:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918070342.GL30088@pengutronix.de>
References: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
 <1379404339-6716-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379404339-6716-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] bootm: add u-boot support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 09:52:19AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Simply do the same as barebox and hope for the best as u-boot does not handle
> runtime address detection for boot quite often. It does only execpt you to
> choose as compiling time.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/bootm.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 599b09a..71200be 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -315,6 +315,12 @@ static struct image_handler barebox_handler = {
>  	.filetype = filetype_arm_barebox,
>  };
>  
> +static struct image_handler uboot_handler = {
> +	.name = "ARM u-boot",
> +	.bootm = do_bootm_barebox,
> +	.filetype = filetype_arm_uboot,
> +};
> +

Wolfgang always emphasizes that it's not possible to start U-Boot second
stage. Most U-Boot images indeed do not support this without hacking the
lowlevel code. We can't support this feature which happens to work on
only some U-Boot images.

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
