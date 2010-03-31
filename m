Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwwtV-0005VB-60
	for barebox@lists.infradead.org; Wed, 31 Mar 2010 12:19:38 +0000
Date: Wed, 31 Mar 2010 14:19:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100331121903.GU2241@pengutronix.de>
References: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <007101cad0b8$eba13150$c2e393f0$@cpdesign.com.au>
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
Subject: Re: Splash screen on mx35 3 stack
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Wed, Mar 31, 2010 at 08:59:53PM +1100, Marc Reilly wrote:
> Hi,
> 
>  
> 
> I have a freescale IMX35PDK (3 stack) and want to get a bmp showing as a
> splash screen, but am not having any luck. (Just getting a white screen,
> although the backlight comes on). All hardware is as-original, using the
> CLAA 800x480 LCD.

I have short circuited pins 2 and 3 of q6 on the personality board to
get power to the LCD. q6 is normally driven by the mc9s08 (pin ptf0). We
did not have any code for this chip at that time and then forgot about
it. As we now have a driver for it it should only be a matter of finding
the right bits to twiddle with. Patches welcome ;)

> 
>  
> 
> To test, I'm simply using the "bmp" command with a small 100x100 test
> picture. No errors are reported, but the screen never changes.

You can do a cp /dev/ram0 /dev/fb0 for some testing without the bmp
command.

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
