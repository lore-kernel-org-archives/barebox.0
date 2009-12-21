Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgUW-00021A-Er
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:31:58 +0000
Date: Mon, 21 Dec 2009 12:30:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221113052.GG15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210615350.13305@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210615350.13305@localhost>
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
Subject: Re: [PATCH] commands:  Remove reference to non-existent
	CONFIG_CMD_I2C.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 06:17:19AM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   the commands directory doesn't even have an i2c.c source file, so
> it's clearly safe to remove this reference.  although i'm assuming
> that, at some point down the road, there will be an "i2c" command
> since that would be useful.

Ok, applied.

Is a i2c command really useful? For I2C eeproms you would create an
epprom driver which creates a file under /dev/ which you can then access
using the usual mm/mw commands.
Maybe an i2c command could be useful to register a new device on an I2C
bus.

Sascha


> 
> 
> diff --git a/commands/Makefile b/commands/Makefile
> index 134d8b3..1c657dd 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -4,7 +4,6 @@ obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
>  obj-$(CONFIG_CMD_LOADS)		+= loads.o
>  obj-$(CONFIG_CMD_ECHO)		+= echo.o
>  obj-$(CONFIG_CMD_MEMORY)	+= mem.o
> -obj-$(CONFIG_CMD_I2C)		+= i2c.o
>  obj-$(CONFIG_CMD_LOADS)		+= s_record.o
>  obj-$(CONFIG_CMD_MTEST)		+= memtest.o
>  obj-$(CONFIG_CMD_EDIT)		+= edit.o
> 
> rday
> --
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
> ========================================================================
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
