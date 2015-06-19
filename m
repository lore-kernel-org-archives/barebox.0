Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z5vLJ-0004c2-Nb
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 12:24:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1Z5vKp-0001X9-Ok
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 14:23:51 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <jbe@pengutronix.de>) id 1Z5vKp-0003Ni-Gg
 for barebox@lists.infradead.org; Fri, 19 Jun 2015 14:23:51 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 19 Jun 2015 14:23:48 +0200
Message-Id: <1434716629-10707-3-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/3] Documentation: be more precise about the topic
To: barebox@lists.infradead.org

'system restart' is the correct topic here.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/user/system-reset.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/system-reset.rst b/Documentation/user/system-reset.rst
index 8ff3963..e76e3a2 100644
--- a/Documentation/user/system-reset.rst
+++ b/Documentation/user/system-reset.rst
@@ -1,11 +1,11 @@
 .. _system_reset:
 
-System Reset
-------------
+System Restart
+--------------
 
-When running the reset command barebox restarts the SoC somehow. Reset can
+When running the reset command barebox restarts the SoC somehow. Restart can
 be done in software, but a more reliable way is to use a hard reset line, which
-really resets the SoC.
+really resets the whole machine.
 The most common way to force such a hard reset is by using a watchdog. Its
 trigger time will be setup as short as possible and after that the software just
 waits for its reset. Very simple and most of the time it does what's expected.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
