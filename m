Delivery-date: Tue, 07 Feb 2023 17:22:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjv-00HBXE-Ng
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 17:22:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjt-0003d7-0x
	for lore@pengutronix.de; Tue, 07 Feb 2023 17:22:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0wEIHys/U9/9G7ix8ZSh0fR8eeYGMjd47c8c2l7Umjk=; b=pav23EFK3g8Lu4Ejv/zKVpORZN
	Rx4sdO8QRowEeCkA+DuCIXMuqig6ywLbzPYar5jqALm1dcf5SHra6oK2UzRu1xZ/dbnxovoT5ll61
	vA6d1nu1EwgNo04VwJpDkcqxwJ+tM3STY7c8KeNDs8oDP8gdquQOODf533TMDKsCLCtvuymY+5oHD
	U9nk6xJbawcKiTBz3Qlq2eYNpW0YL8jtdLOkifAQPY4Wgu+EVkPSXglaW4a2hP3nC3OvknRRfif90
	WKmJ7AfxpRLkO3OAp+taEE9CPQVZIE1hqjqAJ5os2F2okqwLXyzuFyFhoFvMGdEFF/uXeSc+13Hsf
	oqzUNUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQiX-00CnwV-Q6; Tue, 07 Feb 2023 16:21:13 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146] helo=fx601.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQiP-00Cnsc-Oh
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 16:21:09 +0000
Received: from localhost (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id 1AFEA349869
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1675786862;
	bh=/KCYK3xOKWImxIGd0O+EFgW32OnHZHKNmp5NyzcUSHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=UnkoNPswob8J1fHBACot/X/XpC3eE+S7ZAGjKEt7PIFX1s9lZh9N2EvxvUHfm6TDG
	 sD1g3CcLmEn9TtlGgH5aVdwTKHT+9nD+jDPebuUreqmgVUmWgHmWlXrp5RhoTN57ZO
	 +at2pg/pEfuLVuxO4CWC0mohRaf5OVpR5p4U3E80=
Received: from fx601 (fx601.security-mail.net [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id EF81734983C
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:01 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <8349.63e27a6d.5bfd8.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx601.security-mail.net (Postfix) with ESMTPS id 607A2349758
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:01 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 42AD027E0506;
	Tue,  7 Feb 2023 17:21:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 28F5D27E0508;
	Tue,  7 Feb 2023 17:21:01 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 28F5D27E0508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675786861;
	bh=0wEIHys/U9/9G7ix8ZSh0fR8eeYGMjd47c8c2l7Umjk=;
	h=From:To:Date:Message-Id;
	b=JKTN2HdvSpYPRGAWwdikMPY5dWdrCDstSFI6GyGIO1Mn7JHsaY/ao3xT/futXts+X
	 m6aUz/Y9Gjtxm3q6tbnkqrJFuYX1kAwc5d1Su7niXFIdRIsH9er52ptYio+vWUx9um
	 yLzDBnNFxsAnxuRdvG3t7HWv+3NTlJ6RZRGQv/LM=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id QqEXIoiI0ckh; Tue,  7 Feb 2023 17:21:01 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0C3B627E0506;
	Tue,  7 Feb 2023 17:21:01 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Feb 2023 17:20:52 +0100
Message-Id: <20230207162055.10050-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230207162055.10050-1-jmaselbas@kalray.eu>
References: <20230207162055.10050-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_082106_109994_2E093612 
X-CRM114-Status: GOOD (  17.95  )
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
Subject: [PATCH v3 2/5] bbremote: Fix RATP handshake, errata #7321 for RFC916
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

   Side A                                             Side B
1. CLOSED                                             LISTEN
2. [OPEN request]
      SYN_SENT -->        <SN=0><CTL=SYN>         --> SYN_RECEIVED
3. ESTABLISHED <--   <SN=0><AN=1><CTL=SYN,ACK>    <--
4.             -->      <SN=1><AN=0><CTL=ACK>     ...
5.             ...   <SN=0><AN=1><CTL=SYN,ACK>    <-- (retransmit)
6. (packet sent by A at 4. finally arrives to B)
               ...                                --> ESTABLISHED
7. (packet resent by B at 5. finally arrives to A)
   CLOSED (C2) <--                                ...
8.             -->      <SN=1><AN=1><CTL=RST>     --> (connection reset)

The Figure above illustrate the current issue RATP can face during the
three-way handshake, and how behavior C2 can cause a connection to be
closed immediately after being established.

In the Figure above, side A try to establish a connection with side B,
which is in the LISTEN state. Commented line:
 1. side A is in the CLOSED state and side B is in the LISTEN state;
 2. side A open a new connection and send a SYN packet and is received by
    side B which enters the SYN_RECEIVED state and send back a SYN-ACK;
 3. side A receive the SYN-ACK packet from B;
 4. side A respond with an ACK packet and move to the ESTABLISHED state.
    Meanwhile;
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
value is likely inaccurate during the handshake. This solution seems a
bit brittle.

The second solution would be to consider that a host has crashed only if
the packet received has the SYN flag set but not the ACK flag. The
rational is that the first step during handshake is to send a packet
only containing the SYN flag, however a packet containing both ACK and
SYN flags must have come after the initial handshake exchange and can
be considered as a duplicated and be dropped.

I proposed the following errata to RFC916 [1]:
[Page 29]
- If SYN was set we assume that the other end crashed and has
- attempted to open a new connection. We respond by sending a
- legal reset:
+ If the SYN flag was set but the ACK was not set then we assume
+ that the other end crashed and has attempted to open a new connection.
+ We respond by sending a legal reset:

[Page 30]
- If neither RST, FIN, nor SYN flags were set it is assumed that
- this packet is a duplicate of one already received. Send an
- ACK back:
+ If neither RST nor FIN flags were set, or if SYN and ACK flags
+ were set, it is assumed that this packet is a duplicate of one
+ already received. Send an ACK back:

[1] https://www.rfc-editor.org/errata/eid7321

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 scripts/remote/ratp.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/remote/ratp.py b/scripts/remote/ratp.py
index 25ca442d15..956c788234 100644
--- a/scripts/remote/ratp.py
+++ b/scripts/remote/ratp.py
@@ -345,7 +345,7 @@ class RatpConnection(object):
         if r.c_rst or r.c_fin:
             return False
 
-        if r.c_syn:
+        if r.c_syn and not r.c_ack:
             s = RatpPacket(flags='RA')
             s.c_sn = r.c_an
             s.c_an = (r.c_sn + 1) % 2
-- 
2.17.1



