Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22d.google.com ([2607:f8b0:4002:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aImWA-0008HH-9X
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 00:08:59 +0000
Received: by mail-yk0-x22d.google.com with SMTP id v14so357088367ykd.3
 for <barebox@lists.infradead.org>; Mon, 11 Jan 2016 16:08:37 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 11 Jan 2016 22:08:20 -0200
Message-Id: <1452557300-30090-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] imx233-olinuxino: Fix mx23_power_init() arguments
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@nxp.com>, barebox@lists.infradead.org, pmamonov@gmail.com

From: Fabio Estevam <fabio.estevam@nxp.com>

Commit 4d70da6 ("ARM: MXS: power-init: Add parameters to
mx28_power_init()") causes imx233-olinuxino to not boot anymore.

imx233-olinuxino is commonly powered from external input supply,
so adjust the mx23_power_init() arguments to reflect that.

Reported-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
Tested-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/arm/boards/imx233-olinuxino/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index ce46f7e..63a6523 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -154,7 +154,7 @@ static noinline void imx23_olinuxino_init(void)
 
 	pr_debug("initializing power...\n");
 
-	mx23_power_init(0, 1, 0);
+	mx23_power_init(0, 0, 1);
 
 	pr_debug("initializing SDRAM...\n");
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
