Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YAbcV-0005uN-KS
 for barebox@lists.infradead.org; Mon, 12 Jan 2015 09:49:12 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 12 Jan 2015 10:48:37 +0100
Message-Id: <1421056125-17142-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1421056125-17142-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1421056125-17142-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 1/9] ARM: sockit: Define inst_rom_init static
To: barebox@lists.infradead.org

From: Markus Pargmann <mpa@pengutronix.de>

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c b/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
index fc83721ea217..09bdc582d10e 100644
--- a/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
+++ b/arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
@@ -28,8 +28,8 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
 
 #include <common.h>
-const uint32_t inst_rom_init_size = 127;
-const uint32_t inst_rom_init[127] =
+static const uint32_t inst_rom_init_size = 127;
+static const uint32_t inst_rom_init[127] =
 {
 	0x80000,
 	0x80680,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
