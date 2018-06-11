Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUvk-0001qT-M9
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:05:13 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:33 +0200
Message-Id: <20180611220235.15995-8-rohieb@rohieb.name>
In-Reply-To: <20180611220235.15995-1-rohieb@rohieb.name>
References: <20180611220235.15995-1-rohieb@rohieb.name>
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
Subject: [PATCH 7/9] doc: boards: Phytec phyCORE-i.MX31: fix formatting, style
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 Documentation/boards/imx/phytec-phycore-i.mx31.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/imx/phytec-phycore-i.mx31.rst b/Documentation/boards/imx/phytec-phycore-i.mx31.rst
index 6c05bcdfdc..d9a981b998 100644
--- a/Documentation/boards/imx/phytec-phycore-i.mx31.rst
+++ b/Documentation/boards/imx/phytec-phycore-i.mx31.rst
@@ -23,8 +23,8 @@ Supported baseboards
 Supported baseboards are:
   * Silica / Phytec PCM-970 via phyMAP-i.MX31, PMA-001
 
-How to get barebox for 'Phytec's phyCORE-i.MX31'
-------------------------------------------------
+How to get barebox for Phytec's phyCORE-i.MX31
+----------------------------------------------
 
 Using the default configuration::
 
@@ -34,8 +34,8 @@ Build the binary image::
 
   make ARCH=arm CROSS_COMPILE=armv5compiler
 
-**NOTE:** replace ''armv5compiler'' with your ARM v5 cross compiler,
- e.g.: ''arm-1136jfs-linux-gnueabi-''
+.. note:: replace ``armv5compiler`` with your ARM v5 cross compiler prefix,
+ e.g.: ``arm-1136jfs-linux-gnueabi-``
 
 The resulting binary image to be flashed will be ``barebox.bin``, whereas
 the file named just ``barebox`` is an ELF executable for ARM.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
