Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS18-00AYe4-2D
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS17-0003BO-AS
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sxb9AjRTlYzQHqaNNYPjLSUId5YpS+wJ7jzY9WtFvg8=; b=j3wyE3dhZKZfzq0ewp1Q307xvt
	88/pO4K+706NOBBqhIsRT2oSeg9OaZjbGKRXOsPYvyAEx8/VC5m49sm+pzn5qNb2e9DjrcUSP7x43
	I06hfauJsAaFoMiwEYybv2Xf9J3/rOxNe8L7e2pLnw1ttKC2Q7UadD7sG4rQVHT9VUkqrrS3RGfV+
	RDBaZ0zA2lV+TlZbnvcp7r4W1PA2Mi7u50oJ+aJ9xguSwul8I2Zk7j43y+33nky8f/74Z3dwZGbRl
	gBD8xeUKRh9ByJdjvXHRw1O0yiNHgNYiO4p97TOWvemSl4gDTxDm+U55mbD6BPmq4U1RcoA8K83Xz
	ck3S7gxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0S-00000003sJc-1bLO;
	Thu, 04 Apr 2024 18:40:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0N-00000003sG5-15BL
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-0001sE-UR; Thu, 04 Apr 2024 20:40:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQQl-HY; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-1S;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:39:55 +0200
Message-Id: <20240404184001.1532897-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114007_340732_4D5C0207 
X-CRM114-Status: GOOD (  11.47  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] net: icmp: properly set IP TTL and fragement fields
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We shouldn't keep using the TTL value of the ICMP echo request,
as we are sending a fresh packet, therefore restore it to the maximum
value.

While at it, also fix the frag_off field: A fragment offset of 0 on its
own doesn't mean that there's no fragmentation, but that this is the
first fragment. Writing 0x4000 there sets the "Don't fragment" bit,
which we are already setting for all other IP communication and should
be setting here as well.

Suggested-by: Jan Lübbe <j.luebbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/net.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index 6745085635dc..754a764d2a49 100644
--- a/net/net.c
+++ b/net/net.c
@@ -705,7 +705,8 @@ static int ping_reply(struct eth_device *edev, unsigned char *pkt, int len)
 	icmp->checksum = ~net_checksum((unsigned char *)icmp,
 				       len - sizeof(struct iphdr) - ETHER_HDR_SIZE);
 	ip->check = 0;
-	ip->frag_off = 0;
+	ip->frag_off = htons(0x4000);
+	ip->ttl = 255;
 	net_copy_ip((void *)&ip->daddr, &ip->saddr);
 	net_copy_ip((void *)&ip->saddr, &edev->ipaddr);
 	ip->check = ~net_checksum((unsigned char *)ip, sizeof(struct iphdr));
-- 
2.39.2



