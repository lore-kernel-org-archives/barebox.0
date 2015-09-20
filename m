Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZdnRw-0002z8-BE
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 22:51:12 +0000
Received: by lahg1 with SMTP id g1so58489614lah.1
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 15:50:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 01:50:42 +0300
Message-Id: <1442789445-10778-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] misc MIPS patches
To: barebox@lists.infradead.org

Antony Pavlov (3):
  MIPS: mach-ath79: make ar71xx_regs.h assembler-tolerant
  MIPS: PBL: Add missing pieces for xz compressed PBL image
  MIPS: refactor SPL start.S code

 arch/mips/boot/start.S                          | 108 ++----------------------
 arch/mips/lib/Makefile                          |   2 +
 arch/mips/mach-ath79/include/mach/ar71xx_regs.h |   4 +
 arch/mips/mach-ath79/include/mach/debug_ll.h    |   5 +-
 arch/mips/pbl/.gitignore                        |   2 +
 arch/mips/pbl/Makefile                          |   1 +
 arch/mips/pbl/piggy.xzkern.S                    |   6 ++
 7 files changed, 23 insertions(+), 105 deletions(-)
 create mode 100644 arch/mips/pbl/piggy.xzkern.S

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
