Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKtay-00073J-Qg
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 20:38:57 +0000
Received: by mail-lf0-x241.google.com with SMTP id z185so317408lfd.1
 for <barebox@lists.infradead.org>; Wed, 06 Jul 2016 13:38:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Jul 2016 23:38:24 +0300
Message-Id: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] MIPS: csrc-r4k: get counter rate from devicetree
To: barebox@lists.infradead.org

At the moment csrc-r4k rate is fixed to 100 MHz.
This is acceptable only for qemu-malta.

This patch introduces a devicetree-based solution
for detecting csrc-r4k counter rate.

The most notable users of this patch are AR9331-based boards.


Antony Pavlov (2):
  of: base: import of_get_cpu_node() from linux-v4.7-rc2
  MIPS: csrc-r4k: get cp0 counter rate from devicetree

 arch/mips/lib/csrc-r4k.c | 24 ++++++++++++--
 drivers/of/base.c        | 86 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h             | 10 ++++++
 3 files changed, 118 insertions(+), 2 deletions(-)

-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
