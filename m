Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty77u-0006Rh-2y
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 20:40:54 +0000
Date: Wed, 23 Jan 2013 21:40:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130123204051.GB1906@pengutronix.de>
References: <20130123092028.GP26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130123092028.GP26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] console none support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 23, 2013 at 10:20:28AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	This patch serie introduce the console none support
> 
> 	this will allow to reduce the barebox significantly special for
> 	bootstrap
> 
> 	As example on at91sam9263 console none vs console simple
> 
> 	barebox.bin		=> 6.5 KiB
> 	zbarebox.bin lzo	=> 3.8 KiB
> 
> The following changes since commit b290fa88fb2c97a1d5b08ded3554c0a464a4562f:
> 
>   at91: usb_a9263: add bootstrap version (2013-01-18 17:17:11 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/console_none
> 

Applied, thanks

BTW for the pcm038_defconfig this saves around 30k which is about 10% of
the binary size. Well, this configuration is not particularly useful,
but still it successfully boots the kernel.

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
