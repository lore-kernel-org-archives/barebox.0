Delivery-date: Sun, 05 Feb 2023 18:09:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pOiVx-00F48E-Dn
	for lore@lore.pengutronix.de; Sun, 05 Feb 2023 18:09:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pOiVu-0005MG-Hm
	for lore@pengutronix.de; Sun, 05 Feb 2023 18:09:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+h9lvXPXgFJJN7FREN5/CjMAht8O48ARCDEOwM95lEA=; b=AtJqt2Ic7/gQMMfxJPDqKwJecM
	2jTWctkg8zynIRx9ffyDEuv10dCUf77zi8I5W0lIZV4oRrjU/I0WIAhtaNelNdGhw3buduSuyPD8l
	elpDDw0AAQN/P1fTMcF2Ab67Wxlqq1JtH6NyV+KYSK5Ahc1IZBwBxSqLX2cYD8ymTXxaPVR5hHRHy
	4ywZHWfquoyRD0neoZOrq/fZPIelr5I/YBPVycF2Swy4QztWrVW34woQ3QIhvKTbkJIT5RZf01C27
	2VeGPkD0QY+9MKUQFwc6zoZ3S3n9zbcveMRapUQI6oVaCaeDYk4U0nyuRkvGQBgXNNi0UyMZSBJBW
	GgQ9gpSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOiUD-006awP-2j; Sun, 05 Feb 2023 17:07:29 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36] helo=fx306.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOiU5-006avq-Mx
	for barebox@lists.infradead.org; Sun, 05 Feb 2023 17:07:23 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 3316835CD8B
	for <barebox@lists.infradead.org>; Sun,  5 Feb 2023 18:07:17 +0100 (CET)
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id 1733135CD86; Sun,  5 Feb
 2023 18:07:17 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 82F9935CD83; Sun,  5 Feb
 2023 18:07:16 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 6953327E03FD; Sun,  5 Feb 2023
 18:07:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 4E80827E0436; Sun,  5 Feb 2023 18:07:16 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 HOTqfYMLReA6; Sun,  5 Feb 2023 18:07:16 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 3441227E03FD; Sun,  5 Feb 2023
 18:07:16 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <14002.63dfe244.81904.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 4E80827E0436
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675616836;
 bh=+h9lvXPXgFJJN7FREN5/CjMAht8O48ARCDEOwM95lEA=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=evQDkjk8ykQpOa6pcraRxBrL/UKTRseJcBiKAZR4gMa50+lse+u0xA9XJtCE7nQrS
 8pnXDUge0YHLWLONdZsKIANBBs1YjdbsIt8ByZiPHSz+4ilpdni/U2cZWqUsFl9YAX
 ZJ9Il+/kzqMXrT4doCp0LeS63M2tcyrXBYGSSeB8=
Date: Sun, 5 Feb 2023 18:07:15 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230205170714.GM4155@tellis.lin.mbt.kalray.eu>
References: <20230123102752.15444-1-jmaselbas@kalray.eu>
 <20230125153959.21987-1-jmaselbas@kalray.eu>
 <20230203081608.GW13319@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230203081608.GW13319@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_090721_929410_9A580366 
X-CRM114-Status: GOOD (  37.49  )
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

Hi Sascha,

On Fri, Feb 03, 2023 at 09:16:08AM +0100, Sascha Hauer wrote:
> Hi Jules,
> 
> On Wed, Jan 25, 2023 at 04:39:59PM +0100, Jules Maselbas wrote:
> > Using sendmsg_current to detect if a packet needs to be retransmitted is
> > brittle as only packets containing data will ever be considered, packets
> > only containing a header (without data) were never being retransmitted.
> > 
> > The sendbuf_len is used to determine if a packets is being send or not,
> > a non-zero length means that a packets is still being in the "try-send"
> > state, the length is not set to zero when a valid SN is received.
> > 
> > Retransmission issue can be easily reproduced with a physical UART (not
> > cdc_acm over USB), by running the following command:
> > 
> >     while ratp-barebox-cli -b 115200 -t /dev/ttyACMx -p; do :; done
> > 
> > Alternatively, it is possible to modify lib/ratp.c to force packets to
> > be sent by the retransmission logic with the following change:
> > 
> >     @ int ratp_send_pkt(struct ratp_internal *ri, void *pkt, int length)
> >                     ri->sendbuf_len = length;
> >     -               ri->retransmission_timer_start = get_time_ns();
> >     +               ri->retransmission_timer_start = get_time_ns() - ri->rto * MSECOND/2;
> >                     ri->retransmission_count = 0;
> >             }
> >     -       return ri->ratp->send(ri->ratp, pkt, length);
> >     +       return 0;
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> > changes in v2: reset sendbuf_len to zero where appropriated (in each behavior)
> > 
> > lib/ratp.c | 25 +++++++++++++++++--------
> >  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> Is this one still ok to be applied from your side?
No, I will send a new series with some additional patches.

> This doesn't fix the issue you are mentioning in the other thread,
> right?
It does fix an issue but it is not sufficient, but the RATP protcol needs
to fix as well

