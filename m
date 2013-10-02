Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRERX-0005OT-5z
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 04:53:48 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 820EEDC1596
 for <barebox@lists.infradead.org>; Wed,  2 Oct 2013 06:53:23 +0200 (CEST)
Date: Wed, 2 Oct 2013 06:54:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131002045449.GO32444@ns203013.ovh.net>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
 <20131002043119.GM32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131002043119.GM32444@ns203013.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/4] Add support for Voipac X53-DMM-668 module
To: Rostislav Lisovy <lisovy@gmail.com>
Cc: barebox@lists.infradead.org, pisa@cmp.felk.cvut.cz

On 06:31 Wed 02 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 23:35 Tue 01 Oct     , Rostislav Lisovy wrote:
> > This patchset adds support for Voipac X53-DMM-668 module equipped
> > with i.mx53 CPU. More info about the module may be found at:
> > http://www.voipac.com/#X53-DMM-668
> > 
> > The board specific code enables UART0, NAND flash, Ethernet.
> > The flash_header.c containing DCD configuration data is almost
> > the same (except for one line) as the one in freescale-mx53-smd.
> > 
> > 
> 
> squash the 4 patch in one please

I mean the 3 board adding patch into one
> 
> > Rostislav Lisovy (4):
> >   i.mx53: voipac: Change machine type identifier
> >   i.mx53: voipac: Add board specific + flash header constructing code
> >   i.mx53: voipac: Add barebox environment configuration file
> >   i.mx53: voipac: Modify Make- and config-files to enable building of
> >     mx53-voipac
> > 
> >  arch/arm/boards/Makefile                           |    1 +
> >  arch/arm/boards/freescale-mx53-voipac/Makefile     |    3 +
> >  arch/arm/boards/freescale-mx53-voipac/board.c      |  168 ++++++++++++++++++++
> >  arch/arm/boards/freescale-mx53-voipac/env/config   |   46 ++++++
> >  .../boards/freescale-mx53-voipac/flash_header.c    |  102 ++++++++++++
> >  arch/arm/boards/freescale-mx53-voipac/lowlevel.c   |    9 ++
> >  arch/arm/mach-imx/Kconfig                          |   10 ++
> >  arch/arm/tools/mach-types                          |    2 +-
> >  8 files changed, 340 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/boards/freescale-mx53-voipac/Makefile
> >  create mode 100644 arch/arm/boards/freescale-mx53-voipac/board.c
> >  create mode 100644 arch/arm/boards/freescale-mx53-voipac/env/config
> >  create mode 100644 arch/arm/boards/freescale-mx53-voipac/flash_header.c
> >  create mode 100644 arch/arm/boards/freescale-mx53-voipac/lowlevel.c
> > 
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
