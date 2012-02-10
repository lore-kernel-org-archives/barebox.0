Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rvkzt-00019i-0u
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 07:34:22 +0000
Date: Fri, 10 Feb 2012 08:34:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210073406.GD3852@pengutronix.de>
References: <alpine.DEB.2.02.1202091130540.14123@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202091130540.14123@oneiric>
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
Subject: Re: how to read GPIO values from command line?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Feb 09, 2012 at 11:34:55AM -0500, Robert P. J. Day wrote:
> 
>   i'm looking at the docs and tried the obvious but it didn't seem to
> work.  in order to recognize the version of beagleboard, i can see
> what happens in the u-boot code:
> 
> /*
>  * Routine: get_board_revision
>  * Description: Detect if we are running on a Beagle revision Ax/Bx,
>  *              C1/2/3, C4 or xM. This can be done by reading
>  *              the level of GPIO173, GPIO172 and GPIO171. This should
>  *              result in
>  *              GPIO173, GPIO172, GPIO171: 1 1 1 => Ax/Bx
>  *              GPIO173, GPIO172, GPIO171: 1 1 0 => C1/2/3
>  *              GPIO173, GPIO172, GPIO171: 1 0 1 => C4
>  *              GPIO173, GPIO172, GPIO171: 0 0 0 => xM
>  */
> int get_board_revision(void)
> {
>         int revision;
> 
>         if (!gpio_request(171, "") &&
>             !gpio_request(172, "") &&
>             !gpio_request(173, "")) {
> 
>                 gpio_direction_input(171);
>                 gpio_direction_input(172);
>                 gpio_direction_input(173);
> 
>                 revision = gpio_get_value(173) << 2 |
>                            gpio_get_value(172) << 1 |
>                            gpio_get_value(171);
>         } else {
>                 printf("Error: unable to acquire board revision GPIOs\n");
>                 revision = -1;
>         }
> 
>         return revision;
> }
> 
>   however, in the latest kernel tree, it seems things have changed
> slightly:
> 
> /*
>  * OMAP3 Beagle revision
>  * Run time detection of Beagle revision is done by reading GPIO.
>  * GPIO ID -
>  *      AXBX    = GPIO173, GPIO172, GPIO171: 1 1 1
>  *      C1_3    = GPIO173, GPIO172, GPIO171: 1 1 0
>  *      C4      = GPIO173, GPIO172, GPIO171: 1 0 1
>  *      XMA/XMB = GPIO173, GPIO172, GPIO171: 0 0 0
>  *      XMC = GPIO173, GPIO172, GPIO171: 0 1 0
>  */
> 
>   now that's useful since there are now allegedly different values for
> xM A/B, and xM C, and i have a rev C.
> 
>   so what exactly does one do to read those values?  i tried:
> 
> barebox@Texas Instrument's Beagle:/ gpio_direction_input 171
> barebox@Texas Instrument's Beagle:/ gpio_get_value 171
> 
> but what do i check?  the shell variable $?  i'm not sure what i
> should do next.

Yes, check $?. This assumes that your iomux is set up correctly as Eric
already mentioned. I wonder that there is no iomux setup for the panda
board. You can copy it from U-Boot. It has to arrays of iomux setup:
core_padconf_array_essential and core_padconf_array_non_essential

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
