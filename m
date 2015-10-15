Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmdlA-0003Ut-3g
 for barebox@lists.infradead.org; Thu, 15 Oct 2015 08:19:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Oct 2015 10:18:56 +0200
Message-Id: <1444897136-25028-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
References: <1444897136-25028-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: mvebu: Lenovo IX4 300D: Fix pblb generation
To: Barebox List <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

pblx-y must be passed the entry point function without any extension.
Otherwise the pblb file is not added to $targets and is removed by
make as an intermediate file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.mvebu | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index dcf2235..0325f99 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -30,7 +30,7 @@ OPTS_start_lenovo_ix4_300d.pblx.kwbuartimg = -m uart $(LENOVO_IX4_300D_KWBOPTS)
 FILE_barebox-lenovo-ix4-300d.img   = start_lenovo_ix4_300d.pblx.kwbimg
 FILE_barebox-lenovo-ix4-300d-uart.img = start_lenovo_ix4_300d.pblx.kwbuartimg
 FILE_barebox-lenovo-ix4-300d-2nd.img = start_lenovo_ix4_300d.pblx
-pblx-$(CONFIG_MACH_LENOVO_IX4_300D) += start_lenovo_ix4_300d.pblx
+pblx-$(CONFIG_MACH_LENOVO_IX4_300D) += start_lenovo_ix4_300d
 image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d.img
 image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d-uart.img
 image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d-2nd.img
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
