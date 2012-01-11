Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rl222-0000jx-6M
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 17:32:16 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Wed, 11 Jan 2012 17:32:04 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317EF443@DBDE01.ent.ti.com>
References: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
 <1326293842-3063-1-git-send-email-premi@ti.com>
In-Reply-To: <1326293842-3063-1-git-send-email-premi@ti.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [PATCH 0/5] ARM omap: Some fixes and enhancements
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "J.Kilb@phytec.de" <J.Kilb@phytec.de>

> -----Original Message-----
> From: Premi, Sanjeev 
> Sent: Wednesday, January 11, 2012 8:27 PM
> To: barebox@lists.infradead.org
> Cc: Premi, Sanjeev
> Subject: [PATCH 0/5] ARM omap: Some fixes and enhancements
> 

It appears that something went wrong in my script for
sending patches and "cc:" list was stripped.

Specifically adding cc: here for review of these patches.

~sanjeev

> First two patches in this series are fixes to problems in the
> existing code.
> 
> Next two patches enable specific features on the OMAP3EVM.
> 
> The last patch is an enhancement to avoid manual copy each
> time barebox is built as the primary bootloader i.e. in the
> xload configuration.
> 
> Sanjeev Premi (5):
>   ARM omap: Use updated config option
>   ARM omap3beagle: Fix incorrect base addresses
>   ARM omap3evm: Allow building first stage bootloader
>   ARM omap3evm: Enable HSMMC device
>   ARM omap: Set IFT target as MLO
> 
>  arch/arm/Makefile                       |    5 +++--
>  arch/arm/boards/omap/board-beagle.c     |   10 +++++-----
>  arch/arm/boards/omap/board-omap3evm.c   |    7 ++++++-
>  arch/arm/boards/omap/board-sdp343x.c    |    2 +-
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c |    2 +-
>  arch/arm/mach-omap/Kconfig              |    1 +
>  6 files changed, 17 insertions(+), 10 deletions(-)
> 
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
