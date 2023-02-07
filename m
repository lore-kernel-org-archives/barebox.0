Delivery-date: Tue, 07 Feb 2023 17:22:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjy-00HBYX-E9
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 17:22:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjv-0003dv-IF
	for lore@pengutronix.de; Tue, 07 Feb 2023 17:22:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/G7sBK+4Baqi1QD1jcM+bYHPuk20kORKRy3EZr3Cf3M=; b=iJQWQyub6pK0hrwIe7SSZAQDTp
	P8jPzaZDGeDOHUgYaRNWACot7TMPVuPWrRbVZbsi63lA9JZ/Ym1a7pGOH43Jwbp7XteKwAMkseJKA
	sR9nr36kthG8tbOPtBbutixtFN4AbjWwSYTfN5Co/lZLSHIvI/nQ/ebpBvbvc4kZCxwSl8qnGrzuB
	gUO6EaUTfIstXM5LuiIDJJIBBeaeeCABWYz2wLDGzqcfXax8QnPuDuwCIlDNw7kY8sF+M9jaxeAB1
	Ud5qPDG8k2L4R8N/AIdoSzh5nQrXobmtxvf8NAkIn1PX4Z3USTroS78JI3h0pMMJUX6b4upeTKjIW
	nDhrj8FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQih-00Cnzb-LL; Tue, 07 Feb 2023 16:21:23 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36] helo=fx306.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQiQ-00Cnsx-3Q
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 16:21:11 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 854A135CDB4
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
Received: from fx306 (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 6CABB35CD52
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <3b24.63e27a6e.62fb.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx306.security-mail.net (Postfix) with ESMTPS id 0763535CD3A
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id E15BA27E0506;
	Tue,  7 Feb 2023 17:21:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id C977D27E0508;
	Tue,  7 Feb 2023 17:21:01 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C977D27E0508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675786861;
	bh=/G7sBK+4Baqi1QD1jcM+bYHPuk20kORKRy3EZr3Cf3M=;
	h=From:To:Date:Message-Id;
	b=QW24+wKYLDAQExIGae9rn25jHFNGpWv8ZFgwQ1cGzqcnuVXoUWi24lVtlw51Yw+q8
	 GEu/ST/cpXww0eMW6YC5C5nCjOjPCo5HgPM2unqerudJUP5LfwPPDleCR+AbYSLb2P
	 Rh6G4dOwtGUVBwjqIL+p6G2BUR0KRk1mV42OanuA=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id rlUkRDvd89ZI; Tue,  7 Feb 2023 17:21:01 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id ADFD927E0506;
	Tue,  7 Feb 2023 17:21:01 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Feb 2023 17:20:53 +0100
Message-Id: <20230207162055.10050-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230207162055.10050-1-jmaselbas@kalray.eu>
References: <20230207162055.10050-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_082106_425012_2C75DCF1 
X-CRM114-Status: GOOD (  16.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/5] ratp: Fix retransmission for header-only packets
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
 lib/ratp.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index ce30223bac..d5205a4e93 100644
--- a/lib/ratp.c
+++ b/lib/ratp.c
@@ -738,7 +738,7 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
 		control = RATP_CONTROL_RST | RATP_CONTROL_ACK |
 			ratp_set_sn(ratp_an(hdr)) | ratp_set_next_an(ratp_sn(hdr));
 		ratp_send_hdr(ri, control);
-
+		ri->sendbuf_len = 0;
 		ratp_state_change(ri, RATP_STATE_CLOSED);
 		return 1;
 	}
@@ -784,7 +784,7 @@ static int ratp_behaviour_d1(struct ratp_internal *ri, void *pkt)
 	ri->status = -ECONNREFUSED;
 
 	pr_debug("Error: connection refused\n");
-
+	ri->sendbuf_len = 0;
 	ratp_state_change(ri, RATP_STATE_CLOSED);
 
 	return 1;
