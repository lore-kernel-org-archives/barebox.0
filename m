Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abjeZ-0004AY-Vw
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 06:56:02 +0000
Date: Fri, 4 Mar 2016 07:55:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160304065537.GA21869@pengutronix.de>
References: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/5] efi: fix memory leak in error path
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 02, 2016 at 09:50:33PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/efi/efi/efi-device.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Applied all to master, thanks

Sascha

> 
> diff --git a/arch/efi/efi/efi-device.c b/arch/efi/efi/efi-device.c
> index 7db8e48..678a283 100644
> --- a/arch/efi/efi/efi-device.c
> +++ b/arch/efi/efi/efi-device.c
> @@ -168,8 +168,10 @@ static struct efi_device *efi_add_device(efi_handle_t *handle, efi_guid_t **guid
>  
>  	efiret = BS->open_protocol(handle, &efi_device_path_protocol_guid,
>  			&devpath, NULL, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
> -	if (EFI_ERROR(efiret))
> +	if (EFI_ERROR(efiret)) {
> +		free(guidarr);
>  		return ERR_PTR(-EINVAL);
> +	}
>  
>  	efidev = xzalloc(sizeof(*efidev));
>  
> -- 
> 2.5.0
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
