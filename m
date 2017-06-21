Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNl4v-0004Hn-5p
 for barebox@lists.infradead.org; Wed, 21 Jun 2017 19:14:16 +0000
Received: by mail-wr0-x244.google.com with SMTP id 77so29048387wrb.3
 for <barebox@lists.infradead.org>; Wed, 21 Jun 2017 12:13:52 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Wed, 21 Jun 2017 21:13:11 +0200
Message-Id: <20170621191323.18191-5-aleksander@aleksander.es>
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
Subject: [PATCH v2 04/16] ratp: add missing RST flag in behavior G
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Aleksander Morgado <aleksander@aleksander.es>

The reference says:

   If the ACK flag was set then send:
       <SN=received AN><CTL=RST>
   If the ACK flag was not set then send:
       <SN=0><AN=received SN+1 modulo 2><CTL=RST, ACK>
   (i.e. in both cases RST is needed)

The RST flag is set initially in the 'control' variable; so instead of
completely overwriting it, make sure the additional flags are OR-ed
to the current value.

This fix isn't related to any failed barebox<->bbremote interaction
(it really is a very rare corner case).

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 lib/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index a8ac52c75..43b8b04dc 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1038,7 +1038,7 @@ static int ratp_behaviour_g(struct ratp_internal *ri, void *pkt)
 	if (hdr->control & RATP_CONTROL_ACK)
 		control |= ratp_set_sn(ratp_an(hdr));
 	else
-		control = ratp_set_an(ratp_sn(hdr) + 1) | RATP_CONTROL_ACK;
+		control |= ratp_set_an(ratp_sn(hdr) + 1) | RATP_CONTROL_ACK;
 
 	ratp_send_hdr(ri, control);
 
-- 
2.13.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
