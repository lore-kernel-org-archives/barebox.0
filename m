Delivery-date: Wed, 25 Jan 2023 16:21:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhaq-001ckj-Jf
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 16:21:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKhan-00052g-Tg
	for lore@pengutronix.de; Wed, 25 Jan 2023 16:21:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JGRnRo3hQM+ypFZ4HVnZIN2JSK0jd9E+N6HDHi3CGqE=; b=oaOzeBo51N73hbMyvHlqIrynmW
	zLiJJz8OpX8LDSrRBjYUU+DAiids4mLNZmTIiOzvNf3nJKojziyGX1csdUgsob1UDlTrCDJnltDBM
	2f8hQ8wP3YDYeih6WzD+w2Tl65XKbe5mCrE6VNqACcSOq8Boxvojs/vVTjvf3V5iu0GGC2MDazzC3
	DJNCRp/gVvKZHhhJL0f6gW1Qq2LsIx3znFc7mwLIBGdjkNaRWn5h3T7MnAds2Tf1oUYtH8t2oZaKf
	XnuTjtqBuj0t3qisC53cMr8xp6BAjs6eVFgXPbdLLbR0JNyTB4aky3ra9MUXNXeMoAAG46oFF2I82
	B9tUzVaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhZK-007nDD-4J; Wed, 25 Jan 2023 15:20:10 +0000
Received: from smtpout30.security-mail.net ([85.31.212.35] helo=fx305.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKhZE-007nCB-2f
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 15:20:06 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id DF8A830FE71
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 16:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1674659997;
	bh=fTRjEzwbYI4FLFce44ouN+cyX36m4bhpzH6gQR9ipvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A3E9soSmNTpZdrp1P2ap+xNxKx5KTXCkJ3wb3wVOhRwDOzbtdJp9F6JJ2yXcUaG5T
	 D/ObqY8x8bhmvTdivBERbCg7iX46LP1yRNZLIVbcl63PE9wZM2ox4ryQlL4ZGYvxqF
	 c+pXfvGxO1bPKYOmqu0qQrvqLvKrxrAw8WVG+57o=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id AF2DE30FDFE; Wed, 25 Jan
 2023 16:19:57 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx305.security-mail.net (Postfix) with ESMTPS id D7D3D30FCDF; Wed, 25 Jan
 2023 16:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id B18FD27E0461; Wed, 25 Jan 2023
 16:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 9777B27E0491; Wed, 25 Jan 2023 16:19:56 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 2pdepSK5DHzy; Wed, 25 Jan 2023 16:19:56 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 7A95627E0461; Wed, 25 Jan 2023
 16:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <16c14.63d1489c.d5ca5.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9777B27E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674659996;
 bh=JGRnRo3hQM+ypFZ4HVnZIN2JSK0jd9E+N6HDHi3CGqE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=nOlOb19JsY97eFxVSMl2/F57CK9chGiAFGOB+0UV3FqkgSB6j+Y3a+++vUlzGlSRn
 gAaaxSAjR9mCIwtNfEEO21Dqmg8UjP0mCMnGukSOZss31zrRMSOhLonbK1xczb/AkY
 CcA+94P13fqZvUXfYjAkoTsopAhMTKnGhej1PJJE=
Date: Wed, 25 Jan 2023 16:19:55 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125151955.GB4155@tellis.lin.mbt.kalray.eu>
References: <20230124182224.GB5952@tellis.lin.mbt.kalray.eu>
 <Y9BU1Z0CJH6Vk01d@novena-choice-citizen>
 <20230125084155.GC5952@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230125084155.GC5952@tellis.lin.mbt.kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_072004_460367_69407E04 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: Draft of an errata for RFC916
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi, 

Here is a revised version of my previous mail, I might propose this
as an errata for RFC916, any comments and insights would be greatly
appreciated.


Side A                                             Side B
1. CLOSED                                          LISTEN
2. [OPEN request]
   SYN_SENT    -->  <SN=0><CTL=SYN>            --> SYN_RECEIVED
3. ESTABLISHED <--  <SN=0><AN=1><CTL=SYN,ACK>  <--
4.             -->  <SN=1><AN=0><CTL=ACK>      ...
5.             ...  <SN=0><AN=1><CTL=SYN,ACK>  <-- (retransmit)
6. (packet sent by A at 4. finally arrives to B)
               ...                             --> ESTABLISHED
7. (packet resent by B at 5. finally arrives to A)
   CLOSED (C2) <--                             ...
8.             -->  <SN=1><AN=1><CTL=RST>      --> (connection reset)

The Figure above illustrate the current issue RATP can face during the
three-way handshake, and how behavior C2 can cause a connection to be
closed immediately after being established.

In the Figure above, side A try to establish a connection with side B,
which is in the LISTEN state.  Commented line:
 4. side A receive the SYN-ACK packet from B and respond an ACK packet
    and move to the ESTABLISHED state.  Meanwhile;
 5. side B hasn't received yet the ACK from side A and decide to
    retransmit the SYN-ACK packet;
 6. side B finally receive the ACK from side A and move to the
    ESTABLISHED state;
 7. side A finally receive the duplicated SYN-ACK packet from side B,
    execute behavior C2: the received packet doesn't have the expected
    SN and has the SYN flag set, thus respond by sending a legal reset.
 8. side B receive the reset and close the connection.

One solution could be to tweak the initial RTO value of side B in order
to prevent sending a duplicated SYN-ACK packet, however the initial RTT
value is likely inaccurate during the handshake.  This solution seems a
bit brittle.

The second solution would be to consider that a host has crashed only if
the packet received has the SYN flag set but not the ACK flag.  The
rational is that the first step during handshake is to send a packet
only containing the SYN flag, however a packet containing both ACK and
SYN flags must have come after the initial handshake exchange and can
be considered as a duplicated and be dropped.

I propose the following errata to the RFC916:
[Page 29]
- If SYN was set we assume that the other end crashed and has
- attempted to open a new connection.  We respond by sending a
- legal reset:
+ If the SYN flag was set but the ACK was not set then we assume
+ that the other end crashed and has attempted to open a new connection.
+ We respond by sending a legal reset:

[Page 30]
- If neither RST, FIN, nor SYN flags were set it is assumed that
- this packet is a duplicate of one already received.  Send an
- ACK back:
+ If neither RST nor FIN flags were set, or if SYN and ACK flags
+ were set, it is assumed that this packet is a duplicate of one
+ already received.  Send an ACK back:

Thanks
-- Jules







