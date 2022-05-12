Delivery-date: Thu, 12 May 2022 16:39:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1np9ya-00AunI-3b
	for lore@lore.pengutronix.de; Thu, 12 May 2022 16:39:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1np9yY-0007AL-A6
	for lore@pengutronix.de; Thu, 12 May 2022 16:39:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fcJi+59IP0Yg9aAMnA6wsYEQG60Gl6r/cXfJlVLWVzw=; b=2ykFD6tZpYjzoW
	TU3Rxn2ngIusXG6YW6Fq0zu6BDzZ8wiVNtWLxp+t1ZUUX+7vgUBVjHxiV60UmZ0XhMTiwa4uFmY4H
	C2PYeKJmgNUl52PD0hlaKCwXNdvTOCdLpbR6o2NHsDWTuytB0wvLavpnw46Ulug1MOda0ECcYD1WH
	MWEwhcGb/QYyVlDr/dVPZ6Z6mycukQDFQvcfhWdbzmy4XPnPapy6S/UvYIOtyq344eaWyTLkpnV7Q
	lkMlagwDprjc95+fYKT/CrX1hU4FVZKfPbvT26Vq+nivWfTQjB5AiJwtdjaowyzIeId5V0bUUdsdE
	yqTHltK0y3x3j36usZZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np9wq-00CRnH-Vm; Thu, 12 May 2022 14:37:49 +0000
Received: from smtpout30.security-mail.net ([85.31.212.35]
 helo=fx305.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np9wh-00CRiA-LH
 for barebox@lists.infradead.org; Thu, 12 May 2022 14:37:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx305.security-mail.net (Postfix) with ESMTP id 8FD2130FDA3
 for <barebox@lists.infradead.org>; Thu, 12 May 2022 16:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1652366249;
 bh=z8rm5ja4rQ2a9CLQDI+gkws90CiLdgNZId91Lusm1nM=;
 h=From:To:Cc:Subject:Date;
 b=lkfCuDI3PF4WEceBK7j5mOaSje8MY0joB7dZ2OwRb5TTf1zUVY4CfazCO+TO05Y8s
 +WY1m7e+U1TgToSOwKtHQr+0Mh4DeBZaOwVzfQTsm4zXgPVRTi/JCdiixi0bCkWOoh
 LtyR/rn0onPWcaVgjmN7KgJwDbgfHI7LJmZBRDtI=
Received: from fx305 (localhost [127.0.0.1])
 by fx305.security-mail.net (Postfix) with ESMTP id 2F78D30FD98
 for <barebox@lists.infradead.org>; Thu, 12 May 2022 16:37:29 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <7737.627d1ba8.75b77.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx305.security-mail.net (Postfix) with ESMTPS id 782B430FD71
 for <barebox@lists.infradead.org>; Thu, 12 May 2022 16:37:28 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 5B9D827E04A8;
 Thu, 12 May 2022 16:37:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 44FFA27E04B1;
 Thu, 12 May 2022 16:37:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 44FFA27E04B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1652366248;
 bh=DdsW2jIdZiZ7nsSXjxTmKnFrWzaVrBLTt5INvuP+D38=;
 h=From:To:Date:Message-Id;
 b=mMqGLfrKTlJtVwJePVgsQM9cvtGoEKPLBhQzxr0SZBCvjhujLAFSlT57XxNBPvSbj
 KnvtFl2H14RKhXAbsLjM6nas9gkeGMQEJJAeHgIo5jK7cBo+DcA8Teg1a8bvZ+kSC2
 zSDg7jbaIGAZlp0IpzKe5WxBJO4TQHPxk8vrlwII=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 0BdfnfdoeulM; Thu, 12 May 2022 16:37:28 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 2F16627E04A8;
 Thu, 12 May 2022 16:37:28 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 12 May 2022 16:37:26 +0200
Message-Id: <20220512143726.21614-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_073740_074939_AAC90678 
X-CRM114-Status: GOOD (  13.18  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The transaction ID wasn't verified on received DNS responses, plus the
ID needs to be difficult to predict in order to avoid MitM (man in the
middle) being able to easily forge responses.

The ID is generated from the time of the request, probably not strongly
unpredictable, this what musl does and it is considered to be enough.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
v2: fix the dns_req_id type to uint16_t, added pr_debug when incorrect id
    is received, drop uses of the random32.

 net/dns.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/net/dns.c b/net/dns.c
index 78588b96f..8b5e8d59e 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -58,6 +58,7 @@ struct header {
 
 static struct net_connection *dns_con;
 static uint64_t dns_timer_start;
+static uint16_t dns_req_id;
 static int dns_state;
 static IPaddr_t dns_ip;
 
@@ -70,9 +71,12 @@ static int dns_send(const char *name)
 	unsigned char *p, *s, *fullname, *dotptr;
 	const unsigned char *domain;
 
+	/* generate "difficult" to predict transaction id */
+	dns_req_id = dns_timer_start + (dns_timer_start >> 16);
+
 	/* Prepare DNS packet header */
 	header           = (struct header *)packet;
-	header->tid      = 1;
+	header->tid      = htons(dns_req_id);
 	header->flags    = htons(0x100);	/* standard query */
 	header->nqueries = htons(1);		/* Just one query */
 	header->nanswers = 0;
@@ -127,6 +131,12 @@ static void dns_recv(struct header *header, unsigned len)
 
 	pr_debug("%s\n", __func__);
 
+	/* Only accept responses with the expected request id */
+	if (ntohs(header->tid) != dns_req_id) {
+		pr_debug("DNS response with incorrect id\n");
+		return;
+	}
+
 	/* We sent 1 query. We want to see more that 1 answer. */
 	if (ntohs(header->nqueries) != 1)
 		return;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

