Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEgCe-0006l8-Fo
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 13:22:17 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 88EE4FF8BEE
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 14:33:35 +0100 (CET)
Date: Sun, 10 Mar 2013 14:17:57 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130310131757.GC11170@game.jcrosoft.org>
References: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] net: fec: Use standard phy type defines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:03 Sat 09 Mar     , Sascha Hauer wrote:
> I've never seen a board using sevenwire, so remove this from
> the fec driver. Also, since we now have standard phy type
> defines in include/linux/phy.h, use them in the fec platform_data
> instead of a fec specific enum.

drop the phy_init too

we have register_fixup for this now
> 
> Sascha
> 
> ----------------------------------------------------------------
> Sascha Hauer (2):
>       net: fec: drop sevenwire support
>       net: fec: use standard phy type defines
> 
>  arch/arm/boards/ccxmx51/ccxmx51.c                 |  2 +-
>  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |  2 +-
>  arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  2 +-
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |  2 +-
>  arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |  2 +-
>  arch/arm/boards/freescale-mx25-3-stack/3stack.c   |  2 +-
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c     |  2 +-
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c   |  2 +-
>  arch/arm/boards/freescale-mx51-pdk/board.c        |  2 +-
>  arch/arm/boards/freescale-mx53-loco/board.c       |  2 +-
>  arch/arm/boards/freescale-mx53-smd/board.c        |  2 +-
>  arch/arm/boards/freescale-mx6-arm2/board.c        |  2 +-
>  arch/arm/boards/freescale-mx6-sabrelite/board.c   |  2 +-
>  arch/arm/boards/freescale-mx6-sabresd/board.c     |  2 +-
>  arch/arm/boards/guf-cupid/board.c                 |  2 +-
>  arch/arm/boards/guf-neso/board.c                  |  2 +-
>  arch/arm/boards/guf-vincell/board.c               |  2 +-
>  arch/arm/boards/imx27ads/imx27ads.c               |  2 +-
>  arch/arm/boards/karo-tx25/board.c                 |  2 +-
>  arch/arm/boards/karo-tx28/tx28-stk5.c             |  2 +-
>  arch/arm/boards/karo-tx51/tx51.c                  |  2 +-
>  arch/arm/boards/karo-tx53/board.c                 |  2 +-
>  arch/arm/boards/pcm038/pcm038.c                   |  2 +-
>  arch/arm/boards/pcm043/pcm043.c                   |  2 +-
>  arch/arm/boards/phycard-i.MX27/pca100.c           |  2 +-
>  arch/arm/boards/tqma53/board.c                    |  2 +-
>  arch/ppc/boards/pcm030/pcm030.c                   |  2 +-
>  drivers/net/fec_imx.c                             | 70 ++++++++--------------
>  drivers/net/fec_imx.h                             |  1 -
>  drivers/net/fec_mpc5200.c                         | 71 +++++++----------------
>  drivers/net/fec_mpc5200.h                         |  1 -
>  include/fec.h                                     | 13 +----
>  32 files changed, 74 insertions(+), 136 deletions(-)
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
