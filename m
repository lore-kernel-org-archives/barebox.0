Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXlfl-0008LX-Mj
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 11:30:27 +0000
Date: Fri, 14 Dec 2018 12:30:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181214113013.2pk6a2fhtdtd555p@pengutronix.de>
References: <20181214092716.8150-1-shc_work@mail.ru>
 <20181214092716.8150-2-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181214092716.8150-2-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/2] ARM: CCMX51: Switch to multiimage support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

Very nice :) I appreciate lowering the number of defconfigs to build.
Looks mostly fine, two small things:

On Fri, Dec 14, 2018 at 12:27:16PM +0300, Alexander Shiyan wrote:
> +#include <arm/imx51-digi-connectcore-jsk.dts>
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart1;
> +
> +	environment@0 {
> +		compatible = "barebox,environment";
> +		device-path = &nfc, "partname:env";
> +		};
> +	};

Some tabs missing here.

> +};
> +
> +&iim {
> +	barebox,provide-mac-address = <&fec 1 9>;
> +};
> +
> +&nfc {
> +	partition@0 {
> +		label = "boot";
> +		reg = <0x00000 0x80000>;
> +	};
> +
> +	partition@1 {
> +		label = "env";
> +		reg = <0x80000 0x40000>;
> +	};

You should add the remaining partitions here aswell and remove
arch/arm/boards/ccxmx51/env/init/mtdparts-nand.

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
