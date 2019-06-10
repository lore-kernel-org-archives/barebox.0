Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMhL-0005Vg-ED
 for barebox@lists.infradead.org; Mon, 10 Jun 2019 15:59:04 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 190so2084399vsf.9
 for <barebox@lists.infradead.org>; Mon, 10 Jun 2019 08:59:02 -0700 (PDT)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Mon, 10 Jun 2019 11:58:35 -0400
Message-Id: <20190610155835.18304-1-vivien.didelot@gmail.com>
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
Subject: [PATCH] ARM: zii-rdu2: disable eth0 and eth1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

The current support for the ZII RDU2 Board times out on eth0 and eth1
when booting 'net' from an alternative interface, like a USB Ethernet
dongle. eth0 is the DSA master interface and has no use within barebox,
as well as the gigabit interface eth1 which is wired to the switch
port 0. Disable them to allow Barebox to boot right away from network.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode | 1 +
 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode

diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode
new file mode 100644
index 000000000..87e7bdaae
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth0.mode
@@ -0,0 +1 @@
+disabled
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
new file mode 100644
index 000000000..87e7bdaae
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/dev.eth1.mode
@@ -0,0 +1 @@
+disabled
\ No newline at end of file
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
