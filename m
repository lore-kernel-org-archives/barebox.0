Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f635D-0001jd-BL
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:52 +0000
Received: by mail-pl0-x241.google.com with SMTP id c7-v6so25239plr.5
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:23 -0700
Message-Id: <20180410235323.5440-11-andrew.smirnov@gmail.com>
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/10] i.MX: zii-vf610-dev: Make use of vf610_barebox_entry()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/lowlevel.c | 3 ++-
 arch/arm/dts/vf610-zii-dev.dtsi          | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index c6663c141..f3d67501a 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -18,6 +18,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
 #include <mach/vf610-regs.h>
 #include <mach/clock-vf610.h>
 #include <mach/iomux-vf610.h>
@@ -133,5 +134,5 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 		break;
 	}
 
-	barebox_arm_entry(0x80000000, SZ_512M, fdt + get_runtime_offset());
+	vf610_barebox_entry(fdt + get_runtime_offset());
 }
diff --git a/arch/arm/dts/vf610-zii-dev.dtsi b/arch/arm/dts/vf610-zii-dev.dtsi
index 4bf81451a..dc16280bc 100644
--- a/arch/arm/dts/vf610-zii-dev.dtsi
+++ b/arch/arm/dts/vf610-zii-dev.dtsi
@@ -40,7 +40,9 @@ n *     copy, modify, merge, publish, distribute, sublicense, and/or
  *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  *     OTHER DEALINGS IN THE SOFTWARE.
- */
+*/
+
+#include "vf610-ddrmc.dtsi"
 
 / {
 	audio_ext: mclk_osc {
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
