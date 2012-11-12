Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXob7-0004Mo-FJ
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:38:22 +0000
Date: Mon, 12 Nov 2012 08:38:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112073819.GK10369@pengutronix.de>
References: <20121103205655.GA29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121103205655.GA29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] i2c: add at24 eeprom support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 03, 2012 at 09:56:55PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this patch serie add the at24 eeprom support based on linux 3.6
> 
> 	the depends on the i2c prepare 1t24 support patch series
> 
> The following changes since commit 5526278ac77ecd7109c9c1bbc35d7c74875902e7:
> 
>   i2c: add id_table support (2012-11-03 13:33:54 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at24
> 
> for you to fetch changes up to fe6968e20c39461df068d5cc15869012be4a3161:

Applied, thanks

Sascha

> 
>   eeprom: add at24 support (2012-11-03 13:46:50 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       import log2 support from linux
>       add roundup and rounddown support
>       eeprom: add at24 support
> 
>  drivers/eeprom/Kconfig  |   19 ++++++++++
>  drivers/eeprom/Makefile |    1 +
>  drivers/eeprom/at24.c   |  460 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/i2c/at24.h      |   35 +++++++++++++++++++
>  include/linux/kernel.h  |   15 ++++++++
>  include/linux/log2.h    |  190 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 720 insertions(+)
>  create mode 100644 drivers/eeprom/at24.c
>  create mode 100644 include/i2c/at24.h
>  create mode 100644 include/linux/log2.h
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
