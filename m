Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPxJZ-0000FI-A2
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 16:56:37 +0000
Date: Tue, 18 Mar 2014 17:56:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140318165611.GA17250@pengutronix.de>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
 <1394977701-5889-9-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394977701-5889-9-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 08/10] ARM: davinci: add virt2real board support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Mar 16, 2014 at 05:48:19PM +0400, Antony Pavlov wrote:
> The virt2real microcontroller, or virturilka,
> is a miniature board for creation of WiFi
> or internet controllable smart devices.
> 
> See http://virt2real.com for details.
> +/ {
> +	model = "virt2real";
> +
> +	memory {
> +		reg = <0x82000000 0x01000000>;
> +	};
> +
> +	soc {
> +		serial0: serial@1c20000 {
> +			status = "okay";
> +		};
> +
> +		gpio: gpio@1c67000 {
> +			status = "okay";
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		green_led {
> +			label = "green led";
> +			gpios = <&gpio 73 0>;
> +		};

You should use labels without whitespaces. I'm not sure if all layers in
barebox and the kernel handle whitespaces correctly.

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
