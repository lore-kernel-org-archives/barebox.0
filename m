Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3LG-0003iT-Fu
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:27:47 +0000
Received: by lffu14 with SMTP id u14so22732812lff.1
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 23:27:24 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id bn6sm281576lbc.10.2015.11.09.23.27.23
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Nov 2015 23:27:23 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Nov 2015 10:27:12 +0300
Message-Id: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] MIPS: support return from exception;
 allow user to pass incorrect address to md command
To: barebox@lists.infradead.org

This patchseries adds return from exception for MIPS, so the 'md' command
incorrect memory accesses can be handled correctly instead of crashing the system,
e.g.

    barebox:/ md -l 0xa0000003+4
    a0000003: xxxxxxxx                                           ....

Without this patchseries we will get this

    barebox:/ md -l 0xa0000003+4
    a0000003:
    Ooops, address error on load or ifetch!

    ...

    ### ERROR ### Please RESET the board ###

The patchseries is tested on QEMU Malta and Black Swift boards.

Antony Pavlov (4):
  MIPS: traps.c: separate registers print stuff to show_regs()
  MIPS: avoid excessive exception
  MIPS: import exception registers restoring macros from linux kernel
  MIPS: allow user to pass incorrect address to md command

 arch/mips/include/asm/barebox.h    |  2 +-
 arch/mips/include/asm/pbl_macros.h |  2 +-
 arch/mips/include/asm/stackframe.h | 87 ++++++++++++++++++++++++++++++++++++++
 arch/mips/lib/genex.S              |  6 +++
 arch/mips/lib/traps.c              | 65 +++++++++++++++++++++++-----
 5 files changed, 150 insertions(+), 12 deletions(-)

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
