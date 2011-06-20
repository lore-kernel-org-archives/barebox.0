Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYco6-0007u2-1y
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 11:38:20 +0000
Date: Mon, 20 Jun 2011 13:38:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110620113813.GS23771@pengutronix.de>
References: <BANLkTi=DFpLyEQwe62KSjYUn+pGPxPe1CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTi=DFpLyEQwe62KSjYUn+pGPxPe1CQ@mail.gmail.com>
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
Subject: Re: booting pandaboard rev A2 problems
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 17, 2011 at 09:26:46PM +0200, Belisko Marek wrote:
> Hi,
> 
> I'm trying to boot barebox on Panda rev. A2.

Just checked, our panda is rev c3. Maybe you should hunt for differences
in the lowlevel startup code in TIs Xloader which I have not proted
correctly to barebox.

Sascha

> 
> I make panda_xload_defconfig compile and put to FAT SD card partition
> ranamed barebox.bin to u-boot.bin (MLO reads u-boot.bin by default).
> 
> Barebox start but after printing revision number is stuck. I add some
> printks and
> seems it hang in omap_hsmmc_probe funtion after mci_register(&hsmmc->mci) call.
> 
> I try with 2 SD cards and non of them is working.
> 
> Also try to load to flash partition only barebox.bin.itf + barebox.bin
> but this setup also
> doesn't work. AFAIU itf add some data before barebox to be possible to
> boot directly without
> x-loader. When run_shell is called barebox.bin should be copied do
> DDRAM and run.
> 
> Any ideas what should I check.
> 
> Thanks in advance,
> 
> marek
> 
> 
> -- 
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
> 
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> icq: 290551086
> web: http://open-nandra.com
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
