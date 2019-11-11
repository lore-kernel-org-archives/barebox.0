Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6R3-0007ha-9s
 for barebox@lists.infradead.org; Mon, 11 Nov 2019 09:56:38 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id EA4121C0004
 for <barebox@lists.infradead.org>; Mon, 11 Nov 2019 09:56:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 11 Nov 2019 10:56:06 +0100
Message-Id: <20191111095607.1813-1-ahmad@a3f.at>
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
Subject: [PATCH 0/1] net: designware: eqos: stop DMA on halt
To: barebox@lists.infradead.org

Hello Sascha,

Would be great if you could apply this to master.

Thanks,
Ahmad

Ahmad Fatoum (1):
  net: designware: eqos: stop DMA on halt

 drivers/net/designware_stm32.c    | 2 ++
 drivers/net/designware_tegra186.c | 2 ++
 2 files changed, 4 insertions(+)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
