Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAE6b-00023U-GO
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 14:37:39 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  6 Mar 2020 15:37:31 +0100
Message-Id: <20200306143732.24239-2-m.tretter@pengutronix.de>
In-Reply-To: <20200306143732.24239-1-m.tretter@pengutronix.de>
References: <20200306143732.24239-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 1/2] Documentation: blspec: update link to Boot Loader
 Specification
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

There is a big warning on the linked page that the page is obsolete and
a link to the current version of the Boot Loader Specification. The
Barebox documentation shall directly link to the current version of the
specification.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 12cd505e7170..4b0ead1db5a5 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -158,7 +158,7 @@ Bootloader Spec
 
 barebox supports booting according to the bootloader spec:
 
-http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/
+https://systemd.io/BOOT_LOADER_SPECIFICATION/
 
 It follows another philosophy than the :ref:`boot_entries`. With Boot Entries
 booting is completely configured in the bootloader. Bootloader Spec Entries
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
