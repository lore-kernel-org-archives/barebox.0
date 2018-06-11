Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUv4-0001VY-7z
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:04:11 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:30 +0200
Message-Id: <20180611220235.15995-5-rohieb@rohieb.name>
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
Subject: [PATCH 4/9] doc: boards: element14 WaRP7: fix header level and nested
 list
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 Documentation/boards/imx/element14-warp7.rst | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/element14-warp7.rst b/Documentation/boards/imx/element14-warp7.rst
index df14f84dc4..830a2fb55b 100644
--- a/Documentation/boards/imx/element14-warp7.rst
+++ b/Documentation/boards/imx/element14-warp7.rst
@@ -4,15 +4,16 @@ element14 WaRP7
 This CPU card is based on an NXP i.MX7S SoC.
 
 Supported hardware
-==================
+------------------
 
 - NXP PMIC PFUZE3000
 - Kingston 08EMCP04-EL3AV100 eMCP (eMMC and LPDDR3 memory in one package)
+
   - 8 GiB eMMC Triple-Level cell NAND flash, eMMC standard 5.0 (HS400)
   - 512 MiB LPDDR3 SDRAM starting at address 0x80000000
 
 Bootstrapping barebox
-=====================
+---------------------
 
 The device boots in internal boot mode from eMMC and is shipped with a
 vendor modified u-boot imximage.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
