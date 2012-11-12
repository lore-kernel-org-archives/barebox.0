Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXocx-0004Ut-Th
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:40:16 +0000
Date: Mon, 12 Nov 2012 08:40:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112074014.GL10369@pengutronix.de>
References: <20121103204613.GZ29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121103204613.GZ29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] i2c fix + prepare for at24 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 03, 2012 at 09:46:13PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	algo-bit: fix sequential read/write support
> 
> 	i2c: add id_table support
> 	i2c: add i2c_new_dummy
> 
> 	This prepare for the at24 eeprom support
> 
> The following changes since commit 5c90416b6ffb8d4ca7c4bc6aff92578b555cb965:
> 
>   i2c: add versatile support (2012-11-02 02:17:04 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/i2c
> 
> for you to fetch changes up to 5526278ac77ecd7109c9c1bbc35d7c74875902e7:
> 
>   i2c: add id_table support (2012-11-03 13:33:54 +0800)

Applied, thanks

Sascha

> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       i2c: algo-bit add missing acknak
>       i2c: introduce i2c_new_dummy
>       i2c: add id_table support
> 
>  drivers/i2c/algos/i2c-algo-bit.c |   20 ++++++++++++++++++++
>  drivers/i2c/i2c.c                |   45 ++++++++++++++++++++++++++++++++++++++++++++-
>  include/i2c/i2c.h                |    8 ++++++++
>  3 files changed, 72 insertions(+), 1 deletion(-)
> 
> Best Regards,
> J.
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
