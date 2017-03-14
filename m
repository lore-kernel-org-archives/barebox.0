Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cngeQ-0006DU-Dm
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:13:48 +0000
Date: Tue, 14 Mar 2017 08:13:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170314071324.oud2nxg6gusxclo4@pengutronix.de>
References: <20170311160733.18473-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170311160733.18473-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH 1/2] efi: load the protocol expected by the driver
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Mar 11, 2017 at 05:07:32PM +0100, Michael Olbrich wrote:
> The drivers are loaded if any guid provided by the device matches. So load
> the protocol for the matched guid and not for the first guid.
> Otherwise the driver may cast the protocol to the wrong type and proably
> crash.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  drivers/efi/efi-device.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
> index 959878e7f5cf..c5fb404cd36b 100644
> --- a/drivers/efi/efi-device.c
> +++ b/drivers/efi/efi-device.c
> @@ -184,8 +184,6 @@ static struct efi_device *efi_add_device(efi_handle_t *handle, efi_guid_t **guid
>  	efidev->dev.info = efi_devinfo;
>  	efidev->devpath = devpath;
>  
> -	BS->handle_protocol(handle, &guidarr[0], &efidev->protocol);
> -
>  	sprintf(efidev->dev.name, "handle-%p", handle);
>  
>  	efidev->parent_handle = efi_find_parent(efidev->handle);
> @@ -311,8 +309,11 @@ static int efi_bus_match(struct device_d *dev, struct driver_d *drv)
>  	int i;
>  
>  	for (i = 0; i < efidev->num_guids; i++) {
> -		if (!memcmp(&efidrv->guid, &efidev->guids[i], sizeof(efi_guid_t)))
> +		if (!memcmp(&efidrv->guid, &efidev->guids[i], sizeof(efi_guid_t))) {
> +			BS->handle_protocol(efidev->handle, &efidev->guids[i],
> +					&efidev->protocol);
>  			return 0;
> +		}
>  	}
>  
>  	return 1;
> -- 
> 2.11.0
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
