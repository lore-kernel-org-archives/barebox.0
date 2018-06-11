Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUv4-0001VC-80
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:04:14 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:27 +0200
Message-Id: <20180611220235.15995-2-rohieb@rohieb.name>
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
Subject: [PATCH 1/9] doc: boards: imx: order table of contents alphabetically
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Upper and lower case are significant when sorting file names. Stay with
lower case file names for now, and make sure the file name order is the
same as the order of the page titles in the table of contents.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 .../boards/imx/{amazon-kindle3.rst => amazon-kindle-3.rst}        | 0
 .../boards/imx/{amazon-kindle-mx50.rst => amazon-kindle-4-5.rst}  | 0
 .../boards/imx/{Element14-WaRP7.rst => element14-warp7.rst}       | 0
 .../boards/imx/{Garz-Fricke-Cupid.rst => garz-fricke-cupid.rst}   | 0
 .../imx/{Garz-Fricke-Vincell.rst => garz-fricke-vincell.rst}      | 0
 Documentation/boards/imx/{Karo-TX25.rst => karo-tx25.rst}         | 0
 Documentation/boards/imx/{Karo-TX6.rst => karo-tx6.rst}           | 0
 .../imx/{Phytec-phyCARD-i.MX27.rst => phytec-phycard-i.mx27.rst}  | 0
 .../imx/{Phytec-phyCORE-i.MX27.rst => phytec-phycore-i.mx27.rst}  | 0
 .../imx/{Phytec-phyCORE-i.MX31.rst => phytec-phycore-i.mx31.rst}  | 0
 .../imx/{Phytec-phyCORE-i.MX35.rst => phytec-phycore-i.mx35.rst}  | 0
 Documentation/boards/imx/{Wandboard.rst => wandboard.rst}         | 0
 12 files changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/boards/imx/{amazon-kindle3.rst => amazon-kindle-3.rst} (100%)
 rename Documentation/boards/imx/{amazon-kindle-mx50.rst => amazon-kindle-4-5.rst} (100%)
 rename Documentation/boards/imx/{Element14-WaRP7.rst => element14-warp7.rst} (100%)
 rename Documentation/boards/imx/{Garz-Fricke-Cupid.rst => garz-fricke-cupid.rst} (100%)
 rename Documentation/boards/imx/{Garz-Fricke-Vincell.rst => garz-fricke-vincell.rst} (100%)
 rename Documentation/boards/imx/{Karo-TX25.rst => karo-tx25.rst} (100%)
 rename Documentation/boards/imx/{Karo-TX6.rst => karo-tx6.rst} (100%)
 rename Documentation/boards/imx/{Phytec-phyCARD-i.MX27.rst => phytec-phycard-i.mx27.rst} (100%)
 rename Documentation/boards/imx/{Phytec-phyCORE-i.MX27.rst => phytec-phycore-i.mx27.rst} (100%)
 rename Documentation/boards/imx/{Phytec-phyCORE-i.MX31.rst => phytec-phycore-i.mx31.rst} (100%)
 rename Documentation/boards/imx/{Phytec-phyCORE-i.MX35.rst => phytec-phycore-i.mx35.rst} (100%)
 rename Documentation/boards/imx/{Wandboard.rst => wandboard.rst} (100%)

diff --git a/Documentation/boards/imx/amazon-kindle3.rst b/Documentation/boards/imx/amazon-kindle-3.rst
similarity index 100%
rename from Documentation/boards/imx/amazon-kindle3.rst
rename to Documentation/boards/imx/amazon-kindle-3.rst
diff --git a/Documentation/boards/imx/amazon-kindle-mx50.rst b/Documentation/boards/imx/amazon-kindle-4-5.rst
similarity index 100%
rename from Documentation/boards/imx/amazon-kindle-mx50.rst
rename to Documentation/boards/imx/amazon-kindle-4-5.rst
diff --git a/Documentation/boards/imx/Element14-WaRP7.rst b/Documentation/boards/imx/element14-warp7.rst
similarity index 100%
rename from Documentation/boards/imx/Element14-WaRP7.rst
rename to Documentation/boards/imx/element14-warp7.rst
diff --git a/Documentation/boards/imx/Garz-Fricke-Cupid.rst b/Documentation/boards/imx/garz-fricke-cupid.rst
similarity index 100%
rename from Documentation/boards/imx/Garz-Fricke-Cupid.rst
rename to Documentation/boards/imx/garz-fricke-cupid.rst
diff --git a/Documentation/boards/imx/Garz-Fricke-Vincell.rst b/Documentation/boards/imx/garz-fricke-vincell.rst
similarity index 100%
rename from Documentation/boards/imx/Garz-Fricke-Vincell.rst
rename to Documentation/boards/imx/garz-fricke-vincell.rst
diff --git a/Documentation/boards/imx/Karo-TX25.rst b/Documentation/boards/imx/karo-tx25.rst
similarity index 100%
rename from Documentation/boards/imx/Karo-TX25.rst
rename to Documentation/boards/imx/karo-tx25.rst
diff --git a/Documentation/boards/imx/Karo-TX6.rst b/Documentation/boards/imx/karo-tx6.rst
similarity index 100%
rename from Documentation/boards/imx/Karo-TX6.rst
rename to Documentation/boards/imx/karo-tx6.rst
diff --git a/Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst b/Documentation/boards/imx/phytec-phycard-i.mx27.rst
similarity index 100%
rename from Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst
rename to Documentation/boards/imx/phytec-phycard-i.mx27.rst
diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst b/Documentation/boards/imx/phytec-phycore-i.mx27.rst
similarity index 100%
rename from Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst
rename to Documentation/boards/imx/phytec-phycore-i.mx27.rst
diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst b/Documentation/boards/imx/phytec-phycore-i.mx31.rst
similarity index 100%
rename from Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
rename to Documentation/boards/imx/phytec-phycore-i.mx31.rst
diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX35.rst b/Documentation/boards/imx/phytec-phycore-i.mx35.rst
similarity index 100%
rename from Documentation/boards/imx/Phytec-phyCORE-i.MX35.rst
rename to Documentation/boards/imx/phytec-phycore-i.mx35.rst
diff --git a/Documentation/boards/imx/Wandboard.rst b/Documentation/boards/imx/wandboard.rst
similarity index 100%
rename from Documentation/boards/imx/Wandboard.rst
rename to Documentation/boards/imx/wandboard.rst
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
