Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsiE-0004hW-5k
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 14:34:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsiC-0004Fj-Is
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:34:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hcsiC-0008Qt-Aj
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 16:34:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 16:34:16 +0200
Message-Id: <20190617143418.32207-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190617143418.32207-1-a.fatoum@pengutronix.de>
References: <20190617143418.32207-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 2/4] Documentation: reset-reason: document new BROWNOUT
 reason
To: barebox@lists.infradead.org

Now that enum reset_src_type has been extended by BROWNOUT as a reason,
add it to the user documentation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/reset-reason.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/user/reset-reason.rst b/Documentation/user/reset-reason.rst
index 26d37f86dd3e..e46f2ca684ab 100644
--- a/Documentation/user/reset-reason.rst
+++ b/Documentation/user/reset-reason.rst
@@ -41,6 +41,10 @@ The following values can help to detect the reason why the bootloader runs:
 * ``EXT`` (EXTernal): some SoCs have special device pins for external reset
   signals other than the ``RST`` one. Application specific how to handle this
   state.
+* ``BROWNOUT``: some SoCs detect undervoltage conditions and stay in reset
+  till the supply voltage crosses a predefined threshold voltage. This avoids
+  erratic behavior that may occur when running out-of-spec. Application specific
+  how to handle this state.
 
 It depends on your board/SoC and its features if the hardware is able to detect
 these reset reasons. Most of the time only ``POR`` and ``RST`` are supported
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
