Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz2bP-0004wr-Pt
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 07:21:52 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Sep 2010 09:20:22 +0200
Message-Id: <1285312822-25116-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285312822-25116-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285312822-25116-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] mk68: rename macro __M68K__ to __m68k__ as it's prodive
	by gcc
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/m68k/Makefile |    3 +--
 include/image.h    |    4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/m68k/Makefile b/arch/m68k/Makefile
index ec70028..86afb24 100644
--- a/arch/m68k/Makefile
+++ b/arch/m68k/Makefile
@@ -18,8 +18,7 @@
 # along with barebox.  If not, see <http://www.gnu.org/licenses/>.
 #
 
-CPPFLAGS += -isystem $(gccincdir) -D __M68K__ \
-	-fno-strict-aliasing
+CPPFLAGS += -isystem $(gccincdir) -fno-strict-aliasing
 
 
 machine-$(CONFIG_ARCH_MCF54xx)	   := mcfv4e
diff --git a/include/image.h b/include/image.h
index add5e02..2c5956d 100644
--- a/include/image.h
+++ b/include/image.h
@@ -96,7 +96,7 @@
 #define IH_ARCH IH_ARCH_MIPS
 #elif defined(__nios__)
 #define IH_ARCH IH_ARCH_NIOS
-#elif defined(__M68K__)
+#elif defined(__m68k__)
 #define IH_ARCH IH_ARCH_M68K
 #elif defined(__microblaze__)
 #define IH_ARCH IH_ARCH_MICROBLAZE
@@ -348,7 +348,7 @@ static inline int image_check_target_arch(const image_header_t *hdr)
 	if (!image_check_arch(hdr, IH_ARCH_BLACKFIN))
 #elif defined(__I386__)
 	if (!image_check_arch(hdr, IH_ARCH_I386))
-#elif defined(__M68K__)
+#elif defined(__m68k__)
 	if (!image_check_arch(hdr, IH_ARCH_M68K))
 #elif defined(__microblaze__)
 	if (!image_check_arch(hdr, IH_ARCH_MICROBLAZE))
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
