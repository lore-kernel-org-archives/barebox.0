Delivery-date: Tue, 24 Jan 2023 19:24:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKNxj-000j1u-Qu
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 19:24:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKNxg-0004EP-NZ
	for lore@pengutronix.de; Tue, 24 Jan 2023 19:24:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gRahy3ZdxACcOb5kJLcddrNo/L5gOOoaca8GGnks0fE=; b=mozS2xsxZ9hIXcNiSKZQmEm+3A
	/nVdrn3ZO/7gHLfrhUMo0V4QZZWP+SX0GRh8D2gmvncIrxas/v3x+FL+crH2rUMc78MTUBAHon3p8
	ogcv3qqenfgb8fQqG5AwdnI2woekPsu3JeGZUGO1a/6C1cW2RK0k4NJ4qEdgJCEXvsZpe8CJsnxfl
	dVPrjbe0T/cqYIaRU+tjjPlWaVKM2b64m13zsgLEfACNYp7ZSWIQas3Qf4LTw+xLQ35ifz00aD4e/
	5pf+nN81YBt923Ubda2Qim+pZfH67HdFG35dOtme2U01EL1pHQPF5lO+O4UE4MNzxpvHMWFjGYPSv
	RuMTtoeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNwM-004wcn-2L; Tue, 24 Jan 2023 18:22:38 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143] helo=fx403.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNwG-004wb2-Aj
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 18:22:34 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 7F894528730
	for <barebox@lists.infradead.org>; Tue, 24 Jan 2023 19:22:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1674584546;
	bh=ZypCYhZ5/yMm7XgR7VQYJlcSPErKYBWzLO69ILDSToA=;
	h=Date:From:To:Cc:Subject;
	b=3QAn96QQdmpqaa60bhUWap55wDs6guoEsECI3b3rTEdL1cAOUPa7Ks0OPKAnbCcU8
	 JtqfOPaeD/ntDdp/OINwibLqC35bIT5MGXiWLKuS2XsqaIAfWE6WexKuAKIClfhKns
	 TCSyPejEoXy0NjG5HwloWevKbdsIilHF2JnZZzT8=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id 5017E5284C0 for <barebox@lists.infradead.org>; Tue,
 24 Jan 2023 19:22:26 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx403.security-mail.net (Postfix) with ESMTPS id 971B0547AFC for
 <barebox@lists.infradead.org>; Tue, 24 Jan 2023 19:22:25 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 6120727E048E; Tue, 24 Jan 2023
 19:22:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 4868927E0491; Tue, 24 Jan 2023 19:22:25 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 MKlTSKqJJd_6; Tue, 24 Jan 2023 19:22:25 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 3568027E048E; Tue, 24 Jan 2023
 19:22:25 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <4ce9.63d021e1.947b7.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 4868927E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674584545;
 bh=gRahy3ZdxACcOb5kJLcddrNo/L5gOOoaca8GGnks0fE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=ll+n6FPEEOvsBTexOkefe5QmjjGgJs8WZacZIvhTfmamT3EXo+CrPoRa6j3JUlroj
 NDFN4FW8q0FqaiYXMso96PJXmPpO3bcCC7ZfT3O9LnTI58LRoZcWy2+o1HDKx83udy
 WBJO/NlhDzFzJrGUERKbKQDBCKwNdPY3q75YZ5tY=
Date: Tue, 24 Jan 2023 19:22:24 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <20230124182224.GB5952@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_102232_546372_5C718C0A 
X-CRM114-Status: GOOD (  11.18  )
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
Subject: Question about RATP protocol limitation during handshake in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

I am facing some issues with the RATP protocol that has been ironically
unreliable lately. I've looked at the implementation in barebox and in
ratp-barebox-cli host tool. I think I am starting to understand the last
issue I am facing: sometimes the host tool fails to initialize the RATP
link.

    host                                             barebox
 1. CLOSED                                           LISTEN
 2. SYN_SENT    --> <CTL=SYN>                    --> SYN_RECEIVED
 3.             ...             <CTL=SYN,ACK,AN> <--
 4. ESTABLISHED <-- <CTL=SYN,ACK,AN>             ...     
 5.             --> <CTL=ACK,AN,SN>              ...
 6.             ...             <CTL=SYN,ACK,AN> <-- (retransmit)
 7.             ..               <CTL=ACK,AN,SN> --> ESTABLISHED
 8. CLOSED (C2) <-- <CTL=SYN,ACK,AN>             ...
 9.             --> <CTL=AN,SN,RST>              --> (connection reset)

