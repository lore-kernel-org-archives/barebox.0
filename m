Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeoj-00052X-UB
 for barebox@lists.infradead.org; Fri, 31 May 2019 10:31:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWeoi-0005rd-HV
 for barebox@lists.infradead.org; Fri, 31 May 2019 12:31:20 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 12:31:14 +0200
Message-Id: <20190531103116.27378-2-l.stach@pengutronix.de>
In-Reply-To: <20190531103116.27378-1-l.stach@pengutronix.de>
References: <20190531103116.27378-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: rdu2: disable i210 network interface
To: barebox@lists.infradead.org

This causes large timeouts when trying to bring it up. The FEC interface
is good enough for NFS booting.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode

diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
new file mode 100644
index 000000000000..87e7bdaaecfc
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
@@ -0,0 +1 @@
+disabled
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
