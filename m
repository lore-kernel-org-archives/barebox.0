Delivery-date: Wed, 25 Jan 2023 16:46:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhym-001e5m-6H
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 16:46:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhyi-0008ON-75
	for lore@pengutronix.de; Wed, 25 Jan 2023 16:46:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iPAXVl3SXyG/egNtxzykqmNpSXRjvIFTjolFFNqSVTE=; b=4IeRNdu/pyVQrJk3xIDMzXglQC
	IWhhHPZD8Gxp7RIBzCU0R6j0IEpD4UvU7xmPdL/ayoGIB0mDz5IlWmBQZPbnuR3dX7qOOzOIg3To3
	tgcNtIdNMejE+L5CFIGb6o6ZqC5BREN7rzzQlPMT+kiTjxaG9VtsS0kVvndfiucxW0LKyViEDlAfO
	v2/o9UGiWuQrkWP2guAd2u8zMqTdvBYh/fehYcOnAmSuYoQA3YaW7uSdIqCeFx+HaBuYpqZASQTAP
	j5nlC4MZD5wAenxAa8+6cECPbJD4g6mIB8q/J/eYNDkhRt1MnLb68e9uYbQmPzmrH9sqf5gZsBCLz
	cQBp5+rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhxS-007r4Z-UJ; Wed, 25 Jan 2023 15:45:07 +0000
Received: from smtpout30.security-mail.net ([85.31.212.38] helo=fx308.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhxN-007r3N-Tu
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 15:45:03 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx308.security-mail.net (Postfix) with ESMTP id 87C71405A13
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:45:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1674661500;
	bh=kBsd7QUi0WIFUX+EokTXKseYcicGP35HgrE6pW/Mrrs=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=4BCZFhdGkipyV414M2h8EBVW/vvY91EWJUaozSuWsxGi+TAdZ3tfXCQRCCFxtTGYm
	 CQ5MZ5xXN1KgDpR43yf+bFaS6CC/GOeh8EmcoyAR8/Qoa66u6vTlejLxaWIVwExdp6
	 hKJNiNJkRrJPY8zK+ugKPcv1BNuHSXcAEFRJWrnQ=
Received: from fx308 (localhost [127.0.0.1]) by fx308.security-mail.net
 (Postfix) with ESMTP id 74959404C69 for <barebox@lists.infradead.org>; Wed,
 25 Jan 2023 16:45:00 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx308.security-mail.net (Postfix) with ESMTPS id 1AD7D405893 for
 <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:45:00 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 01DCD27E0461 for
 <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:45:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id DE32E27E0491 for <barebox@lists.infradead.org>; Wed,
 25 Jan 2023 16:44:59 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 aTtxUoKdQ_j3 for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:44:59
 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id C592927E0461 for
 <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:44:59 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <15acb.63d14e7c.19d61.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu DE32E27E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674661499;
 bh=iPAXVl3SXyG/egNtxzykqmNpSXRjvIFTjolFFNqSVTE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=LaIYKRMkY8arRtE9osjSmWSYZ6DoPN6VZERETkC/u428j4qsHDp/9meXcimj6+a0u
 ulocI1jd1ys8l/tqk6z1K6idYXVp2/QGEhNFiQ/COciAL4pbJ4GDBuYEHtrHoD9Rg7
 64Dyy+7474ERdjsEerdfwHnU+vsbQYlEjqphJSTA=
Date: Wed, 25 Jan 2023 16:44:58 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20230125154458.GC4155@tellis.lin.mbt.kalray.eu>
References: <20230123102752.15444-1-jmaselbas@kalray.eu>
 <20230125153959.21987-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230125153959.21987-1-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_074502_127597_D07E12D6 
X-CRM114-Status: GOOD (  26.73  )
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
Subject: Re: [PATCH v2] ratp: Fix retransmission for header-only packets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 04:39:59PM +0100, Jules Maselbas wrote:
> Using sendmsg_current to detect if a packet needs to be retransmitted is
> brittle as only packets containing data will ever be considered, packets
> only containing a header (without data) were never being retransmitted.
> 
> The sendbuf_len is used to determine if a packets is being send or not,
> a non-zero length means that a packets is still being in the "try-send"
> state, the length is not set to zero when a valid SN is received.
> 
> Retransmission issue can be easily reproduced with a physical UART (not
> cdc_acm over USB), by running the following command:
> 
>     while ratp-barebox-cli -b 115200 -t /dev/ttyACMx -p; do :; done
> 
> Alternatively, it is possible to modify lib/ratp.c to force packets to
> be sent by the retransmission logic with the following change:
> 
>     @ int ratp_send_pkt(struct ratp_internal *ri, void *pkt, int length)
>                     ri->sendbuf_len = length;
>     -               ri->retransmission_timer_start = get_time_ns();
>     +               ri->retransmission_timer_start = get_time_ns() - ri->rto * MSECOND/2;
>                     ri->retransmission_count = 0;
>             }
>     -       return ri->ratp->send(ri->ratp, pkt, length);
>     +       return 0;
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
> changes in v2: reset sendbuf_len to zero where appropriated (in each behavior)
> 
> lib/ratp.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> diff --git a/lib/ratp.c b/lib/ratp.c
> index ce30223bac..b582e4e779 100644
> --- a/lib/ratp.c
> +++ b/lib/ratp.c
> @@ -738,7 +738,7 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
>  		control = RATP_CONTROL_RST | RATP_CONTROL_ACK |
>  			ratp_set_sn(ratp_an(hdr)) | ratp_set_next_an(ratp_sn(hdr));
>  		ratp_send_hdr(ri, control);
> -
> +		ri->sendbuf_len = 0;
>  		ratp_state_change(ri, RATP_STATE_CLOSED);
>  		return 1;
>  	}
> @@ -784,7 +784,7 @@ static int ratp_behaviour_d1(struct ratp_internal *ri, void *pkt)
>  	ri->status = -ECONNREFUSED;
>  
>  	pr_debug("Error: connection refused\n");
> -
> +	ri->sendbuf_len = 0;
>  	ratp_state_change(ri, RATP_STATE_CLOSED);
>  
>  	return 1;
> @@ -812,6 +812,8 @@ static int ratp_behaviour_d2(struct ratp_internal *ri, void *pkt)
>  	ri->status = -ECONNRESET;
>  
>  	pr_debug("connection reset\n");
> +	ri->sendbuf_len = 0;
> +	ratp_state_change(ri, RATP_STATE_CLOSED);
>  
>  	return 0;
>  }
> @@ -879,7 +881,7 @@ static int ratp_behaviour_e(struct ratp_internal *ri, void *pkt)
>  	ratp_send_hdr(ri, control);
>  
>  	pr_debug("connection reset\n");
> -
> +	ri->sendbuf_len = 0;
>  	ratp_state_change(ri, RATP_STATE_CLOSED);
>  
>  	return 1;
> @@ -924,8 +926,10 @@ static int ratp_behaviour_f1(struct ratp_internal *ri, void *pkt)
>  	if (!(hdr->control & RATP_CONTROL_ACK))
>  		return 1;
>  
> -	if (ratp_an_expected(ri, hdr))
> +	if (ratp_an_expected(ri, hdr)) {
> +		ri->sendbuf_len = 0; /* packet succesfully received */
>  		return 0;
> +	}
>  
>  	control = RATP_CONTROL_RST | ratp_set_sn(ratp_an(hdr));
>  	ratp_send_hdr(ri, control);
> @@ -971,6 +975,8 @@ static int ratp_behaviour_f2(struct ratp_internal *ri, void *pkt)
>  		if (ri->sendmsg_current)
>  			ratp_msg_done(ri, ri->sendmsg_current, 0);
>  		ri->sendmsg_current = NULL;
> +		ri->sendbuf_len = 0; /* packet succesfully received */
> +		pr_debug("Data succesfully sent 0\n");
This pr_debug line was not intended to be included.

