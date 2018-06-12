Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGc-0002gB-Af
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:43 +0000
Received: by mail-pg0-x241.google.com with SMTP id 15-v6so11877729pge.2
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:09 -0700
Message-Id: <20180612184316.4579-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] i.MX BBU improvements and VFxxx support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This small series is the result of work on implementing BBU support
for VFxxx (ZII VF610 Dev board specifically). Hopefully all of the
patches are self-explanatory.

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  ARM: i.MX: bbu: Alias identical functions
  ARM: i.MX: bbu: Replace magic number with a constant
  ARM: i.MX: bbu: Share MMC code between i.MX51 and 53
  ARM: i.MX: bbu: Use pr_* functions for output
  ARM: i.MX: bbu: Add support for MMC on VFxxx
  ARM: i.MX: zii-vf610-spu3: Add support for BBU on eMMC

 arch/arm/boards/zii-vf610-dev/board.c |  18 +++++
 arch/arm/mach-imx/imx-bbu-internal.c  | 100 ++++++++++++--------------
 arch/arm/mach-imx/include/mach/bbu.h  |   9 +++
 3 files changed, 72 insertions(+), 55 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
