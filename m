Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj8VU-0006yG-VR
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 20:06:50 +0000
Received: by mail-lf1-x12d.google.com with SMTP id c16so210251lfj.8
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2019 12:06:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Jan 2019 23:06:38 +0300
Message-Id: <20190114200641.4242-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH-for-next 0/2] move umode_t typedef from asm/types.h to
To: barebox@lists.infradead.org

This patchseries is marked "for-next" because it contains
arch/riscv changes.

Antony Pavlov (2):
  MIPS: asm/types.h: drop unused stuff
  move umode_t typedef from asm/types.h to linux/types.h

 arch/arm/include/asm/types.h      |  2 --
 arch/blackfin/include/asm/types.h |  2 --
 arch/mips/include/asm/types.h     | 35 -------------------------------
 arch/nios2/include/asm/types.h    |  2 --
 arch/openrisc/include/asm/types.h |  2 --
 arch/ppc/include/asm/types.h      |  2 --
 arch/riscv/include/asm/types.h    |  2 --
 arch/sandbox/include/asm/types.h  |  2 --
 arch/x86/include/asm/types.h      |  2 --
 include/linux/types.h             |  1 +
 10 files changed, 1 insertion(+), 51 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
