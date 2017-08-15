Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhcBU-0002qN-E9
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 13:47:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB6-0007jE-4v
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:40 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-0003zz-RA
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 15 Aug 2017 15:46:34 +0200
Message-Id: <20170815134636.21236-6-jbe@pengutronix.de>
In-Reply-To: <20170815134636.21236-1-jbe@pengutronix.de>
References: <20170815134636.21236-1-jbe@pengutronix.de>
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
Subject: [PATCH 5/7] docs: remove build warning
To: barebox@lists.infradead.org

This change removes:

"devicetree/bindings/rtc/dallas,ds1307.rst: WARNING: document isn't included in any toctree" warning

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/devicetree/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index c5992c0fc..de571547e 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -12,3 +12,4 @@ Contents:
    bindings/leds/*
    bindings/misc/*
    bindings/mtd/*
+   bindings/rtc/*
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
