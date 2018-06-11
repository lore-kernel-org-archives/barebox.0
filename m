Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUv4-0001VB-83
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:04:14 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:26 +0200
Message-Id: <20180611220235.15995-1-rohieb@rohieb.name>
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
Subject: [PATCH 0/9] small nit-picks for the i.MX boards documentation
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Roland Hieber (9):
  doc: boards: imx: order table of contents alphabetically
  doc: boards: Amazon Kindle 4/5: apply some more formatting
  doc: boards: Amazon Kindle 3: apply more formatting
  doc: boards: element14 WaRP7: fix header level and nested list
  doc: boards: Garz+Fricke Vincell: fix header level, capitalization and
    punctuation
  doc: boards: Ka-Ro TX6: use official spelling of Ka-Ro
  doc: boards: Phytec phyCORE-i.MX31: fix formatting, style
  doc: boards: Synertronixx SCB9328: use official uppercase spelling
  doc: boards: Wandboard: fix formatting and punctuation

 ...amazon-kindle3.rst => amazon-kindle-3.rst} | 12 ++++--
 ...-kindle-mx50.rst => amazon-kindle-4-5.rst} | 39 ++++++++++++-------
 ...lement14-WaRP7.rst => element14-warp7.rst} |  5 ++-
 ...Fricke-Cupid.rst => garz-fricke-cupid.rst} |  0
 ...ke-Vincell.rst => garz-fricke-vincell.rst} |  4 +-
 .../imx/{Karo-TX25.rst => karo-tx25.rst}      |  0
 .../boards/imx/{Karo-TX6.rst => karo-tx6.rst} |  4 +-
 ...D-i.MX27.rst => phytec-phycard-i.mx27.rst} |  0
 ...E-i.MX27.rst => phytec-phycore-i.mx27.rst} |  0
 ...E-i.MX31.rst => phytec-phycore-i.mx31.rst} |  8 ++--
 ...E-i.MX35.rst => phytec-phycore-i.mx35.rst} |  0
 .../boards/imx/synertronixx_scb9328.rst       |  2 +-
 .../imx/{Wandboard.rst => wandboard.rst}      | 11 +++---
 13 files changed, 51 insertions(+), 34 deletions(-)
 rename Documentation/boards/imx/{amazon-kindle3.rst => amazon-kindle-3.rst} (78%)
 rename Documentation/boards/imx/{amazon-kindle-mx50.rst => amazon-kindle-4-5.rst} (73%)
 rename Documentation/boards/imx/{Element14-WaRP7.rst => element14-warp7.rst} (95%)
 rename Documentation/boards/imx/{Garz-Fricke-Cupid.rst => garz-fricke-cupid.rst} (100%)
 rename Documentation/boards/imx/{Garz-Fricke-Vincell.rst => garz-fricke-vincell.rst} (90%)
 rename Documentation/boards/imx/{Karo-TX25.rst => karo-tx25.rst} (100%)
 rename Documentation/boards/imx/{Karo-TX6.rst => karo-tx6.rst} (93%)
 rename Documentation/boards/imx/{Phytec-phyCARD-i.MX27.rst => phytec-phycard-i.mx27.rst} (100%)
 rename Documentation/boards/imx/{Phytec-phyCORE-i.MX27.rst => phytec-phycore-i.mx27.rst} (100%)
 rename Documentation/boards/imx/{Phytec-phyCORE-i.MX31.rst => phytec-phycore-i.mx31.rst} (81%)
 rename Documentation/boards/imx/{Phytec-phyCORE-i.MX35.rst => phytec-phycore-i.mx35.rst} (100%)
 rename Documentation/boards/imx/{Wandboard.rst => wandboard.rst} (67%)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
