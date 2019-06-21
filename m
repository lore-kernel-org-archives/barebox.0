Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBzd-0006tE-FK
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 05:21:46 +0000
Received: by mail-lj1-x22b.google.com with SMTP id r9so4811012ljg.5
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 22:21:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 21 Jun 2019 08:21:38 +0300
Message-Id: <20190621052138.12246-5-antonynpavlov@gmail.com>
In-Reply-To: <20190621052138.12246-1-antonynpavlov@gmail.com>
References: <20190621052138.12246-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/4] MIPS: dts: tplink-mr3020: add missing stdout-path property
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/tplink-mr3020.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 982cffc250..e30eae1578 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -7,6 +7,8 @@
 	};
 
 	chosen {
+		stdout-path = &uart;
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
