Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x230.google.com ([2a00:1450:4013:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wx-0000gR-4Y
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:55 +0000
Received: by mail-ee0-f48.google.com with SMTP id d49so1511273eek.7
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:29 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:16 +0100
Message-Id: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/5] OF: probe clock providers from DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set brings automatic probing of DT clock providers to ARM
barebox, similar to what we have in Linux kernel.

First, a new macro BAREBOX_CLK_TABLE for generic linker scripts is added,
that will take all declared DT clock providers. That macro is then added
to the ARM linker script.

Then, barebox compatible versions of of_clk_init and CLK_OF_DECLARE are
added, that allow to parse and probe declared clock providers. The of_clk_init
call is then put right after of_platform_populate in of_probe.

Finally, clk/fixed is declared as such a clock provider and can now be probed
automatially for DT enabled ARM platforms.

Sebastian Hesselbarth (5):
  asm-generic: add macro for BAREBOX_CLK_TABLE
  ARM: lib: add BAREBOX_CLK_TABLE to linker script
  clk: add of_clk_init and CLK_OF_DECLARE macro
  OF: parse OF clock providers after populate
  clk: fixed: add DT init function

 arch/arm/lib/barebox.lds.S        |  2 ++
 drivers/clk/clk-fixed.c           | 23 +++++++++++++++++++++++
 drivers/clk/clk.c                 | 37 +++++++++++++++++++++++++++++++++++++
 drivers/of/base.c                 |  1 +
 include/asm-generic/barebox.lds.h |  9 ++++++++-
 include/linux/clk.h               | 14 ++++++++++++++
 6 files changed, 85 insertions(+), 1 deletion(-)

---
Cc: barebox@lists.infradead.org
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
