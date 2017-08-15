Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhcBU-0002qG-NH
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 13:47:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-0007jA-Vw
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-0003xf-MP
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 15 Aug 2017 15:46:30 +0200
Message-Id: <20170815134636.21236-2-jbe@pengutronix.de>
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
Subject: [PATCH 1/7] docs/DS1307: fix layout
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/devicetree/bindings/rtc/dallas,ds1307.rst | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst b/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
index 602f74b4d..5a75be40e 100644
--- a/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
+++ b/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
@@ -2,12 +2,14 @@ Dallas DS1307 I2C Serial Real-Time Clock
 ========================================
 
 Required properties:
+
 * ``compatible``: ``dallas,ds1307``, ``dallas,ds1308``, ``dallas,ds1338``
 	"maxim" can be used in place of "dallas"
 
 * ``reg``: I2C address for chip
 
 Optional properties:
+
 * ``ext-clock-input``: Enable external clock input pin
 * ``ext-clock-output``:  Enable square wave output.  The above two
   properties are mutually exclusive
@@ -19,7 +21,10 @@ Optional properties:
 The default is ext-clock-input, ext-clock-output, and ext-clock-bb
 disabled and ext-clock-rate of 1 Hz.
 
-Example::
+Example
+
+.. code-block:: text
+
 	ds1307: rtc@68 {
 		compatible = "dallas,ds1307";
 		reg = <0x68>;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
