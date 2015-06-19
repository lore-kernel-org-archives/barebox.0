Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5vLD-0008U1-Bj
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 12:24:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z5vKp-0001X8-MX
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 14:23:51 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z5vKp-0003Nc-GB
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 14:23:51 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 19 Jun 2015 14:23:47 +0200
Message-Id: <1434716629-10707-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434716629-10707-1-git-send-email-jbe@pengutronix.de>
References: <1434716629-10707-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/3] Documentation: fix spelling
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/system-reset.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/system-reset.rst b/Documentation/user/system-reset.rst
index c2ee409..8ff3963 100644
--- a/Documentation/user/system-reset.rst
+++ b/Documentation/user/system-reset.rst
@@ -49,7 +49,7 @@ But there are some drawbacks within this simple approach.
   currently used clock speeds. But don't rely on it.
 
 To workaround these issues the reset signal triggered by a SoC internal source
-must be 'visible' to the external devices to also reset them like a real POR do.
+must be 'visible' to the external devices to also reset them like a real POR does.
 But many SoCs do not provide such a signal. So you can't use the internal reset
 source if you face one of the above listed issues!
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
