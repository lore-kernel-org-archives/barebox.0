Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x229.google.com ([2a00:1450:400c:c0c::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4x-0004Hr-E8
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:19 +0000
Received: by mail-wr0-x229.google.com with SMTP id r103so147700197wrb.0
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:54 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:13 +0200
Message-Id: <20170621191323.18191-7-aleksander@aleksander.es>
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
Subject: [PATCH v2 06/16] ratp: fix data presence check
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

Looking at the "data length" and SO flag isn't enough to declare a
packet with or without data, because SYN flagged packets will also use
the "data length" field to define MDL.

So, improve the check to match against SYN|RST|FIN flagged packets,
which can never have data.

This commit fixed a segfault in barebox when an unexpected SYN packet
was sent in the middle of a connection; barebox thought the packet had
data because the "data length" in the SYN packet was different than 0.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c             | 4 ++--
 scripts/remote/ratp.py | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index d3c252047..c946bea1a 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -165,7 +165,7 @@ static bool ratp_has_data(struct ratp_header *hdr)
 {
 	if (hdr->control & RATP_CONTROL_SO)
 		return 1;
-	if (hdr->data_length)
+	if (!(hdr->control & (RATP_CONTROL_SYN | RATP_CONTROL_RST | RATP_CONTROL_FIN)) && hdr->data_length)
 		return 1;
 	return 0;
 }
@@ -1338,7 +1338,7 @@ static int ratp_behaviour_i1(struct ratp_internal *ri, void *pkt)
 	struct ratp_header *hdr = pkt;
 	uint8_t control = 0;
 
-	if (!hdr->data_length && !(hdr->control & RATP_CONTROL_SO))
+	if (!ratp_has_data (hdr))
 		return 1;
 
 	pr_vdebug("%s **received** %d\n", __func__, hdr->data_length);
diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
index 079fb871a..a41d2e8a3 100644
--- a/scripts/remote/ratp.py
+++ b/scripts/remote/ratp.py
@@ -525,7 +525,7 @@ class RatpConnection(object):
             # Our fin was lost, rely on retransmission
             return False
 
-        if r.length or r.c_so:
+        if (r.length and not r.c_syn and not r.c_rst and not r.c_fin) or r.c_so:
             self._retrans = None
             s = RatpPacket(flags='RA')
             s.c_sn = r.c_an
@@ -596,7 +596,7 @@ class RatpConnection(object):
         if r.c_so:
             self._r_sn = r.c_sn
             self._rx_buf.append(chr(r.length))
-        elif r.length:
+        elif r.length and not r.c_syn and not r.c_rst and not r.c_fin:
             self._r_sn = r.c_sn
             self._rx_buf.append(r.payload)
         else:
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
