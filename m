Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHYp-0001Vb-5o
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 11:03:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UEHYn-00066O-F9
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 12:03:29 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UEHYn-0007hs-Dz
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 12:03:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 12:03:25 +0100
Message-Id: <1362827007-28522-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: fec: Use standard phy type defines
To: barebox@lists.infradead.org

I've never seen a board using sevenwire, so remove this from
the fec driver. Also, since we now have standard phy type
defines in include/linux/phy.h, use them in the fec platform_data
instead of a fec specific enum.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      net: fec: drop sevenwire support
      net: fec: use standard phy type defines

 arch/arm/boards/ccxmx51/ccxmx51.c                 |  2 +-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |  2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |  2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |  2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |  2 +-
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c     |  2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |  2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |  2 +-
 arch/arm/boards/freescale-mx53-loco/board.c       |  2 +-
 arch/arm/boards/freescale-mx53-smd/board.c        |  2 +-
 arch/arm/boards/freescale-mx6-arm2/board.c        |  2 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c   |  2 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c     |  2 +-
 arch/arm/boards/guf-cupid/board.c                 |  2 +-
 arch/arm/boards/guf-neso/board.c                  |  2 +-
 arch/arm/boards/guf-vincell/board.c               |  2 +-
 arch/arm/boards/imx27ads/imx27ads.c               |  2 +-
 arch/arm/boards/karo-tx25/board.c                 |  2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c             |  2 +-
 arch/arm/boards/karo-tx51/tx51.c                  |  2 +-
 arch/arm/boards/karo-tx53/board.c                 |  2 +-
 arch/arm/boards/pcm038/pcm038.c                   |  2 +-
 arch/arm/boards/pcm043/pcm043.c                   |  2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c           |  2 +-
 arch/arm/boards/tqma53/board.c                    |  2 +-
 arch/ppc/boards/pcm030/pcm030.c                   |  2 +-
 drivers/net/fec_imx.c                             | 70 ++++++++--------------
 drivers/net/fec_imx.h                             |  1 -
 drivers/net/fec_mpc5200.c                         | 71 +++++++----------------
 drivers/net/fec_mpc5200.h                         |  1 -
 include/fec.h                                     | 13 +----
 32 files changed, 74 insertions(+), 136 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
