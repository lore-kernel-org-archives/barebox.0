Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdsbo-00009A-Qr
 for barebox@lists.infradead.org; Mon, 31 Dec 2018 08:07:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id l10so17932132lfh.9
 for <barebox@lists.infradead.org>; Mon, 31 Dec 2018 00:07:35 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 31 Dec 2018 09:07:20 +0100
Message-Id: <20181231080725.2141-1-sam@ravnborg.org>
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
Subject: [PATCH 0/5] Independent collection of patches 
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Random collection of patches that accumulated the last weeks.
They are done on top of the next branch.

No dependencies between the patches.

	Sam

Sam Ravnborg (5):
      2d-primitives: fix no previous prototype warning
      images: fix force rebuild of piggy.o
      arm: fix no prototype for barebox_arm_reset_vector()
      at91sam9263ek: fix build of of_init
      video: mtl017: fix driver name variable

 arch/arm/boards/at91sam9263ek/Makefile | 2 +-
 arch/arm/include/asm/barebox-arm.h     | 2 ++
 drivers/video/mtl017.c                 | 4 ++--
 images/Makefile                        | 9 ++++-----
 lib/gui/2d-primitives.c                | 2 ++
 5 files changed, 11 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
