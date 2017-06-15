Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSk3-0002Yw-U0
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:17 +0000
Received: by mail-wr0-x243.google.com with SMTP id y25so674479wrd.1
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:55 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:20 +0200
Message-Id: <20170615111420.5318-17-aleksander@aleksander.es>
In-Reply-To: <20170615111420.5318-1-aleksander@aleksander.es>
References: <20170615111420.5318-1-aleksander@aleksander.es>
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
Subject: [PATCH 16/16] ratp: user close may happen in SYN-RECEIVED state
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The reference says:

     5.2.3. SYN-RECEIVED
     ...
     Departures
       - A CLOSE request is made by the user.  Create a packet with
         FIN set.  Send it and go to the FIN-WAIT state.

Add this missing step.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c             | 2 +-
 scripts/remote/ratp.py | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 46a82c69a..e7fbf640a 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1689,7 +1689,7 @@ void ratp_close(struct ratp *ratp)
 	if (!ri)
 		return;
 
-	if (ri->state == RATP_STATE_ESTABLISHED) {
+	if (ri->state == RATP_STATE_ESTABLISHED || ri->state == RATP_STATE_SYN_RECEIVED) {
 		uint64_t start;
 		u8 control;
 
diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
index 7972d31f2..44f3e2f40 100644
--- a/scripts/remote/ratp.py
+++ b/scripts/remote/ratp.py
@@ -721,7 +721,7 @@ class RatpConnection(object):
     def close(self, timeout=1.0):
         deadline = monotonic() + timeout
         logging.info("CLOSE")
-        if self._state == RatpState.established:
+        if self._state == RatpState.established or self._state == RatpState.syn_received:
             fin = RatpPacket(flags='FA')
             fin.c_sn = (self._s_sn + 1) % 2
             fin.c_an = (self._r_sn + 1) % 2
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
