Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2Yly-0000SU-PR
 for barebox@lists.infradead.org; Fri, 04 Nov 2016 07:18:47 +0000
Date: Fri, 4 Nov 2016 08:18:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161104071821.jqrhtfmgz3432527@pengutronix.de>
References: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKZffXFSfTJJiwj2ZOB7nT-DWZ7_AqyysZkavNM++c4LSp6tZg@mail.gmail.com>
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
Subject: Re: Configure RAM size on iMX53 board
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Thu, Nov 03, 2016 at 09:30:03PM +0100, Jose Luis Zabalza wrote:
> Hello everybody
> 
> I have two iMX53 custom boards. They are the same board but 512MB vs
> 1GB RAM version.  Both boards are working with the same Uboot binary
> but I would like use Barebox.
> 
> I have to be able to run Barebox on 1GB version but the same Barebox
> binary don't work on 512MB version.
> 
> I use imx-usb-loader to put Barebox on the board. On 1GB version
> Barebox are working OK and load Linux kernel successfully. On 512MB
> Barebox are loaded successfully but don't work. lsusb tell me the
> board is working on Serial Download mode yet. No message is printed on
> the console.
> 
> Do I have to set Barebox for work with different RAM size?

Just like Andrey already said, barebox detects the RAM size by reading
back the values from the SDRAM controller to determine its memory
layout, so the configured values must be correct. In your case they can
only be correct for the 1GB version.

What you can do in this case is:

- in your boards lowlevel.c detect your actual RAM size by testing for
  mirrors in the SDRAM Address space.
- Instead of imx53_barebox_entry() call barebox_arm_entry() with the
  actual RAM size.

This should already bring you through the lowlevel setup succesfully.

Then in your board file add this:

#include <mach/esdctl.h>

static int myboard_init(void)
{
	imx_esdctl_disable();

	arm_add_mem_device("ram0", MX53_CSD0_BASE_ADDR, size);

	return 0;
}
core_initcall(myboard_init);

Note you can't use a variable to safe the calculated SDRAM size from
lowlevel.c to your board file. It's probably best to do the same test
again.

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
