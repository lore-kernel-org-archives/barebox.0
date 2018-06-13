Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT00v-0007DT-Iz
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 07:16:19 +0000
Date: Wed, 13 Jun 2018 09:16:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613071605.sjau22dtxqpjyazz@pengutronix.de>
References: <20180611220235.15995-1-rohieb@rohieb.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180611220235.15995-1-rohieb@rohieb.name>
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
Subject: Re: [PATCH 0/9] small nit-picks for the i.MX boards documentation
To: Roland Hieber <rohieb@rohieb.name>
Cc: barebox@lists.infradead.org

On Tue, Jun 12, 2018 at 12:02:26AM +0200, Roland Hieber wrote:
> Roland Hieber (9):
>   doc: boards: imx: order table of contents alphabetically
>   doc: boards: Amazon Kindle 4/5: apply some more formatting
>   doc: boards: Amazon Kindle 3: apply more formatting
>   doc: boards: element14 WaRP7: fix header level and nested list
>   doc: boards: Garz+Fricke Vincell: fix header level, capitalization and
>     punctuation
>   doc: boards: Ka-Ro TX6: use official spelling of Ka-Ro
>   doc: boards: Phytec phyCORE-i.MX31: fix formatting, style
>   doc: boards: Synertronixx SCB9328: use official uppercase spelling
>   doc: boards: Wandboard: fix formatting and punctuation

Applied, thanks

Sascha

> 
>  ...amazon-kindle3.rst => amazon-kindle-3.rst} | 12 ++++--
>  ...-kindle-mx50.rst => amazon-kindle-4-5.rst} | 39 ++++++++++++-------
>  ...lement14-WaRP7.rst => element14-warp7.rst} |  5 ++-
>  ...Fricke-Cupid.rst => garz-fricke-cupid.rst} |  0
>  ...ke-Vincell.rst => garz-fricke-vincell.rst} |  4 +-
>  .../imx/{Karo-TX25.rst => karo-tx25.rst}      |  0
>  .../boards/imx/{Karo-TX6.rst => karo-tx6.rst} |  4 +-
>  ...D-i.MX27.rst => phytec-phycard-i.mx27.rst} |  0
>  ...E-i.MX27.rst => phytec-phycore-i.mx27.rst} |  0
>  ...E-i.MX31.rst => phytec-phycore-i.mx31.rst} |  8 ++--
>  ...E-i.MX35.rst => phytec-phycore-i.mx35.rst} |  0
>  .../boards/imx/synertronixx_scb9328.rst       |  2 +-
>  .../imx/{Wandboard.rst => wandboard.rst}      | 11 +++---
>  13 files changed, 51 insertions(+), 34 deletions(-)
>  rename Documentation/boards/imx/{amazon-kindle3.rst => amazon-kindle-3.rst} (78%)
>  rename Documentation/boards/imx/{amazon-kindle-mx50.rst => amazon-kindle-4-5.rst} (73%)
>  rename Documentation/boards/imx/{Element14-WaRP7.rst => element14-warp7.rst} (95%)
>  rename Documentation/boards/imx/{Garz-Fricke-Cupid.rst => garz-fricke-cupid.rst} (100%)
>  rename Documentation/boards/imx/{Garz-Fricke-Vincell.rst => garz-fricke-vincell.rst} (90%)
>  rename Documentation/boards/imx/{Karo-TX25.rst => karo-tx25.rst} (100%)
>  rename Documentation/boards/imx/{Karo-TX6.rst => karo-tx6.rst} (93%)
>  rename Documentation/boards/imx/{Phytec-phyCARD-i.MX27.rst => phytec-phycard-i.mx27.rst} (100%)
>  rename Documentation/boards/imx/{Phytec-phyCORE-i.MX27.rst => phytec-phycore-i.mx27.rst} (100%)
>  rename Documentation/boards/imx/{Phytec-phyCORE-i.MX31.rst => phytec-phycore-i.mx31.rst} (81%)
>  rename Documentation/boards/imx/{Phytec-phyCORE-i.MX35.rst => phytec-phycore-i.mx35.rst} (100%)
>  rename Documentation/boards/imx/{Wandboard.rst => wandboard.rst} (67%)
> 
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
