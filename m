Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rd0Qt-0003me-0i
 for barebox@lists.infradead.org; Tue, 20 Dec 2011 14:12:44 +0000
Received: from mail173.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 10899FFBAAC
 for <barebox@lists.infradead.org>; Tue, 20 Dec 2011 15:13:16 +0100 (CET)
Date: Tue, 20 Dec 2011 15:07:45 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111220140745.GG7899@game.jcrosoft.org>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:52 Sat 17 Dec     , Sascha Hauer wrote:
> Traditionally U-Boot and barebox have the exception vectors at
> the start of the binary. There is no real reason in doing so,
> because in the majority of cases this data will not be at 0x0
> where it could be used as vectors directly anyway.
> This patch puts the vectors into a separate linker section and
> defines an head function which is placed at the start of the
> image instead. Putting this in a separate function also has
> the advantage that it can be placed at the start of images
> which require an additional header like several Freescale i.MX
> images. As the head function contains the barebox arm magic
> those images can now also be detected aas barebox images.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 ++-
>  arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 ++-
>  arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 ++-
>  arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 ++-
>  .../boards/freescale-mx35-3-stack/flash_header.c   |    3 ++-
>  arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 ++-
>  arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 ++-
>  arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 ++-
>  arch/arm/cpu/mmu.c                                 |    4 ++--
>  arch/arm/cpu/start.c                               |   14 +++++++-------
>  arch/arm/include/asm/barebox-arm-head.h            |   17 +++++++++++++++++
>  arch/arm/include/asm/barebox-arm.h                 |    2 ++
>  arch/arm/lib/barebox.lds.S                         |    5 ++++-
>  13 files changed, 48 insertions(+), 18 deletions(-)
>  create mode 100644 arch/arm/include/asm/barebox-arm-head.h
you need to update the rm9200 too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
