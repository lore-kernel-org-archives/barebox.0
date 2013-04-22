Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUJJy-0004oQ-Ip
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 16:10:28 +0000
Date: Mon, 22 Apr 2013 18:10:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130422161022.GI32299@pengutronix.de>
References: <1366620830-8574-1-git-send-email-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366620830-8574-1-git-send-email-linux@rempel-privat.de>
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
Subject: Re: [PATCH 1/3] cfi_flash: add shift option for some cfi memory chips
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <bug-track@fisher-privat.net>

On Mon, Apr 22, 2013 at 10:53:50AM +0200, Oleksij Rempel wrote:
> From: Oleksij Rempel <bug-track@fisher-privat.net>
> 
> diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
> index 8f818ba..6c7cac4 100644
> --- a/drivers/nor/cfi_flash.h
> +++ b/drivers/nor/cfi_flash.h
> @@ -295,7 +295,11 @@ static inline u64 flash_read64(void *addr)
>   */
>  static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
>  {
> +#ifdef CONFIG_DRIVER_CFI_BANK_SHIFT_1
> +	return ((uchar *) (info->start[sect] + (offset * info->portwidth << 1)));
> +#else
>  	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
> +#endif
>  }

Please make this a runtime option configurable via platform data. Making
this a compile time option is not so nice.
Or could this be automatically detected?

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
