Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurkl-0007Ra-Ee
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:21 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:10:57 +0200
Message-Id: <d433c17f03145b04c41cfaf1d21efd3a476d80dc.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 07/16] sections: fix macro for barebox_pbl_size
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

On ARM64 this did not contain the expected barebox_pbl size. Rework this
to be a substraction between __piggydata_start and __image_start, which
should cover the whole PBL.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/asm-generic/sections.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 0eb18f6..f584cad 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -8,12 +8,12 @@ extern char __bare_init_start[], __bare_init_end[];
 extern char _end[];
 extern char __image_start[];
 extern char __image_end[];
+extern char __piggydata_start[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
 
 #define barebox_image_size	(__image_end - __image_start)
 #define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
-#define barebox_pbl_size	(unsigned int)&_barebox_pbl_size
-
+#define barebox_pbl_size	(__piggydata_start - __image_start)
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
