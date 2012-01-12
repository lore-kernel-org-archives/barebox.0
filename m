Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlGN8-0003RT-LR
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 08:50:59 +0000
Date: Thu, 12 Jan 2012 09:50:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120112085035.GX5446@pengutronix.de>
References: <20120111132914.GB958@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/6] code size reduction for xloader
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Wed, Jan 11, 2012 at 02:29:14PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this patch serie wrok on disble non needed code to optimize the size
> 	of barebox specially in the case of non interactive version suc as
> 	xloader for TI and late bootstrap for at91
> 
> 	tis will also iclude a sync of the kconfig need for this
> 
> 
> The following changes since commit 21d0fac1382cbe20dfc95c0a400350632f28cbdb:
> 
>   at91: add Calao TNY-A9260/TNY-A9263/TNY-A9G20 (2012-01-11 09:41:25 +0100)
> 
> are available in the git repository at:
>    git://uboot.jcrosoft.org/barebox.git size-optimisation

Your git server does not work for me. A git pull just stalls. The web
frontend works well though.

Can you check this?

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
