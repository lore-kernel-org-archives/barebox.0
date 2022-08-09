Delivery-date: Tue, 09 Aug 2022 15:22:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBb-00HPfx-Cg
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 15:22:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLPBb-0001v7-A6
	for lore@pengutronix.de; Tue, 09 Aug 2022 15:22:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N6XRh0/GP6KkdGk7XQacDgblZdBHKhUn1FcDg8wrCgU=; b=XqpOeRsEO3w7Jp3n0e5icc3nMv
	3gUd6LNoYHpGd5AHyh39C8XYGXH/JVFUq1QKddjnYFZdA0q6EqtyRKeK/6Z0qMlDIEbvr/rrRPoWZ
	PhPWRhL6d6GhUqw8s6uid9lP90dHYuJIvy51ZANEZ6UA0oJ/tmJGwapUsxWm7a7JkAFvy//3WHAM2
	JRpTgMRC49wkzMtdqOdwPTz9LzYYzFSqcnbeu/31MyDYCHgdkYnnk8B/wBDpHYydK/yH5Oxy0vYdQ
	yJ7pwvsQ63oZ7/WrIPVuRjwcrrXFCOH32TBNBjBUeFCmi8hfY5LSFANNiLsDVxOnIcix5jTQMJJNQ
	dW+RLdqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLPA5-0044Sz-SO; Tue, 09 Aug 2022 13:20:45 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLP9z-0044P2-Q5
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 13:20:41 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id 7C8C83ACE09
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1660051231;
	bh=HkDoT2GjMeY0hXsEFWThq2yXG3HHu+yzLe+5ReSurGw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=tLY6x+33lM13uGdWeZItCYCvM/puQhz/aZTl5QgUOy4e5dQawA3mcAJ7NT63eDuB0
	 d/7RwBHYGv8Wz3NArR+SxCfPWiBDh1s9fDV2ozlb92q5NsFSh6khXfLmg322NpXldO
	 rzBeSACiy3FzIBACmxLb+ylkcTK8q9ia4MKEerVI=
Received: from fx601 (localhost [127.0.0.1])
	by fx601.security-mail.net (Postfix) with ESMTP id E173D3ACDEE
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:30 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <70be.62f25f1d.d7f62.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx601.security-mail.net (Postfix) with ESMTPS id 4A5B63ACDA8
	for <barebox@lists.infradead.org>; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 9E25F27E0544;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 874E727E0549;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 874E727E0549
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1660051229;
	bh=N6XRh0/GP6KkdGk7XQacDgblZdBHKhUn1FcDg8wrCgU=;
	h=From:To:Date:Message-Id;
	b=U67YaTU6mQqHUDTr0jFGyzfZ/KjRd92OIiUlwJX61XApWd/mxX+q9AUb++b+H8753
	 vVZ5QQSMbUfJUB0S3RJ0zP6EsjDaK8nH1E9rrDsnI9N2uliU1vB6l6k5evjTWJrl7B
	 21vPCA2NlfMJ1H6+idUKGjvv40BoxGwEdgTsAZuA=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 7lCqeLiYiOSe; Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6FE2927E0544;
	Tue,  9 Aug 2022 15:20:29 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  9 Aug 2022 15:20:18 +0200
Message-Id: <20220809132021.7110-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220809132021.7110-1-jmaselbas@kalray.eu>
References: <20220809132021.7110-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_062040_160190_CE673C97 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 2/5] net: Implement source port randomization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The source port can now be randomized for UDP connections in the range
32768 to 65535. The port number selection follows the Algorithm 1 as
described by the RFC6056, and goes as follow: A random port number is
generated, if the port is already taken then it search forward for the
next available port.

Note from the RFC6056:
      random() is a function that returns a 32-bit pseudo-random
      unsigned integer number.  Note that the output needs to be
      unpredictable, and typical implementations of POSIX random()
      function do not necessarily meet this requirement.  See [RFC4086]
      for randomness requirements for security.

This implementation uses random32 which might not meet the randomness
requirements. The random32 call can be easily replaced by a better
suited pseudo-random number generator when availabe.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 net/net.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/net/net.c b/net/net.c
index c01bf49b92..9f799f252d 100644
--- a/net/net.c
+++ b/net/net.c
@@ -310,18 +310,31 @@ static int init_net_poll(void)
 }
 device_initcall(init_net_poll);
 
-static uint16_t net_udp_new_localport(void)
+static uint16_t net_new_localport(int proto)
 {
-	static uint16_t localport;
+	const uint16_t min_port = 32768;
+	const uint16_t max_port = 65535;
+	const uint16_t num_port = max_port - min_port + 1;
+	uint16_t localport;
 
-	localport++;
+	/* port randomization with the Algorithm 1 as defined in RFC6056 */
+	localport = min_port + random32() % num_port;
 
-	if (localport < 1024)
-		localport = 1024;
+	while (net_ip_get_con(proto, localport) != NULL) {
+		if (localport == max_port)
+			localport = min_port;
+		else
+			localport++;
+	}
 
 	return localport;
 }
 
+static uint16_t net_udp_new_localport(void)
+{
+	return net_new_localport(IPPROTO_UDP);
+}
+
 IPaddr_t net_get_serverip(void)
 {
 	IPaddr_t ip;
-- 
2.17.1



