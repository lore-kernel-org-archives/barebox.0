Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTrAH-0008HF-TP
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 09:34:20 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4CA82104E21B
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 10:41:24 +0100 (CET)
Date: Thu, 1 Nov 2012 10:32:05 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121101093205.GH29599@game.jcrosoft.org>
References: <20121031120122.GF29599@game.jcrosoft.org>
 <20121031212902.GQ1641@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121031212902.GQ1641@pengutronix.de>
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
Subject: Re: [PATCH 0/2] m25p80: re-import it againt mtd_add_host
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:29 Wed 31 Oct     , Sascha Hauer wrote:
> On Wed, Oct 31, 2012 at 01:01:22PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	so we now create the cdev via mtd
> > 
> > 	This will also simplify sync with linux
> > 
> > 	to avoid the m25p8000 or m25p00 the cdev is still named name m25p and the
> > 	drivers m25p80
> > 
> > 	sync with linux too
> > 
> > 	this patch series is agianst mtd_dataflash support
> > 
> > The following changes since commit 9428c386f876fa3a8871eeea4725a805cea5c367:
> > 
> >   mtd: add dataflash support (2012-10-31 04:48:39 +0800)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git delivery/m25p80
> 
> Sometimes I get the feeling that you do this only to break other peoples
> setup:
I forget to include a fix from my next

I send it and re pushed the brnach

The following changes since commit 9bd9176fdafac1566107da3f3a0ed55094907d91:

  mtd: dataflash: fix spi_transfer init (2012-11-01 02:22:22 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/m25p80

for you to fetch changes up to 3b672b01bb8bba0c61886bdcb85b70009673372d:

  m25p80: sync flash support with the kernel (2012-11-01 02:22:28 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      mtd: introduce mtd_block_isbad
      m25p80: re-import it againt mtd_add_host
      m25p80: sync flash support with the kernel

 arch/arm/boards/freescale-mx6-sabrelite/board.c |    2 +-
 drivers/mtd/core.c                              |   13 +++++-
 drivers/mtd/devices/Kconfig                     |   27 ++++++++++++
 drivers/mtd/devices/Makefile                    |    1 +
 drivers/{nor => mtd/devices}/m25p80.c           |  512 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------------------------------------------------------------
 drivers/mtd/mtdraw.c                            |    2 +-
 drivers/mtd/partition.c                         |    2 +-
 drivers/mtd/ubi/io.c                            |    2 +-
 drivers/nor/Kconfig                             |   27 ------------
 drivers/nor/Makefile                            |    1 -
 drivers/nor/m25p80.h                            |   84 ------------------------------------
 include/linux/mtd/cfi.h                         |   65 ++++++++++++++++++++++++++++
 include/linux/mtd/mtd.h                         |    2 +
 13 files changed, 387 insertions(+), 353 deletions(-)
 rename drivers/{nor => mtd/devices}/m25p80.c (65%)
 delete mode 100644 drivers/nor/m25p80.h
 create mode 100644 include/linux/mtd/cfi.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
