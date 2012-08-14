Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1BB9-0007HP-P7
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 07:04:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 48E0ABF0EC
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 09:04:39 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 14 Aug 2012 09:04:30 +0200
Message-Id: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 0/3 v2] omap: 4460 support
To: barebox@lists.infradead.org

Add support for OMAP4460 cpu
on top of ed358834 (next)

v2: merge usage of omap4_scale_vcores to 1/3
    avoid volatile int*


Jan Weitzel (3):
  Add support for OMAP4460 TPS62361
  OMAP4460: ram init changes
  OMAP4460: clock init

 arch/arm/boards/panda/lowlevel.c                |    4 +-
 arch/arm/boards/panda/mux.c                     |    8 +++
 arch/arm/boards/pcm049/lowlevel.c               |   15 ++++--
 arch/arm/boards/pcm049/mux.c                    |    8 +++
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |   13 ++++-
 arch/arm/boards/phycard-a-xl2/mux.c             |    8 +++
 arch/arm/mach-omap/include/mach/omap4-clock.h   |   19 +++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h |   13 +++++-
 arch/arm/mach-omap/omap4_clock.c                |   58 +++++++++++++++++-----
 arch/arm/mach-omap/omap4_generic.c              |   60 +++++++++++++++++++++--
 10 files changed, 181 insertions(+), 25 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
