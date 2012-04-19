Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKlc8-0003ax-F1
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 07:17:17 +0000
Date: Thu, 19 Apr 2012 09:16:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120419071659.GK3852@pengutronix.de>
References: <036401cd1df6$38a4b0d0$a9ee1270$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <036401cd1df6$38a4b0d0$a9ee1270$@com>
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
Subject: Re: New user - having a few issues with MMC
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 18, 2012 at 11:32:41PM -0700, George Pontis wrote:
> Hi fellow barebox users. What a great loader, thanks to all of you for
> sharing your work on this.
> 
>  
> 
> I've brought barebox up on a custom at91sam9g45 board that has both NOR and
> NAND flash, and one SD card connected to the MMC interface. I was previously
> using all these with an older version of u-boot and in Linux, so I am pretty
> sure that the hardware is working properly. 
> 
>  
> 
> For some reason, I can't access any files on a 4G SD card. After booting
> into barebox, there is a /dev/disk0. I can mount it without error, for
> example mount /dev/disk0 fat /mmc. But ls /mmc does not show any content,
> and I know that there are many files there. The card is not partitioned.
> Have I overlooked something ? If not, any suggestions where to look for the
> cause of the problem ?

Sorry, barebox currently can't access anything > 4GB and some pieces may
have problems with 2GB. Please try either a smaller SD Card or add
partition your SD card and add a partition smaller than 2GB.
This is being worked on. Hopefully we have support for bigger SD cards
soon.

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
