Delivery-date: Wed, 25 Jan 2023 16:41:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhuH-001duv-Mq
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 16:41:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhuE-0007i6-Nl
	for lore@pengutronix.de; Wed, 25 Jan 2023 16:41:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tT4Hov04EiO3EqzYLH/lsAoocMs+u21q8FdY/tofiAk=; b=GOsDtc0DS4wF2pONmtUen7P6QQ
	2snnMx65EtLq+JJb5yIZX53f8adDKoc6WTDnygNCUtN1oep6FMnsGYJN6motLYwm/yHEfyhRbV9bl
	PymUtnoozElKrIbNXN56StSudBw5t6kQDaXhRZga6mpJLXhkt6aHJqD5Lh0/SesBIMMBV2EbhaENP
	LFKBN6cMwswulGRgFN1yW2r8Aj+U7a7bv24OrE88XLTJ6M3MOpdpKz612Ofm4irMrYpJnqEb2R1GW
	UoGz3CGlYbnjDHUH6EK8Bd+8pPC+OYkfPFgwxA/M9q9vtfwS4LIneO8Jn+XWZyMljXvoSshrZqDtM
	KbI4zs1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhsk-007qOX-AS; Wed, 25 Jan 2023 15:40:14 +0000
Received: from smtpout30.security-mail.net ([85.31.212.38] helo=fx308.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhsf-007qO7-KJ
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 15:40:11 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx308.security-mail.net (Postfix) with ESMTP id 861D9404651
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:40:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1674661207;
	bh=MhIP7ezEZaglov5xiLQN2dm4jjOQlXE87a1XvGuDzkM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=bN2N4O6jRdeTDrozkjI2mSp80GGcMGFlT8k6YeemzYMh8STPSVMEM8fq54W8eSVwN
	 3Dk3T+1IrvdQmUKt0Q6r1wqpFCcNwAP8q0p93jSFhgHdUrCxwdHE3d7Pc9hKq5arDU
	 xbHM4oPketZV5cT5ZeOQj+C/zbWBHgwd0eFlQ1IU=
Received: from fx308 (localhost [127.0.0.1])
	by fx308.security-mail.net (Postfix) with ESMTP id 72DD9404A32
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:40:07 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <1304c.63d14d56.e983b.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx308.security-mail.net (Postfix) with ESMTPS id EA8A34040F2
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:40:06 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id BCECC27E0461;
	Wed, 25 Jan 2023 16:40:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id A342227E0491;
	Wed, 25 Jan 2023 16:40:06 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A342227E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674661206;
	bh=tT4Hov04EiO3EqzYLH/lsAoocMs+u21q8FdY/tofiAk=;
	h=From:To:Date:Message-Id;
	b=alxa14BIGbwSGAXO5P16sCpzesJnEpBpg2IwM1MQcwUfueX/p2mApTKV07ySU9zAN
	 ep4dIH7ed8v+ID6bvAvUhiQrxeHxH9r27cpjovWIRoA1qdqFRFdV+Nz4wWeq/eopUW
	 MMXgaAJb6hpMlJl9Ds3YP/TmhderakNR+T5YjxPU=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id aZcDVlh53TR1; Wed, 25 Jan 2023 16:40:06 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 875BC27E0461;
	Wed, 25 Jan 2023 16:40:06 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 25 Jan 2023 16:39:59 +0100
Message-Id: <20230125153959.21987-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230123102752.15444-1-jmaselbas@kalray.eu>
References: <20230123102752.15444-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_074009_847051_CB0F3F80 
X-CRM114-Status: GOOD (  17.19  )
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
Subject: [PATCH v2] ratp: Fix retransmission for header-only packets
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
changes in v2: reset sendbuf_len to zero where appropriated (in each behavior)

lib/ratp.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/lib/ratp.c b/lib/ratp.c
index ce30223bac..b582e4e779 100644
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
@@ -971,6 +975,8 @@ static int ratp_behaviour_f2(struct ratp_internal *ri, void *pkt)
 		if (ri->sendmsg_current)
 			ratp_msg_done(ri, ri->sendmsg_current, 0);
 		ri->sendmsg_current = NULL;
+		ri->sendbuf_len = 0; /* packet succesfully received */
+		pr_debug("Data succesfully sent 0\n");
 		return 0;
 	} else {
 		pr_vdebug("%s: an not expected\n", __func__);
@@ -1175,6 +1181,7 @@ static int ratp_behaviour_h3(struct ratp_internal *ri, void *pkt)
 		ratp_send_hdr(ri, control);
 		ri->status = -ECONNRESET;
 		pr_debug("Error: Connection reset\n");
+		ri->sendbuf_len = 0;
 		ratp_state_change(ri, RATP_STATE_CLOSED);
 		return 1;
 	}
@@ -1217,8 +1224,10 @@ static int ratp_behaviour_h4(struct ratp_internal *ri, void *pkt)
 
 	pr_debug("%s\n", __func__);
 
-	if (ratp_an_expected(ri, hdr))
+	if (ratp_an_expected(ri, hdr)) {
+		ri->sendbuf_len = 0; /* packet succesfully received */
 		ratp_state_change(ri, RATP_STATE_CLOSED);
+	}
 
 	return 1;
 }
@@ -1244,6 +1253,7 @@ static int ratp_behaviour_h5(struct ratp_internal *ri, void *pkt)
 	pr_debug("%s\n", __func__);
 
 	if (ratp_an_expected(ri, hdr)) {
+		ri->sendbuf_len = 0; /* packet succesfully received */
 		ratp_state_change(ri, RATP_STATE_TIME_WAIT);
 		ratp_start_time_wait_timer(ri);
 	}
@@ -1580,9 +1590,8 @@ int ratp_poll(struct ratp *ratp)
 		}
 	}
 
-	if (ri->sendmsg_current && is_timeout(ri->retransmission_timer_start,
+	if (ri->sendbuf_len && is_timeout(ri->retransmission_timer_start,
 	    ri->rto * MSECOND)) {
-
 		ri->retransmission_count++;
 		if (ri->retransmission_count == ri->max_retransmission) {
 			ri->status = ret = -ETIMEDOUT;
@@ -1601,7 +1610,7 @@ int ratp_poll(struct ratp *ratp)
 			goto out;
 	}
 
-	if (!ri->sendmsg_current && !list_empty(&ri->sendmsg))
+	if (ri->sendbuf_len == 0 && !list_empty(&ri->sendmsg))
 		ratp_send_next_data(ri);
 
 	ret = 0;
-- 
2.17.1



