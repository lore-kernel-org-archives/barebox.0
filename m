Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uuljo-000478-Nu
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 15:46:29 +0000
Date: Thu, 4 Jul 2013 17:46:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704154607.GE516@pengutronix.de>
References: <51D57B60.3020003@knowtrek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51D57B60.3020003@knowtrek.com>
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
Subject: Re: Using older barebox  (>2012.04) to load new barebox?
To: Adam Furmanczuk <afurmanczuk@knowtrek.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 04, 2013 at 03:40:48PM +0200, Adam Furmanczuk wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Hi all,
> 
> on my ICnova mx53 so dimm board I am currently bound to barebox
> version 2012.03.0-00162. There is no "global" and no "go" procedure,
> that help me in current barebox release.
> 
> Runing "bootm /mnt/barebox.bin"
> where barebox.bin is the compiled 2013.05 or 2013.06 version does not
> work, output: "Unknown OS type"..
> 
> There is however the "bootsrc" variable, how can I find more variables?
> For example eth0 exists, and devinfo eth0 gives me network configuration
> 
> I wanted to somehow "chainload" one barebox into the other. How can I
> achieve that? Flashing is currently no option, I have too little
> experience with openocd.

Looking at the datasheet there is pin 8 connected with BOOT_MODE[0|1].
This maybe allows you to use USB update mode. Try pulling this pin up.
Try connecting the USB OTG port to a PC, powercycle the board and do a
lsusb. DO you see something with 'Freescale' in the list?

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
