Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjiEt-0006n7-Rj
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 10:16:06 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 16 Jan 2019 11:16:00 +0100
Message-Id: <20190116101601.3441-2-rhi@pengutronix.de>
In-Reply-To: <20190116101601.3441-1-rhi@pengutronix.de>
References: <20190111113554.2zck5xq76ztn6xrb@pengutronix.de>
 <20190116101601.3441-1-rhi@pengutronix.de>
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
Subject: [RESEND] [PATCH 1/2] Documentation: state: fix closing brace without
 opening brace
To: barebox@lists.infradead.org
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
@@ -647,7 +647,6 @@ within the EEPROM.
 			};
 		};
 	};
-};
 
 With this 'backend' definition it's possible to define the *state* variable set
 content, its backend-type and *state* variable layout.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
