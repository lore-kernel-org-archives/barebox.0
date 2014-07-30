Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCXmN-0005x5-FA
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:35:07 +0000
Received: by mail-lb0-f171.google.com with SMTP id l4so1164037lbv.30
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 10:34:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 21:34:31 +0400
Message-Id: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/5] led-related series
To: barebox@lists.infradead.org

Antony Pavlov (5):
  MIPS: dts: rzx50.dts: add LCD backlight
  MIPS: ritmix-rzx50_defconfig: enable LED-related stuff
  led: triggers: fix crash on disabling "default-on" trigger
  commands: trigger: check trigger disable return code too
  led: triggers: fix "no previous prototype for 'trigger_init'" warning

 arch/mips/configs/ritmix-rzx50_defconfig |  6 ++++++
 arch/mips/dts/rzx50.dts                  | 10 ++++++++++
 commands/trigger.c                       |  5 +++--
 drivers/led/led-triggers.c               |  4 ++--
 4 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
