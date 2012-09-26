Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGmnU-0007md-ME
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 08:16:45 +0000
Date: Wed, 26 Sep 2012 10:16:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926081641.GL1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/7] [RFC][PATCH] archosg9: add support for tablet
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 12:59:47AM +0200, vj wrote:
> Hello,
> A this is my first contribution, so I'm basically requesting for comments.
> 
> The attached patch adds support for Archos G9 tablet wich uses an OMAP4460 cpu.
> The tablet by default only boots from internal flash, so to test
> barebox on it a hardware tweak is required: change the sys_boot
> configuration.  Once done the tablet can be booted with the following
> command:
> A sudo scripts/usbboot <first_stage> <rootfs>
> 
> The patch contains
> A 1.- specific changes for OMAP4460
> A 2.- support for usb-booting
> A 3.- support for console on usb
> A 4.- support for file transfer through usb
> A 5.- some minor bug fixes
> A 6.- adds support for archosg9 board
> 
> A question I have is what does omap_vector_init do?
> It breaks usb-booting.
> An improvement to be done would be to split the file
> "scripts/usbboot.c" into a header and two c files, but the Makefile
> framework seemed to me to do not allow that.
> 
> In any case the patch should be tested with other boards to check it
> does not breaks something.


This is very interesting stuff indeed.

Now that I read through the series I can say that the biggest single
problem with it is the missing context of filenames and function names.
All OMAP specific stuff should have a omap_ or omap4_ prefix.

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
