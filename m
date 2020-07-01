Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqUzy-0003sK-Dq
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:09:31 +0000
Date: Wed, 1 Jul 2020 07:09:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200701050927.GD15485@pengutronix.de>
References: <CAFXsbZpSaZ8t1z20zq=TQyuUsJ_7KYDxjseKKJgRfQQq2pZYQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFXsbZpSaZ8t1z20zq=TQyuUsJ_7KYDxjseKKJgRfQQq2pZYQA@mail.gmail.com>
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
Subject: Re: ARM: dts: vf610-zii-dev-rev-c: Expose fiber EEPROM modules
To: Chris Healy <cphealy@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Sun, Jun 28, 2020 at 06:32:11PM -0700, Chris Healy wrote:
> EEPROM on fiber optic modules present on Rev C ZII VF610 Dev board
> can be exposed as AT24 compatible devices. Add corresponding DT nodes
> needed for that.
> 
> Signed-off-by: Chris Healy <cphealy@gmail.com>
> ---

Applied, thanks

Sascha

> diff --git a/arch/arm/dts/vf610-zii-dev-rev-c.dts
> b/arch/arm/dts/vf610-zii-dev-rev-c.dts
> index 62c70c890..2b2ac6064 100644
> --- a/arch/arm/dts/vf610-zii-dev-rev-c.dts
> +++ b/arch/arm/dts/vf610-zii-dev-rev-c.dts
> @@ -17,6 +17,8 @@
>                  */
>                 switch0-eeprom = &switch0;
>                 switch1-eeprom = &switch1;
> +               fiber-eeprom0 = &fiber_eeprom0;
> +               fiber-eeprom1 = &fiber_eeprom1;
>         };
>  };
> 
> @@ -31,3 +33,19 @@
>                 };
>         };
>  };
> +
> +&sff2_i2c {
> +       fiber_eeprom0: eeprom@50 {
> +               compatible = "atmel,24c04";
> +               reg = <0x50>;
> +               label = "fiber0";
> +       };
> +};
> +
> +&sff3_i2c {
> +       fiber_eeprom1: eeprom@50 {
> +               compatible = "atmel,24c04";
> +               reg = <0x50>;
> +               label = "fiber1";
> +       };
> +};
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
