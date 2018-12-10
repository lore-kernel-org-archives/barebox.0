Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWNu1-00059V-E8
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 15:55:27 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 10 Dec 2018 16:55:10 +0100
Message-Id: <20181210155511.1376-2-rhi@pengutronix.de>
In-Reply-To: <20181210155511.1376-1-rhi@pengutronix.de>
References: <20181210155511.1376-1-rhi@pengutronix.de>
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
Subject: [PATCH 2/3] Documentation: state: fix closing brace without opening
 brace
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Also fix the resulting sphinx warning:

  Documentation/user/state.rst:650: WARNING: Explicit markup ends without a blank line; unexpected unindent.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/state.rst | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 89129add77..07743df0cb 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -636,29 +636,28 @@ within the EEPROM.
 
 .. code-block:: text
 
 	eeprom@50 {
 		partitions {
 			compatible = "fixed-partitions";
 			#size-cells = <1>;
 			#address-cells = <1>;
 			backend_state_eeprom: eeprom_state_memory@400 {
 				reg = <0x400 0x100>;
 				label = "state-eeprom";
 			};
 		};
 	};
-};
 
 With this 'backend' definition it's possible to define the *state* variable set
 content, its backend-type and *state* variable layout.
 
 .. code-block:: text
 
 	aliases {
 		state = &state_eeprom;
 	};
 
 	state_eeprom: eeprom_memory {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "barebox,state";
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
