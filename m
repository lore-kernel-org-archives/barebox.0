Delivery-date: Mon, 13 Jun 2022 09:07:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o0eAu-0014sM-Hu
	for lore@lore.pengutronix.de; Mon, 13 Jun 2022 09:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o0eAs-0002Uv-Fy
	for lore@pengutronix.de; Mon, 13 Jun 2022 09:07:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hh3kbmiolJArNw+Tfyi7Khy2iviH4OkgjoKRrXHBUpE=; b=R5qKpL+5msmBut
	yhMgVxrrlJpjsT2KajgL8lwDGcl+Ry5ZQBQKluMvIeSf4H4VyMKTaI2XKEqEmxYZyDOZ2TEGREa5o
	oUo06SYhPSJ4iDBpk7c0B+iMX2ZyBwxxpRb3rj4SgZfJRsmxTQKk0Dbg9JybIlo8ZzyKPR6HSVXU2
	P0pR9ieiGQU6/hDocMceJmqhyx+tSEsedoL9VFixVMJnT81Z1BYX1ar7XaBPasslq5Sb/9WCOFs7V
	Vooig1kuvIAbqQPBFVSG96jE0hEDqqjOZ2TgZ25uwM7dIC4+oomQzrhHjS79bFfW0cOIGGUqt/VkJ
	DFBHYeP7dTIPx2FAjVtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0e9A-001sbV-45; Mon, 13 Jun 2022 07:06:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0e95-001sZV-EJ
	for barebox@lists.infradead.org; Mon, 13 Jun 2022 07:05:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o0e90-00020u-3S; Mon, 13 Jun 2022 09:05:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o0e8z-000Fh1-WE; Mon, 13 Jun 2022 09:05:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o0e8y-001Hfl-PT; Mon, 13 Jun 2022 09:05:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Jun 2022 09:05:47 +0200
Message-Id: <20220613070547.306218-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_000555_513729_5BE61434 
X-CRM114-Status: GOOD (  10.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: dns: Return error when nameserver not given
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When no nameserver is given then return an error instead of returning
successfully with 0.0.0.0 as return IP.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dns.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/dns.c b/net/dns.c
index 8b5e8d59e8..fdddb3f915 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -226,7 +226,7 @@ int resolv(const char *host, IPaddr_t *ip)
 	nameserver = net_get_nameserver();
 	if (!nameserver) {
 		pr_err("no nameserver specified in $global.net.nameserver\n");
-		return 0;
+		return -ENOENT;
 	}
 
 	pr_debug("resolving host %s via nameserver %pI4\n", host, &nameserver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

