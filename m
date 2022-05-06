Delivery-date: Fri, 06 May 2022 17:00:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmzRx-003pq7-Lb
	for lore@lore.pengutronix.de; Fri, 06 May 2022 17:00:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmzRw-0005ku-Io
	for lore@pengutronix.de; Fri, 06 May 2022 17:00:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNtg5GeoONLvEz/PuexuMR0H0MjBFHDpqLNRfyBwxfI=; b=McveRAMISznS5D
	LIzOF+GDv1EuAz8w/DiFUhOaLzEuqSb1ZT5x68QVKmqe3IgzLM5aVp1liI/vvyX6XLQGdd9AgtWtF
	t020/AbGRHqAkEO0yIAaeKvDLzoWRzvAd7t8SpLGDZpGNAkLbWJd6oVvGLj+kw5wN+QIfOWdKm18z
	HZJrVBMTOWmKVP0FdOh4ac0SY8ajuHiTjbwGnVsmXO3ePi0fi/F9lX+qJAPOLCHNeCMS5zPNLLWBX
	dFEVIx41SMb/i3y+l9Am5xu9GQn5XjpjtsXOksBvIti3o5FnoSg4VPssu7lb5v3rQ+hG/uNWAnnKF
	pYsCIJg8y7TIYegLiPlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmzQJ-003vSQ-1C; Fri, 06 May 2022 14:59:15 +0000
Received: from smtpout30.security-mail.net ([85.31.212.38]
 helo=fx308.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmzQD-003vQA-O5
 for barebox@lists.infradead.org; Fri, 06 May 2022 14:59:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx308.security-mail.net (Postfix) with ESMTP id 5C1DF10C21F
 for <barebox@lists.infradead.org>; Fri,  6 May 2022 16:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1651849139;
 bh=Ln5g+I/DZ2WfvbPesQy0xbTKIiPsPYLKzcy/UY+uXtA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fZRsRE6rtjnkOD+MD2FXYa8FdQvbSmocR4qjMgdTigrkr0St7ysL9rGo4xAeZetml
 trPk9fBoUSyZbhcJil4/DX1CwEcRvL+Gud924HN7fXo69Hd3axoX/vhGjLxgxyyhqi
 5cXHOMFnLwSGqfgS0rKNsmc93rGnp7yGW9uW02q4=
Received: from fx308 (localhost [127.0.0.1])
 by fx308.security-mail.net (Postfix) with ESMTP id 23C9410C214
 for <barebox@lists.infradead.org>; Fri,  6 May 2022 16:58:59 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <11780.627537b2.a2de1.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx308.security-mail.net (Postfix) with ESMTPS id A42C510C207
 for <barebox@lists.infradead.org>; Fri,  6 May 2022 16:58:58 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 8A88327E0457;
 Fri,  6 May 2022 16:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 7414827E0491;
 Fri,  6 May 2022 16:58:58 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 7414827E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1651849138;
 bh=zMWAezYXOkeJXjSrbWuRoMCNYt/rPElV02vZohdanAI=;
 h=From:To:Date:Message-Id;
 b=bISGrMlfTYLWKm7HwB0KLhcOEh4HU9+Aj3NRv2AUZ00DXyf0mJAXeg3BvDJMBvLO2
 Rl2aHLEd8NlZwmS2ufn34TeOfgicY904ex1WYsadoQ4xCpK+Yd9Np9EAF7cnwTZhkR
 7zLf/nLuQOGOOXCJZXBpeyJ2dALcQWmOhnp3QVWo=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id CrjfeDiT3lCw; Fri,  6 May 2022 16:58:58 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6536527E0457;
 Fri,  6 May 2022 16:58:58 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  6 May 2022 16:58:56 +0200
Message-Id: <20220506145856.14831-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220505100805.5144-1-jmaselbas@kalray.eu>
References: <20220505100805.5144-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220506_075910_016552_A3E16760 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] fixup! net: dns: Generate and verify transaction ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 net/dns.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/dns.c b/net/dns.c
index 9ad316e33..9803ef475 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -58,7 +58,7 @@ struct header {
 
 static struct net_connection *dns_con;
 static uint64_t dns_timer_start;
-static uin32_t dns_req_id;
+static uint32_t dns_req_id;
 static int dns_state;
 static IPaddr_t dns_ip;
 
@@ -132,7 +132,7 @@ static void dns_recv(struct header *header, unsigned len)
 	pr_debug("%s\n", __func__);
 
 	/* Only accept responses with the expected request id */
-	if (ntohs(header->id) != dns_req_id)
+	if (ntohs(header->tid) != dns_req_id)
 		return;
 
 	/* We sent 1 query. We want to see more that 1 answer. */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

