Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJaua-0002a6-02
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 05:25:16 +0000
Date: Mon, 27 Jul 2015 07:24:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150727052454.GT18700@pengutronix.de>
References: <1437813107-21010-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437813107-21010-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] efi: enable blspec in the defconfig
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Jul 25, 2015 at 10:31:47AM +0200, Michael Olbrich wrote:
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  arch/efi/configs/efi_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/efi/configs/efi_defconfig b/arch/efi/configs/efi_defconfig
> index 456f70d32b59..3c9a9dcb956e 100644
> --- a/arch/efi/configs/efi_defconfig
> +++ b/arch/efi/configs/efi_defconfig
> @@ -7,6 +7,7 @@ CONFIG_CMDLINE_EDITING=y
>  CONFIG_AUTO_COMPLETE=y
>  CONFIG_MENU=y
>  # CONFIG_TIMESTAMP is not set
> +CONFIG_BLSPEC=y
>  CONFIG_CONSOLE_ACTIVATE_ALL=y
>  CONFIG_PARTITION_DISK_EFI=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y

Applied, thanks

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
