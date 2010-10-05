Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P32oJ-0003uo-Tt
	for barebox@lists.infradead.org; Tue, 05 Oct 2010 08:23:44 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 5 Oct 2010 10:21:55 +0200
References: <201010051844.37189.marc@cpdesign.com.au>
In-Reply-To: <201010051844.37189.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010051021.55643.jbe@pengutronix.de>
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
Subject: Re: SD/MMC driver for imx
To: barebox@lists.infradead.org

Marc Reilly wrote:
> Does anybody happen to be working on a driver for mmc/sd cards for imx(35)?
>
> All I'm really looking for is something simple that can read a kernel image
> off a card, no file system need be involved.
>
> Otherwise, any tips for a good starting point would be appreciated. I was
> thinking of using the uboot driver as a starting point.

I'm currently working on an SD/MMC framework and drivers for Samsung S3C2440, 
Freescale i.MX23 and i.MX27. S3C2440 is already working, i.MX23 can read from 
SD cards (but not write yet) and the state of the i.MX27 driver is currently 
unknown. I'm working on these topics in the next few days. I hope it will 
work on all these platforms by the end of this week.

BTW: A FAT filesystem support would be nice to access files on the SD card...

Regards
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
