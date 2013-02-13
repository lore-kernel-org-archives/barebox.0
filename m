Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5fTJ-0005CW-Ej
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 16:46:15 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed, 13 Feb 2013 17:45:16 +0100
Message-Id: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 0/2] ARM: cfa10036: Store the barebox environment on the MMC
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

Hi,

The cfa-10036 comes only with a SD slot, so there was previously no way to
store in a persistent way the environment we could have modified other than
by modifying the code source itself.

These two patches register a new partition on the SD card to store that
environment, and update the default environment to reflect these changes.

Thanks,
Maxime

Maxime Ripard (2):
  cfa-10036: Use the second MMC partition to store the environment
  cfa10036: Update the environment

 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   44 +++++++++++++++++++-
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    6 +--
 .../crystalfontz-cfa10036/env/init/automount       |    4 +-
 3 files changed, 48 insertions(+), 6 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
