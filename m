Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x235.google.com ([2a00:1450:400c:c0c::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSk3-0002Yr-1Q
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:14 +0000
Received: by mail-wr0-x235.google.com with SMTP id 36so17083130wry.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:53 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:18 +0200
Message-Id: <20170615111420.5318-15-aleksander@aleksander.es>
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
Subject: [PATCH 14/16] ratp: don't ignore data that may arrive in behaviour H1
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

If an input packet arrives H1 that has data in it, we need to:
  * track sn_received
  * if we have data pending, send it
  * if we don't have data pending, send a plain ACK

This process, as noted in RFC916, is the same as the I1 procedure, so
go and run it:

     Go to the ESTABLISHED state and execute procedure I1 to process
     any data which might be in this packet.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c             |  8 +++++++-
 scripts/remote/ratp.py | 14 ++++++--------
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index e810a9e54..2dee41009 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1042,6 +1042,8 @@ static int ratp_behaviour_g(struct ratp_internal *ri, void *pkt)
 	return 0;
 }
 
+static int ratp_behaviour_i1(struct ratp_internal *ri, void *pkt);
+
 /*
  * Our SYN has been acknowledged.  At this point we are
  * technically in the ESTABLISHED state.  Send any initial data
@@ -1062,7 +1064,11 @@ static int ratp_behaviour_h1(struct ratp_internal *ri, void *pkt)
 
 	ratp_state_change(ri, RATP_STATE_ESTABLISHED);
 
-	return 0;
+	/* If the input message has data (i.e. it is not just an ACK
+	 * without data) then we need to send back an ACK ourselves,
+	 * or even data if we have it pending. This is the same
+	 * procedure done in i1, so just run it. */
+	return ratp_behaviour_i1 (ri, pkt);
 }
 
 /*
diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
index e6b3e19b6..7972d31f2 100644
--- a/scripts/remote/ratp.py
+++ b/scripts/remote/ratp.py
@@ -489,12 +489,8 @@ class RatpConnection(object):
 
     def _h1(self, r):
         logging.info("H1")
-
-        # FIXME: initial data?
         self._state = RatpState.established
-        self._r_sn = r.c_sn
-
-        return False
+        return self._common_i1(r)
 
     def _h2(self, r):
         logging.info("H2")
@@ -584,9 +580,7 @@ class RatpConnection(object):
         self._time_wait_deadline = monotonic() + self._get_rto()
         return False
 
-    def _i1(self, r):
-        logging.info("I1")
-
+    def _common_i1(self, r):
         if r.c_so:
             self._r_sn = r.c_sn
             self._rx_buf.append(chr(r.length))
@@ -608,6 +602,10 @@ class RatpConnection(object):
         self._write(s)
         return False
 
+    def _i1(self, r):
+        logging.info("I1")
+        return self._common_i1(r)
+
     def _machine(self, pkt):
         logging.info("State: %r", self._state)
         if self._state == RatpState.listen:
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
