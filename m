Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sL-2q
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:14:59 +0000
Received: from ginster.hi.pengutronix.de
 ([2001:67c:670:100:2e4d:54ff:fe67:bfa5] helo=ginster)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1h4ivW-000442-Pr
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 10:14:54 +0100
Received: from jbe by ginster with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1h4ivW-0005qW-11
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 10:14:54 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:53 +0100
Message-Id: <20190315091453.22393-15-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 15/15] pstore/doc: fix layout
To: barebox@lists.infradead.org

Emphasise keywords and paths.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/filesystems/pstore.rst | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/filesystems/pstore.rst b/Documentation/filesystems/pstore.rst
index 00a5a05537..b8c2cb825c 100644
--- a/Documentation/filesystems/pstore.rst
+++ b/Documentation/filesystems/pstore.rst
@@ -1,17 +1,17 @@
 .. index:: pstore (filesystem)
 
-pstore filesystem with RAM backend (RAMOOPS)
-============================================
+*pstore* filesystem with RAM backend (RAMOOPS)
+==============================================
 
-Barebox supports the pstore filesystem known from the kernel. The main backend
+Barebox supports the *pstore* filesystem known from the kernel. The main backend
 implementation is RAM. All other backends are currently not implemented by
 Barebox.
 
-pstore is a filesystem to store kernel log or kernel panic messages. These
+*pstore* is a filesystem to store kernel log or kernel panic messages. These
 messages are stored by the kernel in a specified RAM area which is never
 overwritten by any user. This data can be accessed after a reboot through
-/pstore in Barebox or the kernel. The pstore filesystem is automatically mounted
-at boot:
+``/pstore`` in Barebox or the kernel. The *pstore* filesystem is automatically
+mounted at boot:
 
 .. code-block:: none
 
@@ -19,7 +19,7 @@ at boot:
 	none on /dev type devfs
 	none on /pstore type pstore
 
-pstore may add additional warnings during boot due to wrong ECCs (no data
+*pstore* may add additional warnings during boot due to wrong ECCs (no data
 written):
 
 .. code-block:: none
@@ -40,7 +40,7 @@ written):
   pstore: Registered ramoops as persistent store backend
   ramoops: attached 0x200000@0x1fdf4000, ecc: 16/0
 
-To use pstore/RAMOOPS both Barebox and Kernel have to be compiled with pstore
+To use *pstore/RAMOOPS* both Barebox and Kernel have to be compiled with *pstore*
 and RAM backend support. The kernel receives the parameters describing the
 layout via devicetree or - as a fallback - over the kernel command line.
 To ensure both worlds are using the same memory layout, the required
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
