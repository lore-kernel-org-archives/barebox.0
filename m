Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2tHc-0003PU-5w
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 05:45:05 +0000
Date: Tue, 25 Apr 2017 07:44:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170425054442.borbh2frns3pkcua@pengutronix.de>
References: <20170424163559.22379-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170424163559.22379-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] eeprom: at24: add the "read-only" dt parameter support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 24, 2017 at 07:35:59PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/eeprom/at24.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> index 1227286fbe..050a35aed8 100644
> --- a/drivers/eeprom/at24.c
> +++ b/drivers/eeprom/at24.c
> @@ -454,6 +454,10 @@ static int at24_probe(struct device_d *dev)
>  	at24->cdev.size = chip.byte_len;
>  
>  	writable = !(chip.flags & AT24_FLAG_READONLY);
> +
> +	if (of_get_property(dev->device_node, "read-only", NULL))
> +		writable = 0;
> +
>  	if (writable) {
>  		unsigned write_max = chip.page_size;
>  
> -- 
> 2.11.0
> 
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
