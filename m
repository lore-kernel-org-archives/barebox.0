Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxupX-0007yl-21
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 07:33:07 +0000
Date: Wed, 23 Jan 2013 08:33:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130123073304.GQ1906@pengutronix.de>
References: <20130122143833.GM26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130122143833.GM26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/10 v7] at91: add bootstrap support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2013 at 03:38:33PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	v7:
> 
> 	 Makefile bug fix + typo
> 
> 	v6:
> 	 allow to pass the fstype for mount (omap usbfs)
> 
> 	v5:
> 	 rebase on Sacha SHELL_NONE patch
> 
> 	v4:
> 	 make the code arm & mips supported for barebox head detection
> 
> 	v3:
> 
> 	send correct patch series and pull
> 
> 	can we have it on master the v2 does not cange much since v1
> 
> 	v2:
> 	 fix whitesapce
> 	 fix comment
> 	 fix command default
> 
> 	This patch serie introduce a common bootstrap code
> 	aka xloder for TI and at91bootstrap for Atmel
> 	to barebox
> 
> 	As I do not have with me right now a TI platform I did not switch
> 	it to the new generic bootstrap code.
> 
> 	On at91 add it on the calao usb-a9263 test on nand and spi
> 	This patch serie depends on the previous Sacha patch for SHELL_NONE
> 
> The following changes since commit a0a9331ba745418f1e7871f5bd707e3cc7e89902:
> 
>   startup: call a barebox_main function pointer at the end of the startup (2013-01-17 11:56:24 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91_bootstrap

Applied, thanks

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