> Sascha
> 
> > 
> > diff --git a/lib/ratp.c b/lib/ratp.c
> > index ce30223bac..b582e4e779 100644
> > --- a/lib/ratp.c
> > +++ b/lib/ratp.c
> > @@ -738,7 +738,7 @@ static int ratp_behaviour_c2(struct ratp_internal *ri, void *pkt)
> >  		control = RATP_CONTROL_RST | RATP_CONTROL_ACK |
> >  			ratp_set_sn(ratp_an(hdr)) | ratp_set_next_an(ratp_sn(hdr));
> >  		ratp_send_hdr(ri, control);
> > -
> > +		ri->sendbuf_len = 0;
> >  		ratp_state_change(ri, RATP_STATE_CLOSED);
> >  		return 1;
> >  	}
> > @@ -784,7 +784,7 @@ static int ratp_behaviour_d1(struct ratp_internal *ri, void *pkt)
> >  	ri->status = -ECONNREFUSED;
> >  
> >  	pr_debug("Error: connection refused\n");
> > -
> > +	ri->sendbuf_len = 0;
> >  	ratp_state_change(ri, RATP_STATE_CLOSED);
> >  
> >  	return 1;
> > @@ -812,6 +812,8 @@ static int ratp_behaviour_d2(struct ratp_internal *ri, void *pkt)
> >  	ri->status = -ECONNRESET;
> >  
> >  	pr_debug("connection reset\n");
> > +	ri->sendbuf_len = 0;
> > +	ratp_state_change(ri, RATP_STATE_CLOSED);
> >  
> >  	return 0;
> >  }
> > @@ -879,7 +881,7 @@ static int ratp_behaviour_e(struct ratp_internal *ri, void *pkt)
> >  	ratp_send_hdr(ri, control);
> >  
> >  	pr_debug("connection reset\n");
> > -
> > +	ri->sendbuf_len = 0;
> >  	ratp_state_change(ri, RATP_STATE_CLOSED);
> >  
> >  	return 1;
> > @@ -924,8 +926,10 @@ static int ratp_behaviour_f1(struct ratp_internal *ri, void *pkt)
> >  	if (!(hdr->control & RATP_CONTROL_ACK))
> >  		return 1;
> >  
> > -	if (ratp_an_expected(ri, hdr))
> > +	if (ratp_an_expected(ri, hdr)) {
> > +		ri->sendbuf_len = 0; /* packet succesfully received */
> >  		return 0;
> > +	}
> >  
> >  	control = RATP_CONTROL_RST | ratp_set_sn(ratp_an(hdr));
> >  	ratp_send_hdr(ri, control);
> > @@ -971,6 +975,8 @@ static int ratp_behaviour_f2(struct ratp_internal *ri, void *pkt)
> >  		if (ri->sendmsg_current)
> >  			ratp_msg_done(ri, ri->sendmsg_current, 0);
> >  		ri->sendmsg_current = NULL;
> > +		ri->sendbuf_len = 0; /* packet succesfully received */
> > +		pr_debug("Data succesfully sent 0\n");
> >  		return 0;
> >  	} else {
> >  		pr_vdebug("%s: an not expected\n", __func__);
> > @@ -1175,6 +1181,7 @@ static int ratp_behaviour_h3(struct ratp_internal *ri, void *pkt)
> >  		ratp_send_hdr(ri, control);
> >  		ri->status = -ECONNRESET;
> >  		pr_debug("Error: Connection reset\n");
> > +		ri->sendbuf_len = 0;
> >  		ratp_state_change(ri, RATP_STATE_CLOSED);
> >  		return 1;
> >  	}
> > @@ -1217,8 +1224,10 @@ static int ratp_behaviour_h4(struct ratp_internal *ri, void *pkt)
> >  
> >  	pr_debug("%s\n", __func__);
> >  
> > -	if (ratp_an_expected(ri, hdr))
> > +	if (ratp_an_expected(ri, hdr)) {
> > +		ri->sendbuf_len = 0; /* packet succesfully received */
> >  		ratp_state_change(ri, RATP_STATE_CLOSED);
> > +	}
> >  
> >  	return 1;
> >  }
> > @@ -1244,6 +1253,7 @@ static int ratp_behaviour_h5(struct ratp_internal *ri, void *pkt)
> >  	pr_debug("%s\n", __func__);
> >  
> >  	if (ratp_an_expected(ri, hdr)) {
> > +		ri->sendbuf_len = 0; /* packet succesfully received */
> >  		ratp_state_change(ri, RATP_STATE_TIME_WAIT);
> >  		ratp_start_time_wait_timer(ri);
> >  	}
> > @@ -1580,9 +1590,8 @@ int ratp_poll(struct ratp *ratp)
> >  		}
> >  	}
> >  
> > -	if (ri->sendmsg_current && is_timeout(ri->retransmission_timer_start,
> > +	if (ri->sendbuf_len && is_timeout(ri->retransmission_timer_start,
> >  	    ri->rto * MSECOND)) {
> > -
> >  		ri->retransmission_count++;
> >  		if (ri->retransmission_count == ri->max_retransmission) {
> >  			ri->status = ret = -ETIMEDOUT;
> > @@ -1601,7 +1610,7 @@ int ratp_poll(struct ratp *ratp)
> >  			goto out;
> >  	}
> >  
> > -	if (!ri->sendmsg_current && !list_empty(&ri->sendmsg))
> > +	if (ri->sendbuf_len == 0 && !list_empty(&ri->sendmsg))
> >  		ratp_send_next_data(ri);
> >  
> >  	ret = 0;
> > -- 
> > 2.17.1
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 
> 