@@ -812,6 +812,8 @@ static int ratp_behaviour_d2(struct ratp_internal *ri, void *pkt)
 	ri->status = -ECONNRESET;
 
 	pr_debug("connection reset\n");
+	ri->sendbuf_len = 0;
+	ratp_state_change(ri, RATP_STATE_CLOSED);
 
 	return 0;
 }
@@ -879,7 +881,7 @@ static int ratp_behaviour_e(struct ratp_internal *ri, void *pkt)
 	ratp_send_hdr(ri, control);
 
 	pr_debug("connection reset\n");
-
+	ri->sendbuf_len = 0;
 	ratp_state_change(ri, RATP_STATE_CLOSED);
 
 	return 1;
@@ -924,8 +926,10 @@ static int ratp_behaviour_f1(struct ratp_internal *ri, void *pkt)
 	if (!(hdr->control & RATP_CONTROL_ACK))
 		return 1;
 
-	if (ratp_an_expected(ri, hdr))
+	if (ratp_an_expected(ri, hdr)) {
+		ri->sendbuf_len = 0; /* packet succesfully received */
 		return 0;
+	}
 
 	control = RATP_CONTROL_RST | ratp_set_sn(ratp_an(hdr));
 	ratp_send_hdr(ri, control);
@@ -971,6 +975,7 @@ static int ratp_behaviour_f2(struct ratp_internal *ri, void *pkt)
 		if (ri->sendmsg_current)
 			ratp_msg_done(ri, ri->sendmsg_current, 0);
 		ri->sendmsg_current = NULL;
+		ri->sendbuf_len = 0; /* packet succesfully received */
 		return 0;
 	} else {
 		pr_vdebug("%s: an not expected\n", __func__);
@@ -1175,6 +1180,7 @@ static int ratp_behaviour_h3(struct ratp_internal *ri, void *pkt)
 		ratp_send_hdr(ri, control);
 		ri->status = -ECONNRESET;
 		pr_debug("Error: Connection reset\n");
+		ri->sendbuf_len = 0;
 		ratp_state_change(ri, RATP_STATE_CLOSED);
 		return 1;
 	}
@@ -1217,8 +1223,10 @@ static int ratp_behaviour_h4(struct ratp_internal *ri, void *pkt)
 
 	pr_debug("%s\n", __func__);
 
-	if (ratp_an_expected(ri, hdr))
+	if (ratp_an_expected(ri, hdr)) {
+		ri->sendbuf_len = 0; /* packet succesfully received */
 		ratp_state_change(ri, RATP_STATE_CLOSED);
+	}
 
 	return 1;
 }
@@ -1244,6 +1252,7 @@ static int ratp_behaviour_h5(struct ratp_internal *ri, void *pkt)
 	pr_debug("%s\n", __func__);
 
 	if (ratp_an_expected(ri, hdr)) {
+		ri->sendbuf_len = 0; /* packet succesfully received */
 		ratp_state_change(ri, RATP_STATE_TIME_WAIT);
 		ratp_start_time_wait_timer(ri);
 	}
@@ -1580,9 +1589,8 @@ int ratp_poll(struct ratp *ratp)
 		}
 	}
 
-	if (ri->sendmsg_current && is_timeout(ri->retransmission_timer_start,
+	if (ri->sendbuf_len && is_timeout(ri->retransmission_timer_start,
 	    ri->rto * MSECOND)) {
-
 		ri->retransmission_count++;
 		if (ri->retransmission_count == ri->max_retransmission) {
 			ri->status = ret = -ETIMEDOUT;
@@ -1601,7 +1609,7 @@ int ratp_poll(struct ratp *ratp)
 			goto out;
 	}
 
-	if (!ri->sendmsg_current && !list_empty(&ri->sendmsg))
+	if (ri->sendbuf_len == 0 && !list_empty(&ri->sendmsg))
 		ratp_send_next_data(ri);
 
 	ret = 0;
-- 
2.17.1



