Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x22d.google.com ([2a00:1450:400c:c0c::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSk0-0002Yg-Rt
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:15:12 +0000
Received: by mail-wr0-x22d.google.com with SMTP id r103so17265964wrb.0
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:14:48 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:14:13 +0200
Message-Id: <20170615111420.5318-10-aleksander@aleksander.es>
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
Subject: [PATCH 09/16] ratp: remove FIXME comment: FIN always requires ACK
To: s.hauer@pengutronix.de, barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Section 3.4 in the RFC916 shows a packet flow for the connection close
where the initial packet sent by the endpoint starting the close has
just the FIN flag set, without an ACK:

          -->     <SN=0><AN=1><CTL=FIN>
                <SN=1><AN=1><CTL=FIN,ACK>  <--
          -->     <SN=1><AN=0><CTL=ACK>

This may lead to think that it is actually allowed to send the initial
packet with just FIN set, without ACK-ing any other packet from the
peer.

But, this is actually not possible, the packet MUST be ACK-ing a
previous packet from the peer, even if this is just a duplicated ACK,
because otherwise the packet with the FIN wouldn't get processed in
the H2 behavior (FIN processing) of the peer, as the F2 behavior (ACK
processing) would filter it out.

This is actually the same reasoning why data packets always have ACK
set, even if the same ACK has already been sent previously (e.g. with
a simple ACK packet without data); if they didn't have it, they would
be filtered out in the F2 behavior, never arriving the I1 behavior,
which is where the received data is processed.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 scripts/remote/ratp.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
index 0dfc8420c..e6b3e19b6 100644
--- a/scripts/remote/ratp.py
+++ b/scripts/remote/ratp.py
@@ -724,7 +724,7 @@ class RatpConnection(object):
         deadline = monotonic() + timeout
         logging.info("CLOSE")
         if self._state == RatpState.established:
-            fin = RatpPacket(flags='FA')  # FIXME: only F?
+            fin = RatpPacket(flags='FA')
             fin.c_sn = (self._s_sn + 1) % 2
             fin.c_an = (self._r_sn + 1) % 2
             self._write(fin)
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
