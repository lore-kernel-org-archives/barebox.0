Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr7Q-0007cL-C8
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:59:06 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 10:57:58 +0200
References: <1336984452-32194-1-git-send-email-shc_work@mail.ru>
In-Reply-To: <1336984452-32194-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141057.58795.jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/2] PCM038: Move USBH2 initialization to PCM970
To: barebox@lists.infradead.org

Alexander Shiyan wrote:
> [...]
> @@ -260,19 +238,6 @@ static int pcm038_devices_init(void)
>  		PA29_PF_VSYNC,
>  		PA30_PF_CONTRAST,
>  		PA31_PF_OE_ACD,
> -		/* USB host 2 */
> -		PA0_PF_USBH2_CLK,
> -		PA1_PF_USBH2_DIR,
> -		PA2_PF_USBH2_DATA7,
> -		PA3_PF_USBH2_NXT,
> -		PA4_PF_USBH2_STP,
> -		PD19_AF_USBH2_DATA4,
> -		PD20_AF_USBH2_DATA3,
> -		PD21_AF_USBH2_DATA6,
> -		PD22_AF_USBH2_DATA0,
> -		PD23_AF_USBH2_DATA2,
> -		PD24_AF_USBH2_DATA1,
> -		PD26_AF_USBH2_DATA5,
>
> [...]
>
> +#ifdef CONFIG_USB
> +static void pcm970_usbh2_init(void)
> +{
> +	int i;
> +	uint32_t temp;
> +	unsigned int mode[] = {
> +		/* USB Host 2 */
> +		PA0_PF_USBH2_CLK,
> +		PA1_PF_USBH2_DIR,
> +		PA2_PF_USBH2_DATA7,
> +		PA3_PF_USBH2_NXT,
> +		PA4_PF_USBH2_STP,
> +		PD19_AF_USBH2_DATA4,
> +		PD20_AF_USBH2_DATA3,
> +		PD21_AF_USBH2_DATA6,
> +		PD22_AF_USBH2_DATA0,
> +		PD23_AF_USBH2_DATA2,
> +		PD24_AF_USBH2_DATA1,
> +		PD26_AF_USBH2_DATA5,
> +	};
>
> [...]

This changes the initialization of the pins form 'always' to 'sometimes". I 
feel better if pins are physically connected they also should be initialized. 
And if the USB software feature is disable they should get initialized as 
well to keep the signals in a sane state to not confuse externally attached 
devices (in this case it could be useful to configure them as GPIO instead 
with reasonable directions and levels).

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
