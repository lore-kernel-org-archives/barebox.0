Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSrD-0005HO-1f
 for barebox@lists.infradead.org; Mon, 06 May 2013 21:22:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.mars-solutions.de (Postfix) with ESMTP id 5203DA04575
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 23:21:30 +0200 (CEST)
Received: from mail.mars-solutions.de ([127.0.0.1])
 by localhost (mars-solutions.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fI52WzcC7O5a for <barebox@lists.infradead.org>;
 Mon,  6 May 2013 23:21:29 +0200 (CEST)
Received: from ASSP.nospam (mars [213.239.212.107])
 by mail.mars-solutions.de (Postfix) with ESMTP id 04D67A04575
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 23:21:28 +0200 (CEST)
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Mon,  6 May 2013 23:21:26 +0200
Message-Id: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH 0/2] ARM i.MX31: define fix, IOMUX GPR setup fix for pcm037
To: barebox@lists.infradead.org

Patches against tag v2013.05.0.
Functionality tested on customer-specific pcm037 variant with 2013.03.0.
Compile-tested against pcm037_defconfig with 2013.05.0.
Relevant code base is unchanged between versions, no issues expected.

Andreas Pretzsch (2):
  ARM i.MX31: cleanup MX31_ prefix: fix leftover IOMUXC_BASE defines
  ARM i.MX31 pcm037: fix erroneous IOMUX GPR setup in pcm037_usb_init()

 arch/arm/boards/pcm037/pcm037.c             |    6 +++---
 arch/arm/mach-imx/include/mach/imx31-regs.h |    6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
