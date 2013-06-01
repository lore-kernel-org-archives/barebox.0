Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdn-0001xo-3L
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:19 +0000
Received: by mail-la0-f42.google.com with SMTP id fg20so2062140lab.29
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:53:53 -0700 (PDT)
Received: from localhost.localdomain (ppp37-190-57-20.pppoe.spdop.ru.
 [37.190.57.20])
 by mx.google.com with ESMTPSA id x3sm20733251lag.6.2013.06.01.00.53.51
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 01 Jun 2013 00:53:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:43 +0400
Message-Id: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/6] MIPS: rework ns16550 debug_ll
To: barebox@lists.infradead.org

This patch series adds low-level debug ns16550 output helpers
for MIPS pbl. This helpers make possible easely produce
debug output via ns16550-like UART on very early pbl stage.

[PATCH 1/6] MIPS: XBurst: use mach-specific debug_ll setup
[PATCH 2/6] MIPS: pbl: add low-level debug asm macros for ns16550
[PATCH 3/6] MIPS: rzx50: pbl: use debug_ll
[PATCH 4/6] MIPS: rzx50_defconfig: use UART1 for low-level debug
[PATCH 5/6] MIPS: malta: adapt for new debug_ll
[PATCH 6/6] MIPS: unificate ns16550 debug_ll support code

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
