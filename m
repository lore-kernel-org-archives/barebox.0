Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxHpA-0004eu-UX
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 13:21:53 +0000
Date: Fri, 3 Aug 2012 15:21:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120803132150.GQ1451@pengutronix.de>
References: <OF95E0712B.359A103D-ONC1257A4F.002B3A1C-C1257A4F.002C899A@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF95E0712B.359A103D-ONC1257A4F.002B3A1C-C1257A4F.002C899A@o0802.rafi.inhouse>
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
Subject: Re: boot init code depending on i2c eeprom value
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On Fri, Aug 03, 2012 at 10:06:28AM +0200, christian.buettner@rafi.de wrote:
> Hi all,
> 
> i need to set the pin-mux of the board init code depending on an ID coming 
> from 
> an i2C EEPROM of the board.
> Is it possible to do something like this:
> 
> 
> ...
> 
> //Using the e.g. the postcore_initcall phase to init i2C
> static int
> ecuv6_postcore_init(void)
> {
>         //Set I2C EEPROM (24C32R) PIN MUX
>         mxc_iomux_v3_setup_multiple_pads(i2c_eeprom_pads, 
> ARRAY_SIZE(i2c_eeprom_pads));
>         imx53_add_i2c2(NULL);
>         return 0;
> }
> postcore_initcall(ecuv6_postcore_init);
> 
> //In the console_initcall phase, i2C should be probed to read ID
> static int
> ecuv6_console_init(void)
> {
>         imx53_init_lowlevel(0);
>         ecuv6_set_system_serial();
>  
>         //get_bb_pcb_number reads data from 
>         char bb_ID;
>         bb_ID = get_i2c_ID();
> 
>         //Set Pinmux depending on i2C result
>         if(bb_ID = 0xAB) {
>                 mxc_iomux_v3_setup_multiple_pads(AB_pads, ARRAY_SIZE(
> AB_pads));
>         }
>         else if(bb_ID = 0xCD) {
>                 mxc_iomux_v3_setup_multiple_pads(CD_pads, ARRAY_SIZE(
> CD_pads));
>         }
>  
>         imx53_add_uart0();
> 
>         return 0;
> }
> console_initcall(ecuv6_console_init);
> 
> ...
> 
> 
> Actually this is not working. The i2c_imx:i2c_imx_probe(..) function gets 
> called later.
> Is there a way or concept to do something like this?

You must call get_i2c_ID after registering the i2c device. you can call
mxc_iomux_v3_setup_multiple_pads multiple times, i.e. once for the UART
pins in console_init and once later when you know what hardware you
have.
This of cause does not work when your console pins depend on the
hardware version, in this case you must register your console in a
device_initcall later.

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
