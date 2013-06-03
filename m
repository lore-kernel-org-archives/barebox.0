Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSPj-0004MP-3B
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:54:59 +0000
Received: by mail-la0-f47.google.com with SMTP id fq12so3268211lab.20
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 03:54:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Jun 2013 14:53:22 +0400
Message-Id: <1370256807-26755-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/5] MIPS: rework ns16550 debug_ll
To: barebox@lists.infradead.org

This patch series makes possible easely produce
debug output via ns16550-like UART on very early pbl stage.

v2 patch series is based on the 'master' branch
and it does not break bisectibility.

[PATCH v2 1/5] MIPS: rzx50: prepare for new debug_ll
[PATCH v2 2/5] MIPS: malta: prepare for new debug_ll
[PATCH v2 3/5] MIPS: unify ns16550 debug_ll support code
[PATCH v2 4/5] MIPS: rzx50: pbl: use debug_ll
[PATCH v2 5/5] MIPS: rzx50_defconfig: use UART1 for low-level debug

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
