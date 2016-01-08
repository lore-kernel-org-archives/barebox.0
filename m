Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHUzw-0003KW-5d
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 11:14:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Jan 2016 12:13:52 +0100
Message-Id: <1452251635-14689-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
References: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] pyserial: decrease timeouts
To: Barebox List <barebox@lists.infradead.org>

pyserial has very generous timeouts which introduces quite big latencies
at least when used on rfc2217 ports. Decrease timeouts to make it more
reactive.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/serial/rfc2217.py | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/serial/rfc2217.py b/scripts/serial/rfc2217.py
index 4fe1a72..b65edd5 100644
--- a/scripts/serial/rfc2217.py
+++ b/scripts/serial/rfc2217.py
@@ -341,9 +341,9 @@ class TelnetSubnegotiation(object):
         """
         timeout_time = time.time() + timeout
         while time.time() < timeout_time:
-            time.sleep(0.05)    # prevent 100% CPU load
             if self.isReady():
                 break
+            time.sleep(0.001)    # prevent 100% CPU load
         else:
             raise SerialException("timeout while waiting for option %r" % (self.name))
 
@@ -443,9 +443,9 @@ class RFC2217Serial(SerialBase):
         # now wait until important options are negotiated
         timeout_time = time.time() + self._network_timeout
         while time.time() < timeout_time:
-            time.sleep(0.05)    # prevent 100% CPU load
             if sum(o.active for o in mandadory_options) == sum(o.state != INACTIVE for o in mandadory_options):
                 break
+            time.sleep(0.001)    # prevent 100% CPU load
         else:
             raise SerialException("Remote does not seem to support RFC2217 or BINARY mode %r" % mandadory_options)
         if self.logger:
@@ -488,9 +488,9 @@ class RFC2217Serial(SerialBase):
             self.logger.debug("Negotiating settings: %s" % (items,))
         timeout_time = time.time() + self._network_timeout
         while time.time() < timeout_time:
-            time.sleep(0.05)    # prevent 100% CPU load
             if sum(o.active for o in items) == len(items):
                 break
+            time.sleep(0.001)    # prevent 100% CPU load
         else:
             raise SerialException("Remote does not accept parameter change (RFC2217): %r" % items)
         if self.logger:
@@ -865,13 +865,13 @@ class RFC2217Serial(SerialBase):
             self.rfc2217SendSubnegotiation(NOTIFY_MODEMSTATE)
             timeout_time = time.time() + self._network_timeout
             while time.time() < timeout_time:
-                time.sleep(0.05)    # prevent 100% CPU load
                 # when expiration time is updated, it means that there is a new
                 # value
                 if self._modemstate_expires > time.time():
                     if self.logger:
                         self.logger.warning('poll for modem state failed')
                     break
+                time.sleep(0.001)    # prevent 100% CPU load
             # even when there is a timeout, do not generate an error just
             # return the last known value. this way we can support buggy
             # servers that do not respond to polls, but send automatic
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
