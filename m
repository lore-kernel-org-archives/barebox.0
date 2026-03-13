Delivery-date: Fri, 13 Mar 2026 14:33:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eD-000DJ1-1h
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:49 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12dv-0007xP-MW
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e6oJVNct1Jc/jSV1faLag8Sl7//wHzrcnw+Ap92eEAg=; b=OHmQp8BHLg7AZeZWKbdsERgulG
	Au9BuIAYJQIxCBLbTKNDecrveVYuTZ/MmBbWhPImajQnXRu43XMyJxc3OuE8oTU9Z2soTZudn3cs5
	jjB4rjMGJltkhcw8LeDYsICR80tQBj8YGeIdh6H/bm74t02N0+GsPNgnJFUzZ1yCt/7wqPMzchv6O
	L6LKs80h7deCokiLgk+YMyqljuHXTyUKzaAIP7xhtuTil0xVzKNUgqKo1Mzp05wWZ28NWjfNMiMox
	aIEpvi+q1S6/S6LFBm8ZcDnYaymOJYuRV/++inCnhc+0wyClqKDKDWRCmIBxdWb7QZuWZZKB70nIR
	rPMSSEEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-00000000FWR-0EvK;
	Fri, 13 Mar 2026 13:32:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d3-00000000FVG-1nLV
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=e6oJVNct1Jc/jSV1faLag8Sl7//wHzrcnw+Ap92eEAg=; b=SB0xw631xXm3C3rMIzIDsD6EPg
	KRIlXrkOajNY2kqlA5nYgEEVe4UH4rE1yMNZRt72SMhnT1TkPD/l3nEl3cY8U5IN5ylZB1pCc8mBs
	49OhH8s+TeLRkVYInoS4gV+gm52qOyDZzY5yYYSxZT8N+vgeX++1GVIPQxIQTe19XDEBTmzQGvVfN
	fiuiIGz+1vq9w6J1XNNIoUXShja/8zrcNrS6//KZo6o1T83Ku2XgINycxYzYZpqLaAWZVv9PjUg02
	9EIOzCbITEjmp0e5ZrKol5J1vqw+wL7MDWn5UY3kpEoMXamuaOo2HP8TSZ8cHDsAJ8HN7fg7hPn+m
	OewCV3Hg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSh-49cv
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006p5-IG; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005T7-16;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-3dQ6;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:20 +0100
Message-ID: <20260313132631.2257573-37-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_006282_C07627B2 
X-CRM114-Status: UNSURE (   9.30  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 36/58] net: eth: avoid overlapping memcpy in eth_set_ethaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eth_param_set_ethaddr() calls eth_set_ethaddr(edev, edev->ethaddr),
which results in memcpy(edev->ethaddr, ethaddr, ETH_ALEN) where source
and destination are the same buffer. This is undefined behavior with
memcpy.

Skip the memcpy when ethaddr already points to edev->ethaddr.

(cherry picked from commit 8d6fe4dff4e352a2226b9cf97e28b5204597c038)

Fixes: b9170a1bde ("net: eth: Remove ethaddr_param")
Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-3-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 857bd2ee70dd..1cc95944ccbd 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -41,7 +41,8 @@ int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr)
 	if (ret)
 		return ret;
 
-	memcpy(edev->ethaddr, ethaddr, ETH_ALEN);
+	if (ethaddr != edev->ethaddr)
+		memcpy(edev->ethaddr, ethaddr, ETH_ALEN);
 
 	return 0;
 }
-- 
2.47.3



