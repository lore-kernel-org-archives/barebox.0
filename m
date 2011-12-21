Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RdJ72-0005RB-Nd
 for barebox@lists.infradead.org; Wed, 21 Dec 2011 10:09:30 +0000
Date: Wed, 21 Dec 2011 11:09:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111221100915.GQ27267@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
 <20111220140745.GG7899@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111220140745.GG7899@game.jcrosoft.org>
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
Subject: Re: [PATCH 7/9] ARM: move exception vectors away from start of binary
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 20, 2011 at 03:07:45PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:52 Sat 17 Dec     , Sascha Hauer wrote:
> > Traditionally U-Boot and barebox have the exception vectors at
> > the start of the binary. There is no real reason in doing so,
> > because in the majority of cases this data will not be at 0x0
> > where it could be used as vectors directly anyway.
> > This patch puts the vectors into a separate linker section and
> > defines an head function which is placed at the start of the
> > image instead. Putting this in a separate function also has
> > the advantage that it can be placed at the start of images
> > which require an additional header like several Freescale i.MX
> > images. As the head function contains the barebox arm magic
> > those images can now also be detected aas barebox images.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 ++-
> >  arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 ++-
> >  arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 ++-
> >  arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 ++-
> >  .../boards/freescale-mx35-3-stack/flash_header.c   |    3 ++-
> >  arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 ++-
> >  arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 ++-
> >  arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 ++-
> >  arch/arm/cpu/mmu.c                                 |    4 ++--
> >  arch/arm/cpu/start.c                               |   14 +++++++-------
> >  arch/arm/include/asm/barebox-arm-head.h            |   17 +++++++++++++++++
> >  arch/arm/include/asm/barebox-arm.h                 |    2 ++
> >  arch/arm/lib/barebox.lds.S                         |    5 ++++-
> >  13 files changed, 48 insertions(+), 18 deletions(-)
> >  create mode 100644 arch/arm/include/asm/barebox-arm-head.h
> you need to update the rm9200 too

Only the boards which define some non standard entry header need an
update. The rm9200 does not seem to be one of these boards, or am
I missing something?

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
