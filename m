Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVW68-0004rn-6K
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:32:54 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id D1364100005
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:32:43 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:32:36 +0100
Message-Id: <20191115073239.21013-1-ahmad@a3f.at>
In-Reply-To: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
References: <20191112120036.5dghk76prcxsxtjh@pengutronix.de>
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
Subject: [PATCH v2 0/3] net: designware: eqos: stop DMA on halt
To: barebox@lists.infradead.org

I recently learnt that barebox Ethernet drivers need to call ->halt 
themselves, either directly or indirectly.

The first patch does this. Sascha, do you do fixups into master? If so,
you could fix the first commit up into my previous patch.

After applying the patch and doing a round of boot bnet, the first MDIO
access during probe times out:

    ERROR: <NULL>: MDIO not idle at entry

This is fixed by the other two commits.

The driver isn't in a release yet, so I hope they could join the driver
in master.

Cheers
Ahmad

Ahmad Fatoum (3):
  fixup! net: designware: eqos: stop DMA on halt
  net: designware: eqos: enable clocks before mdio_register
  net: designware: eqos: fix NULL pointer use in dev_printf

 drivers/net/designware_eqos.c     | 18 ++++++------
 drivers/net/designware_eqos.h     |  4 ---
 drivers/net/designware_stm32.c    | 33 +---------------------
 drivers/net/designware_tegra186.c | 47 ++++++-------------------------
 4 files changed, 20 insertions(+), 82 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
