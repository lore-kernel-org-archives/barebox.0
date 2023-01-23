Delivery-date: Mon, 23 Jan 2023 11:31:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJu6p-0032LU-Ar
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 11:31:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJu6m-0003UV-Qp
	for lore@pengutronix.de; Mon, 23 Jan 2023 11:31:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qsWmJc7SNTGZmKsCQroUUPUxcf71PZoI7dfr8NMwI3o=; b=crerbar2i/YBck6ISAtDnH7X1r
	eIfNraCZKw1FF264/PQf5z62nGuOe5B/F2thwPff4sCPbJcCihv70NzEB0ICnatSwXHcYiD51jLsE
	q2wQ07YIS3YCRYpy6SpwmWR8FdrRe92deJezJerbu/JMS687KaIoC+OxHHbm63kicKM+uGb51QE0z
	zdHy1PT58GDutuV54nvPmM/Sd73+cVzYfm1SrKEu0Q8waO8zOxNCD9eXNxf/tafOkXSoko5QcWtk3
	kmC0mgicBlKE4gIMfPtXkqEL7qiak/DZyGjOurtO/qpl7/PvCet5UnHapDfsf1KKjBElxXlyFma3t
	5f0pTLPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJu58-00GpZ4-QR; Mon, 23 Jan 2023 10:29:43 +0000
Received: from mxout.security-mail.net ([85.31.212.46] helo=fx303.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJu3c-00GoyX-LI
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 10:28:15 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 48DA130FB79
	for <barebox@lists.infradead.org>; Mon, 23 Jan 2023 11:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1674469680;
	bh=3AOXlNSE6/CLYLQHJzi/+R+pFn0/ah4NCd8TlGzZfI0=;
	h=From:To:Cc:Subject:Date;
	b=mIWswEaPK9T++oP6JF53eheccOadN5Nd+mn9EwhM0A9HgL7QJgGGepoZyoHRZOmes
	 RMcDY+eT485fg9X7Vo/uacsrR211yvueZKB2Ao7H8O3aZmC6ViTydafaSlNCiKSf4X
	 i/s8HpGhtnrle9Z2tVVzcMo6FY5LpaU9e/AH6FmQ=
Received: from fx303 (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id 2260230FB68
	for <barebox@lists.infradead.org>; Mon, 23 Jan 2023 11:28:00 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <1627f.63ce612f.775d2.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx303.security-mail.net (Postfix) with ESMTPS id 792B130F830
	for <barebox@lists.infradead.org>; Mon, 23 Jan 2023 11:27:59 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 5ECE827E0481;
	Mon, 23 Jan 2023 11:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 46DD827E0488;
	Mon, 23 Jan 2023 11:27:59 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 46DD827E0488
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674469679;
	bh=qsWmJc7SNTGZmKsCQroUUPUxcf71PZoI7dfr8NMwI3o=;
	h=From:To:Date:Message-Id;
	b=KCO4W8ku2wLzq82hp1zauE33NDyBEPajCY7Aol5N41FtZAuISQhCZB1mgaIA014JB
	 fML8Bd7jcAmadJgL00uw6h7mxE4fMLAffWOvptvlCT3NYG68GoePGdW4Ey0gKpXpAy
	 Yr9f555dR7reE6/S3I5L6qx5tUoURiWb+tHbfbl4=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id YQIxILtYt8gP; Mon, 23 Jan 2023 11:27:59 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 2B6E827E0481;
	Mon, 23 Jan 2023 11:27:59 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 23 Jan 2023 11:27:52 +0100
Message-Id: <20230123102752.15444-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_022808_922949_AA3B6289 
X-CRM114-Status: GOOD (  15.37  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC PATCH] ratp: Fix retransmission for header-only packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using sendmsg_current to detect if a packet needs to be retransmitted is
brittle as only packets containing data will ever be considered, packets
only containing a header (without data) were never being retransmitted.

The sendbuf_len is used to determine if a packets is being send or not,
a non-zero length means that a packets is still being in the "try-send"
state, the length is not set to zero when a valid SN is received.

Retransmission issue can be easily reproduced with a physical UART (not
cdc_acm over USB), by running the following command:

    while ratp-barebox-cli -b 115200 -t /dev/ttyACMx -p; do :; done

Alternatively, it is possible to modify lib/ratp.c to force packets to
be sent by the retransmission logic with the following change:

    @ int ratp_send_pkt(struct ratp_internal *ri, void *pkt, int length)
                    ri->sendbuf_len = length;
    -               ri->retransmission_timer_start = get_time_ns();
    +               ri->retransmission_timer_start = get_time_ns() - ri->rto * MSECOND/2;
                    ri->retransmission_count = 0;
            }
    -       return ri->ratp->send(ri->ratp, pkt, length);
    +       return 0;

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 lib/ratp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index ce30223bac..afa76ac894 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -1391,6 +1391,9 @@ static int ratp_state_machine(struct ratp_internal *ri, void *pkt)
 	ratp_print_header(ri, hdr, "                      recv");
 	pr_debug(" state %s\n", ratp_state_str[ri->state]);
 
+	if ((hdr->control & RATP_CONTROL_ACK) && (ratp_an_expected(ri, hdr)))
+		ri->sendbuf_len = 0;
+
 	switch (ri->state) {
 	case RATP_STATE_LISTEN:
 		ratp_behaviour_a(ri, pkt);
@@ -1580,9 +1583,8 @@ int ratp_poll(struct ratp *ratp)
 		}
 	}
 
-	if (ri->sendmsg_current && is_timeout(ri->retransmission_timer_start,
+	if (ri->sendbuf_len && is_timeout(ri->retransmission_timer_start,
 	    ri->rto * MSECOND)) {
-
 		ri->retransmission_count++;
 		if (ri->retransmission_count == ri->max_retransmission) {
 			ri->status = ret = -ETIMEDOUT;
@@ -1601,7 +1603,7 @@ int ratp_poll(struct ratp *ratp)
 			goto out;
 	}
 
-	if (!ri->sendmsg_current && !list_empty(&ri->sendmsg))
+	if (ri->sendbuf_len == 0 && !list_empty(&ri->sendmsg))
 		ratp_send_next_data(ri);
 
 	ret = 0;
-- 
2.17.1



