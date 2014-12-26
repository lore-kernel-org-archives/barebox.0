Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej1-0005R2-P7
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:20 +0000
Received: by mail-lb0-f175.google.com with SMTP id z11so1121251lbi.34
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:54:55 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:23 +0300
Message-Id: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/6] ARM: introduce debug_ll_pl011.h
To: barebox@lists.infradead.org

Antony Pavlov (6):
  ARM: introduce debug_ll_pl011.h
  ARM: vexpress: debug_ll.h: switch to debug_ll_pl011.h
  ARM: highbank: debug_ll.h: switch to debug_ll_pl011.h
  ARM: versatile: enable missed HAS_DEBUG_LL
  ARM: versatile: debug_ll.h: switch to debug_ll_pl011.h
  ARM: bcm2835: add DEBUG_LL support

 arch/arm/Kconfig                                |  2 ++
 arch/arm/include/asm/debug_ll_pl011.h           | 25 +++++++++++++++++++++++
 arch/arm/mach-bcm2835/include/mach/debug_ll.h   | 27 +++++++++++++++++++++++++
 arch/arm/mach-highbank/include/mach/debug_ll.h  | 16 ++-------------
 arch/arm/mach-versatile/include/mach/debug_ll.h | 15 ++------------
 arch/arm/mach-vexpress/include/mach/debug_ll.h  | 15 +++-----------
 6 files changed, 61 insertions(+), 39 deletions(-)
 create mode 100644 arch/arm/include/asm/debug_ll_pl011.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/debug_ll.h

-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
