Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4iFe-0000If-Jv
 for barebox@lists.infradead.org; Tue, 25 Sep 2018 07:59:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Sep 2018 09:58:44 +0200
Message-Id: <20180925075847.4585-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/3] i.MX6 NAND boot ROM workarounds
To: Barebox List <barebox@lists.infradead.org>

The i.MX6 NAND boot has some shortcomings in cornercases of the NAND boot
process. This series fixes them.

Sascha

Sascha Hauer (3):
  imx-bbu-nand-fcb: Improve error message
  imx-bbu-nand-fcb: Workaround ROM not being able to handle bad blocks
    properly
  imx-bbu-nand-fcb: Workaround ROM checking fingerprint before
    correcting bitflips

 common/imx-bbu-nand-fcb.c | 57 +++++++++++++++++++++++++++++++++------
 1 file changed, 49 insertions(+), 8 deletions(-)

-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
