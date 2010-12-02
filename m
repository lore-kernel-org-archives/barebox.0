Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PODUf-00028h-5A
	for barebox@lists.infradead.org; Thu, 02 Dec 2010 18:02:58 +0000
Date: Thu, 2 Dec 2010 18:52:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101202175202.GC4450@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
	<20101129205350.GZ6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101129205350.GZ6017@pengutronix.de>
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
Subject: Re: [PATCH 0/12] cfi_flash: improvment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

Hi,

	update without the __raw_

please pull
The following changes since commit 4a7f56056d6aa12a0449f03eb038e4d2bf7fdd49:

  scripts: Adapt checkpatch.pl for barebox. (2010-11-29 21:56:05 +0100)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git cfi

Jean-Christophe PLAGNIOL-VILLARD (12):
      cfi_flash: move intel real protect flash support to cfi_flash_intel.c
      cfi_flash: add Atmel real protect flash support
      cfi_flash: move flash_read_uchar from inline to noinline
      cfi_flash: use amd and standard reset flash command at probing
      cfi_flash: synchronize command offsets with Linux CFI driver
      cfi_flash: update manufacturer id flash support
      cfi_flash: Introduce read and write accessors
      cfi_flash: Read whole QRY structure in one go
      cfi_flash: do not reset flash when probe fails
      cfi_flash: move reset command assigment to specific chipset init function
      cfi_flash: introduce flash cmdset fixup
      cfi_flash_amd: Add manufacturer-specific fixups

 drivers/nor/cfi_flash.c       |  303 +++++++++++++++++++----------------------
 drivers/nor/cfi_flash.h       |  120 +++++++++++++----
 drivers/nor/cfi_flash_amd.c   |  172 ++++++++++++++++++++----
 drivers/nor/cfi_flash_intel.c |   52 ++++++--
 4 files changed, 420 insertions(+), 227 deletions(-)

Best Regards,
J.
On 21:53 Mon 29 Nov     , Sascha Hauer wrote:
> Hi J,
> 
> On Fri, Nov 26, 2010 at 08:43:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	the following patch series improve the current flash
> > 	by adding the atmel flash supportm fixing some issues and factorising
> > 	more the code
> > 
> > 	Found during the adding of the at91rm9200ek
> > 
> > please pull
> > The following changes since commit 53dbaf3fc7b8371ed1e24ef96715e41d60b8ebc3:
> > 
> >   Merge branch 'master' into next (2010-11-19 09:35:15 +0100)
> 
> Nice. I like this series.
> 
> Can we use readl/writel instead? The __raw_ versions do not exist on
> architectures other than ARM.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
