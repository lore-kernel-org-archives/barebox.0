Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTu8r-0003D5-My
 for barebox@lists.infradead.org; Fri, 25 Nov 2011 11:40:30 +0000
Date: Fri, 25 Nov 2011 12:40:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111125114016.GG27267@pengutronix.de>
References: <1322167594-22499-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322167594-22499-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 0/3] Add MCI over SPI support
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On Thu, Nov 24, 2011 at 09:46:31PM +0100, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> This series adds MCI over SPI support to barebox.
> 
> It also makes small changes to nios2 in order to get
> this thing to works. As a matter of fact, SPI master
> drivers needs to support cs_change is you want to use
> MCI over SPI.
> 
> *** BLURB HERE ***

<blurb> applied to next </blurb>

Sascha

> 
> Franck Jullien (3):
>   crypto: Add crc7 function
>   mci: Add MCI over SPI support
>   spi/altera_spi: Add cs_change support
> 
>  arch/nios2/include/asm/spi.h |    1 +
>  crypto/Kconfig               |    3 +
>  crypto/Makefile              |    1 +
>  crypto/crc7.c                |   63 ++++++
>  drivers/mci/Kconfig          |   17 ++
>  drivers/mci/Makefile         |    1 +
>  drivers/mci/mci-core.c       |   69 +++++--
>  drivers/mci/mci_spi.c        |  435 ++++++++++++++++++++++++++++++++++++++++++
>  drivers/spi/altera_spi.c     |   27 +++-
>  include/crc7.h               |   14 ++
>  include/mci.h                |   18 ++
>  11 files changed, 632 insertions(+), 17 deletions(-)
>  create mode 100644 crypto/crc7.c
>  create mode 100644 drivers/mci/mci_spi.c
>  create mode 100644 include/crc7.h
> 
> -- 
> 1.7.7
> 
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
