Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x233.google.com ([2a00:1450:400c:c0c::233])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4z-0004Hw-4t
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:19 +0000
Received: by mail-wr0-x233.google.com with SMTP id l5so4539482wre.2
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:56 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:15 +0200
Message-Id: <20170621191323.18191-9-aleksander@aleksander.es>
In-Reply-To: <20170621191323.18191-1-aleksander@aleksander.es>
References: <20170621191323.18191-1-aleksander@aleksander.es>
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
Subject: [PATCH v2 08/16] ratp: remove bogus data checks in behavior C2
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

The SN validation was being completely ignored if the packet had no
data (e.g. for RST, FIN or SYN or plain ACKs). This condition is now
removed so that the SN check is done.

The second check removed was actually never being used, as it was
already being tested for not having data in the first one.

These two fixes are a cleanup to follow the protocol correctly.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c             |  8 +-------
 scripts/remote/ratp.py | 16 +++++-----------
 2 files changed, 6 insertions(+), 18 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index 846f8130c..321721ab7 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -721,9 +721,6 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
 
 	pr_debug("%s\n", __func__);
 
-	if (!ratp_has_data(hdr))
-		return 0;
-
 	if (ratp_sn_expected(ri, hdr))
 		return 0;
 
@@ -745,9 +742,6 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
 		return 1;
 	}
 
-	if (!ratp_has_data(hdr))
-		return 1;
-
 	pr_debug("Sending ack for duplicate message\n");
 	ret = ratp_send_ack(ri, hdr);
 	if (ret)
@@ -1846,4 +1840,4 @@ eor:
 	}
 
 	return 0;
-}
\ No newline at end of file
+}
diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
index a41d2e8a3..0dfc8420c 100644
--- a/scripts/remote/ratp.py
+++ b/scripts/remote/ratp.py
@@ -339,9 +339,6 @@ class RatpConnection(object):
     def _c2(self, r):
         logging.info("C2")
 
-        if r.length == 0 and r.c_so == 0:
-            return True
-
         if r.c_sn != self._r_sn:
             return True
 
@@ -358,14 +355,11 @@ class RatpConnection(object):
             self._state = RatpState.closed
             return False
 
-        # FIXME: only ack duplicate data packages?
-        # This is not documented in RFC 916
-        if r.length or r.c_so:
-            logging.info("C2: duplicate data packet, dropping")
-            s = RatpPacket(flags='A')
-            s.c_sn = r.c_an
-            s.c_an = (r.c_sn + 1) % 2
-            self._write(s)
+        logging.info("C2: duplicate packet")
+        s = RatpPacket(flags='A')
+        s.c_sn = r.c_an
+        s.c_an = (r.c_sn + 1) % 2
+        self._write(s)
 
         return False
 
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
