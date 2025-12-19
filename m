Delivery-date: Fri, 19 Dec 2025 11:38:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsE-00DAcZ-1G
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs1-00061h-MY
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tWxT+mizLGupj/yYxHlR+t/j08BhrchsU3RqYUiC8jQ=; b=tnjS/zCjr+mNQTyhOgB8xXnOS9
	v+YWvLLE8QXVXQ32WZ49UWTNsi/KDYmQsbtLEhIdWwNk3nuqj5opaHSIB5UUkGZj4+hJwdux5QnRF
	C6k0Pi6orPmX7zT8VP/NawyjYsathALPCPDNFD1IPKQbdEHZ5LeT++Q1oZTDK2XL9D/4PHLnzt9dH
	zghqqqOz7Qbw5IaCu3ChZBQo5/Z4F/HyhviCeSO40t03VKl63COPa2j7feFUoCUsCPFMXai+SUVox
	rkGwpr20ZeVsc35XTkG9CdfIFrGLue4cJQ8fht3o4Lb84ZnRtbISjBi3JaQtwMNbf8Xmtosnm2eUo
	LtaKsB5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr5-0000000A6FO-3ih0;
	Fri, 19 Dec 2025 10:37:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqw-0000000A61U-2v4h
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tWxT+mizLGupj/yYxHlR+t/j08BhrchsU3RqYUiC8jQ=; b=qbvhJWdQ2L6chTsLogHTiSxQ5G
	w//sWdKFLhylgm9UakVwVqQ8A2HSakeMtATweSHafELtaDOQsWk09Vlqz9cTduWUF8JL45zQAMyA6
	oicUPhGvgU7FEgPgKeMi2T0ZfZQ9WIBYIR+n67hgUCx6BpO3MBFphnm70acYhL7EIQoqplJHX2EBA
	C7n9AnOw1gvFvEPFyAljKlWlEsQYoNU0g764HWBcsP6LN/6qcenQtp1lCvI8gc+Sv8wkqmUBfkbEC
	hKuVWhKTyBsIdKBrKoSbPc/eIvu1e2eIcymbWNgfzEfAPVg5OBAvLG9iBFX3YOnNCsxPUxzkyMrkR
	2xV6v5KA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzP-0000000AbBb-3cad
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004c3-08; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUr-2a;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-0484;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 19 Dec 2025 10:21:09 +0100
Message-ID: <20251219101453.2806980-34-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_033366_5A7644F6 
X-CRM114-Status: GOOD (  12.63  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 33/49] net: reset pending ARP state when request is done
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

net_new() creates a struct net_connection and calls arp_request()
to resolve unicast addresses. On success, arp_request() will
populate a buffer within the net_connection with the destination MAC
address.

If arp_request() aborts due to an error, it will leave the global
pending_arp.ether pointing at the buffer, which is promptly freed
leading to a dangling pointer and a use-after-free if we happen to get
an ARP response just after the error occurred.

Fix this memory safety issue by always clearing all of  pending_arp once
we are done with it, including error cases.

Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251128124939.108159-2-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit effaa57f9a9476ecc5d07be92255769631ecb624)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/net.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/net/net.c b/net/net.c
index 795afed159aa..9c5999604b67 100644
--- a/net/net.c
+++ b/net/net.c
@@ -220,24 +220,28 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 
 	ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	if (ret)
-		return ret;
+		goto out;
 	arp_start = get_time_ns();
 
 	while (pending_arp.ip) {
-		if (ctrlc())
-			return -EINTR;
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out;
+		}
 
 		if (is_timeout(arp_start, 3 * SECOND)) {
 			printf("T ");
 			arp_start = get_time_ns();
 			ret = eth_send(edev, arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 			if (ret)
-				return ret;
+				goto out;
 			retries++;
 		}
 
-		if (retries > PKT_NUM_RETRIES)
-			return -ETIMEDOUT;
+		if (retries > PKT_NUM_RETRIES) {
+			ret = -ETIMEDOUT;
+			goto out;
+		}
 
 		net_poll();
 	}
@@ -245,7 +249,11 @@ static int arp_request(struct eth_device *edev, IPaddr_t dest, unsigned char *et
 	pr_debug("Got ARP REPLY for %pI4: %02x:%02x:%02x:%02x:%02x:%02x\n",
 		 &dest, ether[0], ether[1], ether[2], ether[3], ether[4],
 		 ether[5]);
-	return 0;
+
+out:
+	pending_arp.ip = 0;
+	pending_arp.ether = NULL;
+	return ret;
 }
 
 void net_poll(void)
-- 
2.47.3



