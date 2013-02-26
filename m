Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UANjd-00039P-B4
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 16:50:33 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 43E8A813
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 17:50:24 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Tue, 26 Feb 2013 17:50:19 +0100
Message-Id: <1361897421-3228-1-git-send-email-maxime.ripard@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCHv2 0/2] ARM: cfa10036: Store the barebox environment on the MMC
To: barebox@lists.infradead.org

Hi,

The cfa-10036 comes only with a SD slot, so there was previously no way to
store in a persistent way the environment we could have modified other than
by modifying the code source itself.

These two patches register a new partition on the SD card to store that
environment, and update the default environment to reflect these changes.

Thanks,
Maxime

Changes from v1:
  - Make use of the new common envfs_register_partition function

Maxime Ripard (2):
  cfa-10036: Use the second MMC partition to store the environment
  cfa10036: Update the environment

 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c         |    8 +++++++-
 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3  |    6 +++---
 arch/arm/boards/crystalfontz-cfa10036/env/init/automount |    4 ++--
 3 files changed, 12 insertions(+), 6 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
