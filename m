Delivery-date: Mon, 05 Sep 2022 12:57:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nd-007PMt-3o
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:57:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nb-0000El-8R
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:57:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zrrvsge1ffiQhqEWFRPRJmwLKZ2ggiaG6V6s4TiwU1Q=; b=RFx+ciU9JYmsME5DYwZAP3wsmJ
	d5ZHdxN3JoIQJmUXgCI+m4jR/RPvBzpNDQF+xd55y9+vKCAUX/2Ldb26Wwk9mL1z0QkdF7tugV+Xz
	pTUolOScI7Y1ufw24J6tmZNAcOokrZNhR09531utdQkP7/hqlLPTk1bRjyGEQsGdeMryPJT3wn1LY
	tsqeD3FjAND5SpgRjRNeOcWkuZp91qYWJQ49YPyYqZoQHE2KQcbGStxEx8Wky71SvkgD55vH8FKzC
	K6znI3JjhUVvZZ8yRxne1CLIQP4nDAl5iaHIcO+rKh32jwYKqURW8pK/Z+PyifcZKvo2tXGyxDGwN
	/RL1JyzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9gz-000fZD-9n; Mon, 05 Sep 2022 10:51:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qE-00H4Kv-BZ
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Zrrvsge1ffiQhqEWFRPRJmwLKZ2ggiaG6V6s4TiwU1Q=; b=Q0eCXQFPrpfuxUV74ZH2AEucAK
	jg/Wg10ab99hGeX8mrJ9S9I9yLF3A49OBXmS8Hj03QFyAGl4jubmaWUNsdMsiNLMsdjrefBE1GP7y
	2KsqI65uu6XnhbZzOuxLMk6vqOcJ2+TxyX4QZFdx8MRceWCusZnjtge1ZKfod+AKzTEGUE3IxwRl8
	4d1CboXQRaFCc5VhEQFqWoAwF0Z7aKU7IbqY1fSOHo5PwGDORcPV/9V4u1iOZypbOa2x6WPuUnLDJ
	u3gRFyV3Ap+F8owgZYRgUGvJdaJ+3jfRm/7xOfT14cAiHtQGPsAbGeGFr9dl5XbO6410bfRZdfFYu
	yogUWstw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjL-KJ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Hp-US; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042Gv-8s; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wf7-4t; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:56 +0200
Message-Id: <20220905095557.596891-32-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105617_245998_DF588F19 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 31/32] net: ping: propagate failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We populate ret, but don't do anything with it. Pass it along instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index eae45e184359..22931509d0d9 100644
--- a/net/net.c
+++ b/net/net.c
@@ -634,7 +634,7 @@ static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
 
 	free(packet);
 
-	return 0;
+	return ret;
 }
 
 static int net_handle_icmp(struct eth_device *edev, unsigned char *pkt, int len)
-- 
2.30.2



