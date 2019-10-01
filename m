Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHWm-0002C2-5Q
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 12:45:17 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  1 Oct 2019 14:45:04 +0200
Message-Id: <20191001124503.583729-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] ARM: aarch64: add image markers to linker script
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The __image_start and __image_end marker are used by barebox to
calculate the size of the barebox binary inside the RAM. Without the
definitions barebox calculates its own size to zero, which works until a
certain size is exceeded, than the PBL will place the binary lower into
memory than the calculation inside barebox.
Fix this by adding the appropriate image markers to the linker script.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/lib64/barebox.lds.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index b3e6843a15..694bbcaaf1 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -31,6 +31,8 @@ SECTIONS
 	. = TEXT_BASE;
 #endif
 
+	.image_start : { *(.__image_start) }
+
 #ifndef CONFIG_PBL_IMAGE
 	PRE_IMAGE
 #endif
@@ -112,6 +114,8 @@ SECTIONS
 
 	_edata = .;
 
+	.image_end : { *(.__image_end) }
+
 	. = ALIGN(4);
 	.__bss_start :  { *(.__bss_start) }
 	.bss : { *(.bss*) }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
