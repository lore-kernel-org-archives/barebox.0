Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj2bL-0000J5-JT
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 13:48:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gj2bH-00039P-P8
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 14:48:23 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gj2bH-0003rs-HT
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 14:48:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Jan 2019 14:48:08 +0100
Message-Id: <20190114134807.9638-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] images: check for use of obsolete pblx-*
To: barebox@lists.infradead.org

pblx-* has been removed in 5a1a5ed253 ("ARM: images: use piggydata")
and using it (e.g. because a patchset was rebased) results in a non-obvious:

	make[1]: *** No rule to make target 'images/*.pblx.*', \
	needed by 'images/barebox-*.img'.  Stop.

Avoid this by explicitly failing with an error message whenever pblx-y
or pblx- has been defined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/images/Makefile b/images/Makefile
index c4b2a483fbd1..c3ec498865da 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -105,6 +105,10 @@ include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.at91
 
+ifneq ($(pblx-y)$(pblx-),)
+  $(error pblx- has been removed. Please use pblb- instead.)
+endif
+
 targets += $(image-y) pbl.lds barebox.x barebox.z piggy.o
 targets += $(patsubst %,%.pblb,$(pblb-y))
 targets += $(patsubst %,%.pbl,$(pblb-y))
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
