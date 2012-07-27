Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sukm0-00069d-W6
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 13:40:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1F15BBF0E0
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 15:40:05 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 27 Jul 2012 15:40:01 +0200
Message-Id: <1343396404-10288-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 0/3] omap: 4460 support
To: barebox@lists.infradead.org

Add support for OMAP4460 cpu
on top off 7b0de0e6 (next)

Jan Weitzel (3):
  Add support for OMAP4460 TPS62361
  OMAP4460: ram init changes
  OMAP4460: clock init

 arch/arm/boards/panda/lowlevel.c                |    4 +-
 arch/arm/boards/panda/mux.c                     |    8 +++
 arch/arm/boards/pcm049/lowlevel.c               |   15 ++++--
 arch/arm/boards/pcm049/mux.c                    |    8 +++
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |    9 +++-
 arch/arm/boards/phycard-a-xl2/mux.c             |    8 +++
 arch/arm/mach-omap/include/mach/omap4-clock.h   |   19 +++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h |   13 +++++-
 arch/arm/mach-omap/omap4_clock.c                |   58 +++++++++++++++++-----
 arch/arm/mach-omap/omap4_generic.c              |   60 +++++++++++++++++++++--
 10 files changed, 178 insertions(+), 24 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