>  		return 0;
>  	} else {
>  		pr_vdebug("%s: an not expected\n", __func__);
> @@ -1175,6 +1181,7 @@ static int ratp_behaviour_h3(struct ratp_internal *ri, void *pkt)
>  		ratp_send_hdr(ri, control);
>  		ri->status = -ECONNRESET;
>  		pr_debug("Error: Connection reset\n");
> +		ri->sendbuf_len = 0;
>  		ratp_state_change(ri, RATP_STATE_CLOSED);
>  		return 1;
>  	}
> @@ -1217,8 +1224,10 @@ static int ratp_behaviour_h4(struct ratp_internal *ri, void *pkt)
>  
>  	pr_debug("%s\n", __func__);
>  
> -	if (ratp_an_expected(ri, hdr))
> +	if (ratp_an_expected(ri, hdr)) {
> +		ri->sendbuf_len = 0; /* packet succesfully received */
>  		ratp_state_change(ri, RATP_STATE_CLOSED);
> +	}
>  
>  	return 1;
>  }
> @@ -1244,6 +1253,7 @@ static int ratp_behaviour_h5(struct ratp_internal *ri, void *pkt)
>  	pr_debug("%s\n", __func__);
>  
>  	if (ratp_an_expected(ri, hdr)) {
> +		ri->sendbuf_len = 0; /* packet succesfully received */
>  		ratp_state_change(ri, RATP_STATE_TIME_WAIT);
>  		ratp_start_time_wait_timer(ri);
>  	}
> @@ -1580,9 +1590,8 @@ int ratp_poll(struct ratp *ratp)
>  		}
>  	}
>  
> -	if (ri->sendmsg_current && is_timeout(ri->retransmission_timer_start,
> +	if (ri->sendbuf_len && is_timeout(ri->retransmission_timer_start,
>  	    ri->rto * MSECOND)) {
> -
>  		ri->retransmission_count++;
>  		if (ri->retransmission_count == ri->max_retransmission) {
>  			ri->status = ret = -ETIMEDOUT;
> @@ -1601,7 +1610,7 @@ int ratp_poll(struct ratp *ratp)
>  			goto out;
>  	}
>  
> -	if (!ri->sendmsg_current && !list_empty(&ri->sendmsg))
> +	if (ri->sendbuf_len == 0 && !list_empty(&ri->sendmsg))
>  		ratp_send_next_data(ri);
>  
>  	ret = 0;
> -- 
> 2.17.1
> 






