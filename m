Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbPB-0003cY-3E
 for barebox@lists.infradead.org; Tue, 10 Mar 2020 09:42:30 +0000
Date: Tue, 10 Mar 2020 10:42:25 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200310094225.qphvkdncc4zg3dfr@pengutronix.de>
References: <20200309142026.26208-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309142026.26208-1-ceggers@arri.de>
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
Subject: Re: [PATCH] usb: Add extra delay for device scan
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, Primoz Fiser <primoz.fiser@norik.com>

On Mon, Mar 09, 2020 at 03:20:26PM +0100, Christian Eggers wrote:
> Since b1d9837182, detection of various USB flash drives stopped working.
> While the changes itself look correct, probably the HUB requires some
> "recovery time" between the GET_STATUS commands in order to be able to
> detect devices.
> 
> Our configuration: i.MX6ULL (USB-OTG) with only one port on the root
> HUB. This port is connected to a Microchip USB4916 hub (permanently
> attached). The USB4916 is configured with it's power on defaults which
> means that bPwrOn2PwrGood is set to the maximum (0xFF = 510 ms).
> 
> Fixes: b1d9837182 ("b1d9837182d2b20232234adb36ada2129c3a8152")

This should probably be:?

  Fixes: b1d9837182 ("usb: Change power-on / scanning timeout handling")


 - Roland

> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  drivers/usb/core/hub.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
> index 8874775f17..466bbe527b 100644
> --- a/drivers/usb/core/hub.c
> +++ b/drivers/usb/core/hub.c
> @@ -406,6 +406,9 @@ static int usb_device_list_scan(void)
>  			if (ret)
>  				goto out;
>  		}
> +
> +		/* Avoid hammering the HUB with port scans */
> +		mdelay(25);
>  	}
>  
>  out:
> -- 
> Christian Eggers
> Embedded software developer
> 
> Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
> Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
> Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
> Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
> Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
