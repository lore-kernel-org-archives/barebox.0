Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.iad3a.emailsrvr.com ([173.203.187.63]
 helo=smtp101.iad3a.emailsrvr.com)
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3oTd-0007K8-Tx
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 18:17:03 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Mon,  7 Nov 2016 18:16:20 +0000
Message-Id: <20161107181624.4262-1-abbotti@mev.co.uk>
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
Subject: [PATCH 0/4] net/designware: A few patches from U-Boot
To: barebox@lists.infradead.org

Here are a few old-ish patches for the Synopsys Designware Ethernet
driver, ported over from U-Boot.

1) net/designware: Consecutive writes to the same register to be avoided
2) net/designware: Do not select MIIPORT for RGMII interface
3) net: designware: Respect "bus mode" register contents on SW reset
4) net/designware: add explicit reset of {tx|rx}_currdescnum

 drivers/net/designware.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