The Figure above illustrate the issue: during the handshake barebox has
a chance to resend the SYN-ACK packet however, upon reception, the host
will move into the ESTABLISHED state after the first packet and respond
with an ACK packet. When the host receive the duplicated SYN-ACK packet
it will execute behavior C2: "we assume that the other end crashed and
has attempted to open a new connection"; and close the connection.

I think it is important to note that I have locally applied the patch:
`[RFC PATCH] ratp: Fix retransmission for header-only packets`
https://lore.barebox.org/barebox/20230123102752.15444-1-jmaselbas@kalray.eu/T/#u
This issue might be revealed by the patch above, because now every
packets can be resent, but I think this issue is in the very nature of
RATP protocol and I cannot think of a good/simple way of fixing this.

I am tempted to simply tune the RTO (retransmit time out) of barebox to
be less aggressive during the handshake.

I would like to know your insight on this :)

Thanks
-- Jules


--- debug log from ratp-barebox-cli on host:
425089.225208 [ratp 000000000000000] debug: initialization requested
425089.225265 [ratp 000000000000000] debug: /dev/ttyACM0: opening tty
425089.225801 [ratp 000000000000000] debug: /dev/ttyACM0: tty open
425089.226008 [ratp 000000000000000] debug: initialization done
425089.226035 [ratp 000000000000000] debug: link active open requested...
425089.226045 [ratp 000000000000000] debug: sending SYN...
425089.226065 [ratp 000000000000000] debug: raw_send 01:80:ff:80
425089.226106 [ratp 000000000000000] debug: message sent    : [-- --- -- -- --- --- --- syn] len: 255: 01:80:ff:80
425089.226130 [ratp 000000000000000] info : state update: closed -> syn-sent (ok)
425089.226251 [ratp 140419952396032] debug: private thread started
425089.376918 [ratp 140419952396032] debug: message received: [-- --- an -- --- --- ack syn] len: 255: 01:c4:ff:3c
425089.376950 [ratp 140419952396032] debug: [behavior B]
425089.376961 [ratp 140419952396032] debug: stop_retransmission_logic
425089.376975 [ratp 140419952396032] debug: last packet acknowledged in 150ms (SRTT: 190ms, RTO: 285ms)
425089.376995 [ratp 140419952396032] info : state update: syn-sent -> established (ok)
425089.377034 [ratp 140419952396032] debug: raw_send 01:4c:00:b3
425089.377073 [ratp 140419952396032] debug: message sent ack: [-- --- an sn --- --- ack ---] len: 0  : 01:4c:00:b3
425089.377115 [ratp 140419952396032] debug: message received: [-- --- an -- --- --- ack syn] len: 255: 01:c4:ff:3c
Sending PING...
425089.377129 [ratp 140419952396032] debug: [behavior C2]
425089.377269 [ratp 140419952396032] debug: raw_send 01:1c:00:e3
425089.377307 [ratp 140419952396032] debug: message sent    : [-- --- an sn rst --- --- ---] len: 0  : 01:1c:00:e3
425089.377323 [ratp 140419952396032] debug: stop_retransmission_logic
425089.377344 [ratp 140419952396032] info : state update: established -> closed (connection reset)
error: couldn't send PING: invalid transition
425089.377462 [ratp 000000000000000] debug: shutdown requested
425089.377567 [ratp 140419952396032] debug: private thread finished
425089.378662 [ratp 000000000000000] debug: [/dev/ttyACM0] closed tty
425089.378708 [ratp 000000000000000] debug: shutdown requested

--- debug log from barebox:
ratp: Establish...
ratp:                       recv>-- --- -- -- --- --- --- syn< len: 255
ratp:  state LISTEN
ratp: ratp_behaviour_a
ratp: send>-- --- an -- --- --- ack syn< len: 255
ratp: state LISTEN     -> SYN_RECEIVED
ratp: ratp_poll: retransmit
ratp: resend>-- --- an -- --- --- ack syn< len: 255
ratp:                       recv>-- --- an sn --- --- ack ---< len: 0
ratp:  state SYN_RECEIVED
ratp: ratp_behaviour_c1
ratp: ratp_behaviour_d1
ratp: ratp_behaviour_e
ratp: ratp_behaviour_f1
ratp: ratp_behaviour_h1
ratp: state SYN_RECEIVED -> ESTABLISHED
ratp:                       recv>-- --- an sn rst --- --- ---< len: 0
ratp:  state ESTABLISHED
ratp: ratp_behaviour_c2
ratp: ratp_behaviour_d2
ratp: connection reset
ratp: ratp_behaviour_e
ratp: ratp_behaviour_f2
ratp: send>-- eor an sn --- --- ack ---< len: 5







