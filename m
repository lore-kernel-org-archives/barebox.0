Delivery-date: Thu, 02 Apr 2026 10:25:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8DNC-007mhO-1M
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 10:25:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8DNB-00058M-Mn
	for lore@pengutronix.de; Thu, 02 Apr 2026 10:25:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m4rEacRglAa/lHtKNXuD2vL6ZkZAFpxHW6+Y/Z4Y/bQ=; b=YJa+oNW9GnLgpcHxdZrXElrJQw
	VS5tXQ9AQyJtYUEUEBR78JvK5+ujr4cVjBSBFjBLVnJEOKhGLku9BIaWBfQs3YXqCW+JfVz0r9fHb
	X/lDcV6lMDpBNFsXMTcX6oqOj0JqziWqIq6Q2oeuIgeyMm+OgpTJNX9NXYE76ghENi+Hjf+8i/QIl
	XiPgNu4dKmK4JIpRtVE2Q9TwzIy+1nhD+Y1mH3zK1FH6KEF7DVblIoTkflR4g/DwxhL97TzAiyG3Y
	VT8VZ2cAOf/eRvPkFLD6nJdMJWO/5ilXYSWh12zjKU3Opx30zAESECm8Rwma7hr4J57wXCXhF7J3R
	nSNG3Fwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMn-0000000HB3u-1X70;
	Thu, 02 Apr 2026 08:25:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMl-0000000HB3W-3Z0R
	for barebox@bombadil.infradead.org;
	Thu, 02 Apr 2026 08:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=m4rEacRglAa/lHtKNXuD2vL6ZkZAFpxHW6+Y/Z4Y/bQ=; b=AA450Q1ksiQR3Ikk94k5LDI7u1
	B4fNV6WA9b4YKeD9tMXnY1GyuJjXkYwZQTrMGFvpowlMeb9VSb+exEKZmkEG14UDNF48KtiffOR/A
	y4Jb8K6H4UJqgkmflAfazVIFvPpWPoMlQmICiIZdfxFpMRE/gHa2z99HqSMuD0mnVGmADMu+1LvPx
	YAsCS3H1F/lk3du7mD4OG3Zkgp41+mGfkgy9Ucmnr2SyoYyVWodgZHhaaJ/BdqJXrr64f98O99ZL6
	r+Dbqfx8D4gN+/HPeb5g2QoUQGwLjRP9q9Ghy4yd/ezoXyriLz0Bt4DOOU4FFrQ91MSqp+asFIPBd
	QZHDvm6w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8DMd-0000000219i-3Cl6
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 08:25:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-0004sF-Ov; Thu, 02 Apr 2026 10:25:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-003LOG-1i;
	Thu, 02 Apr 2026 10:25:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8DMU-00000003hKJ-1uaM;
	Thu, 02 Apr 2026 10:25:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 10:25:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dns-buffer-overflows-v1-1-30621fe8c6b7@pengutronix.de>
References: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
In-Reply-To: <20260402-net-dns-buffer-overflows-v1-0-30621fe8c6b7@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775118310; l=2644;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DUa6obu6sO+2fKQPQNRyQJpOnDXEXtEaFrGtsoMAHDg=;
 b=+ytMsSyMRybKxrMzZf8tDlJYEVhiRmU/snHot5Imv7LKm0mGXbP7yRZ/TXexgQGW+HNJR3epX
 F4vj/HKrTGcCjbO8bkLpnQRb9AMVTox2HnlEIogMmToEnQ4bL5ZHNhj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_092521_525409_6811DA92 
X-CRM114-Status: GOOD (  14.38  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: dns: fix packet buffer overflow from long
 hostnames
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dns_send() uses strcpy() to copy the DNS-encoded hostname into the
packet buffer with no length check. The packet buffer has ~1482 bytes
available for the query name (PKTSIZE minus ethernet/IP/UDP headers,
DNS header, and query trailer). A hostname+domain combination longer
than this overflows the packet buffer.

The hostname comes from resolv() callers (TFTP server names, NFS
paths, user commands, etc.) and the domain from the user-configurable
global.net.domainname variable.

Fix by validating the encoded name length against the available packet
space before copying, and replace strcpy with memcpy using the known
length. Return -ENAMETOOLONG if the name doesn't fit.

Note the final component of the hostname is a dot ('.') which gets
replaced with a 0 in the "replace dots in fullname with chunk len" loop.
As we now calculate the strlen before that loop it will include that
final 0 already, so we must drop the "Mark end of host name" part.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 net/dns.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 8fbd13cdc3..fde1439469 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -70,6 +70,10 @@ static int dns_send(const char *name)
 	unsigned char *packet = net_udp_get_payload(dns_con);
 	unsigned char *p, *s, *fullname, *dotptr;
 	const unsigned char *domain;
+	int namelen;
+	/* max UDP payload minus header and query trailer (5 bytes) */
+	const int maxlen = PKTSIZE - ETHER_HDR_SIZE - sizeof(struct iphdr) -
+			   sizeof(struct udphdr) - offsetof(struct header, data) - 5;
 
 	/* generate "difficult" to predict transaction id */
 	dns_req_id = dns_timer_start + (dns_timer_start >> 16);
@@ -90,6 +94,14 @@ static int dns_send(const char *name)
 	else
 		fullname = basprintf(".%s.", name);
 
+	namelen = strlen(fullname);
+	if (namelen > maxlen) {
+		pr_err("hostname too long for DNS query (%d > %d)\n",
+		       namelen, maxlen);
+		free(fullname);
+		return -ENAMETOOLONG;
+	}
+
 	/* replace dots in fullname with chunk len */
 	dotptr = fullname;
 	do {
@@ -104,11 +116,10 @@ static int dns_send(const char *name)
 	} while (*(dotptr + 1));
 	*dotptr = 0;
 
-	strcpy(header->data, fullname);
+	memcpy(header->data, fullname, namelen);
 
-	p = header->data + strlen(fullname);
+	p = header->data + namelen;
 
-	*p++ = 0;			/* Mark end of host name */
 	*p++ = 0;			/* Some servers require double null */
 	*p++ = (unsigned char)qtype;	/* Query Type */
 

-- 
2.47.3



