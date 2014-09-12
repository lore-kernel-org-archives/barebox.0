Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQLO-0003rS-Bz
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 12:52:54 +0000
Received: by mail-la0-f44.google.com with SMTP id mc6so873681lab.17
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 05:52:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 12 Sep 2014 16:52:22 +0400
Message-Id: <1410526344-21189-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] MIPS: xburst: trivial patches
To: barebox@lists.infradead.org

Antony Pavlov (2):
  MIPS: xburst: Kconfig: add comment
  MIPS: ritmix-rzx50_defconfig: update DEBUG_LL; enable IMD

 arch/mips/configs/ritmix-rzx50_defconfig | 3 ++-
 arch/mips/mach-xburst/Kconfig            | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
