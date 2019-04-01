Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB3Hz-0006k9-4P
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 20:12:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 22:12:04 +0200
Message-Id: <20190401201210.17975-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/6] clk: imx6: work around LDB hang caused by ERR009219
To: barebox@lists.infradead.org
Cc: pza@pengutronix.de, lst@pengutronix.de, sha@pengutronix.de

Due to incorrect placement of the clock gate cell in the ldb_di[x]_clk
tree, the glitchy parent mux of ldb_di[x]_clk can cause a glitch to
enter the ldb_di_ipu_div divider[1]. If the divider gets locked up, no
ldb_di[x]_clk is generated, and the LVDS display will hang when the
ipu_di_clk is sourced from ldb_di_clk.

The glitch can happen if an assigned-clock-parents property sets
ldb_di[x]_clk's parent or in Linux versions prior to v4.10,
out-of-the-box because then Linux used to hardcode a
clk_set_parent(ldb_di[x]_sel, pll5_video_div) in clk-imx6.c.
The upstream kernel commit that added this reparenting
32f3b8da22 ("ARM i.MX6q: set the LDB serial clock parent to the video PLL")
made its way into barebox as well.

In barebox, this reparenting occurs whenever CONFIG_DRIVER_VIDEO_IMX_IPUV3
is defined and the CPU was either exactly a DualLite or of a revision
bigger than 1.0. The list of CPUs where the reparenting should happen
has not been updated as clk-imx6.c gained support for newer i.MX6 variants,
with the effect that the reparenting nowadays happens on the odd set of:
  - (Quad or Dual) and rev >1.0
  - DualLite
  - Solo and rev >1.0
  - (QuadPlus or DualPlus) rev >1.0

The erratum already has a Linux workaround. On barebox, it can currently
happen if there's an appropriate assigned-clock-parents property or the
reparenting happens (i.e. CONFIG_DRIVER_VIDEO_IMX_IPUV3 is selected on a
board with the aforementioned CPU/Revision pairs). Linux has removed the
reparenting along with the bug fix. If barebox did this, boards that
depended on the reparenting may be broken.

For this reason, the first four patches work around the erratum in a way
that the high level reparenting behavior remains as-is. The optional fifth
patch then drops the reparenting, same as Linux does, simplifying the code
and eventually improving the newly broken boards device tree as well (they
would need to spell out what clock parents they expect for their LDB
muxes instead of depending on a barebox quirk).

This series applies on top of current upstream/next, particularly
e0e87be220fa ("clk: mux: Support CLK_SET_RATE_NO_REPARENT flag").


Rundown
-------

PATCH 1/6 and 4/6 are cosmetic. The former is an exercise in De Morgan's
Laws and rewrites the condition to spell out exactly when the reparenting
to video PLL happens. The latter replaces some hardcoded constants from the
kernel patch with symbolic names.

PATCH 2/6 and 3/6 import the kernel patches that worked around the
erratum by:
  1) replacing the hardcoded clk_set_parent in a glitch-free manner
  2) parsing assigned-clock-parents of ldb_di_sel clocks specially and
     applying the reparenting using the glitch-free method above

PATCH 5/6 makes the ldb_di_sel clocks read-only to prevent
the generic clock code from trying to reconfigure the affected muxes
in a glitchy manner when it parses assigned-clock-parents.

These patches have been reordered from their upstream order to avoid
breaking boards which had the implicit assumption that the LDB clocks
have the video PLL as a parent.

Now that utmost care was invested into not breaking these boards,
RFC PATCH 6/6 breaks them by getting rid of the reparenting along with
its funny conditionals.

The line of thinking is:
If you explicitly use assigned-clock-parents to affect the LDB clocks,
this patch series will apply these without the lock up the erratum may
cause. Everything else is unchanged.

If you don't have that property, but CONFIG_DRIVER_IMX_IPUV3 is
selected, your LDB clocks would've locked up every hundred (?) or so
boots anyway, so you would've noticed, right?

Well, you didn't notice, so it should be Okay to just remove that
reparenting quirk. This simplifies the code and if the default of
mmdc_ch1_axi being the parent of the LDB clocks indeed breaks
you, you will bisect, compare /sys/kernel/debug/clk/clk_summary
and find PATCH 5/6 that tells you the exact device tree snippet you need
to copy into your device tree to restore the old behavior!

To save possibly affected mainline board authors the bisection effort,
they are CC'd in the last patch, so they can take a look. The
relevant boards are:
  - imx6qdl-zii-rdu2.dtsi
  - imx6qdl-udoo.dtsi
  - imx6qdl-mba6x.dtsi
  - imx6q-var-custom.dts
  - imx6q-guf-santaro.dts
  - imx6q-embedsky-e9.dtsi

[1] The ERR009219 erratum is explained in detail in EB821 ("LDB Clock
    Switch Procedure & i.MX6 Asynchronous Clock Switching Guidelines"):
    http://www.nxp.com/files/32bit/doc/eng_bulletin/EB821.pdf

Ahmad Fatoum (3):
  clk: imx6: provide helper to check if video PLL post dividers work
  clk: imx6: define an enum for ldb mux inputs
  clk: imx6: remove quirky clk_set_parent(LDB_diN_sel, pll5_video_div)

Fabio Estevam (1):
  clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK

Philipp Zabel (2):
  clk: imx6: Mask mmdc_ch1 handshake for periph2_sel and
    mmdc_ch1_axi_podf
  clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks read-only

 drivers/clk/imx/clk-imx6.c | 323 +++++++++++++++++++++++++++++++++++--
 drivers/clk/imx/clk.h      |   8 +
 2 files changed, 315 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
