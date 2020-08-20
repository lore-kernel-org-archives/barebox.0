Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8kRp-0005Pi-GL
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 13:17:42 +0000
Date: Thu, 20 Aug 2020 15:17:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200820131737.GA13023@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: v2020.08.1
To: Barebox List <barebox@lists.infradead.org>

Hi All,

I just released a stable update for v2020.08. It fixes a few problems:

- (some) watchdogs broken
- squashfs broken
- i.MX8MP was broken due to the last dts update

For a detailed list of patches, see below

Have Fun!
 Sascha

----------------------------------------------------------------
Ahmad Fatoum (1):
      watchdog: fix watchdog_set_timeout breakage for drivers like imxwd

Sascha Hauer (6):
      libfile: copy_file: Fix ftruncate called on device files
      clk: imx-imx8mp: Mark arm_a53_core clk as critical
      fs: squashfs: set s_op in time
      fs: squashfs: Do not free root inode
      fs: Use iget_locked() rather than squashfs specific function
      Release v2020.08.1

 Makefile                     |  2 +-
 drivers/clk/imx/clk-imx8mp.c |  2 +-
 drivers/watchdog/wd_core.c   |  2 +-
 fs/squashfs/inode.c          | 18 +-----------------
 fs/squashfs/squashfs.c       |  3 +--
 fs/squashfs/squashfs.h       |  1 -
 fs/squashfs/super.c          |  1 -
 lib/libfile.c                | 10 +++++-----
 8 files changed, 10 insertions(+), 29 deletions(-)
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
