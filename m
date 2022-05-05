Delivery-date: Thu, 05 May 2022 12:09:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmYQb-002ayH-71
	for lore@lore.pengutronix.de; Thu, 05 May 2022 12:09:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmYQZ-0002hr-UC
	for lore@pengutronix.de; Thu, 05 May 2022 12:09:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFuZikbXPQKqSoOJl9S2Ti87pwcgmE+WlLbTnHfnZXY=; b=ukwEFFQVPxDxkX
	SrJa2zYN6PyHQMmMsVmCDZPnl/aedSxLpUKswAMYt8uTLbF43QjynmXrK8sQsL0RUujD68/iPbvMm
	ULCAEe64qfUZaStS09nqNAGLWZUMShyW5GRRP1YeWQIgJdE/D4A9bwReO/wRcoQkIRLu4fMFbn4To
	hEm5aUvXq6kJ1mwiIpqzuuRlefrR7KYJ1z9w2DFG+CZhZ/blhvGY4hBoW3CCnOBZlOv11ImYC4Lyt
	EQZdsQRN7rULJGWw03Y6pbwSyIXsFov5pj1PAADZonRlURw87EkUQHxjaJkbxVth8R04n5rioW46x
	8+7iuiUuDLZvcEhtmIAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmYPF-00FBd9-Sh; Thu, 05 May 2022 10:08:21 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmYPA-00FBcQ-9d
 for barebox@lists.infradead.org; Thu, 05 May 2022 10:08:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id 1842C3D3B082
 for <barebox@lists.infradead.org>; Thu,  5 May 2022 12:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1651745288;
 bh=4t3QoEnAPBrOaIqCMwOJWL3EZBU0UMp+d3feAjpDpiU=;
 h=From:To:Cc:Subject:Date;
 b=VFSi4fSd3kbtNPCLZZLcKa3XKSJbejt8aHKMZJhx9sFeRjkDwIZhF4tNFP8kJipBb
 Dh79yB4CnsGYXmhMrdB0kixgJ4WVfff6vminlWTF6Hkr6Vq78FVn/EJbrf2GYfhPyd
 k0m6vFRFz7MudRE/rD0cgMf0FBTn7+QAGCCKKbIk=
Received: from fx302 (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id C14F33D3B06D
 for <barebox@lists.infradead.org>; Thu,  5 May 2022 12:08:07 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <10c22.6273a207.49240.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx302.security-mail.net (Postfix) with ESMTPS id 4A7213D3B036
 for <barebox@lists.infradead.org>; Thu,  5 May 2022 12:08:07 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 3058D27E0490;
 Thu,  5 May 2022 12:08:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1928E27E0491;
 Thu,  5 May 2022 12:08:07 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1928E27E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1651745287;
 bh=RTfopryziKSxYmJu28EEOAsucHQIRA7bdb6tRg8ct9w=;
 h=From:To:Date:Message-Id;
 b=aoj3IKcGC8S1KEAY0B93crI6uyZsXqB8H1pT6/qQAnrKz0kCntDpK3Dupcg3JXe2h
 47QiI53xbQfsUr968MdC2jqUXRdfD+NB9qmNwznoKhx8lshuziwsML+Y/fCF7Jt4gL
 tDadgzZSLMv8Ijr8XY4gQPIQesiDHsmi9/gYgT7Y=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id pqqqir9Hn1A6; Thu,  5 May 2022 12:08:07 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id F377F27E0490;
 Thu,  5 May 2022 12:08:06 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu,  5 May 2022 12:08:05 +0200
Message-Id: <20220505100805.5144-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_030816_516297_246C0116 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [PATCH] net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The transaction ID wasn't verified on received DNS responses, plus the
ID needs to be difficult to predict in order to avoid MitM (man in the
middle) being able to easily forge responses.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 net/dns.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/net/dns.c b/net/dns.c
index 78588b96f..9ad316e33 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -58,6 +58,7 @@ struct header {
 
 static struct net_connection *dns_con;
 static uint64_t dns_timer_start;
+static uin32_t dns_req_id;
 static int dns_state;
 static IPaddr_t dns_ip;
 
@@ -70,9 +71,12 @@ static int dns_send(const char *name)
 	unsigned char *p, *s, *fullname, *dotptr;
 	const unsigned char *domain;
 
+	/* generate a random transaction id */
+	dns_req_id = dns_timer_start + random32();
+
 	/* Prepare DNS packet header */
 	header           = (struct header *)packet;
-	header->tid      = 1;
+	header->tid      = htons(dns_req_id);
 	header->flags    = htons(0x100);	/* standard query */
 	header->nqueries = htons(1);		/* Just one query */
 	header->nanswers = 0;
@@ -127,6 +131,10 @@ static void dns_recv(struct header *header, unsigned len)
 
 	pr_debug("%s\n", __func__);
 
+	/* Only accept responses with the expected request id */
+	if (ntohs(header->id) != dns_req_id)
+		return;
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

