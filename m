Delivery-date: Wed, 13 Aug 2025 16:51:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCol-000CfR-0X
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoi-0006rG-SZ
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ct63r2Rq/607AXBtf4VmazIqgQ2OW3558Nh/DHpMPbo=; b=fyx+rrzUiIpK5/iWH3B8IcRSuk
	DKVDjus/mVUUxlo9t5DeTrvyKqEQASmRg4ZBk6tSq2fy3kV6LAgXV1+9BtacUYmUIx0Um8kIKXgs8
	zQ9pGD+3Opn+SJNzMlT3sSyF3kZZLWQowsU3vh22WHx6Gu2DI/+pvPC334k7zNKXTWDdsmX64QToa
	d+ea/00AVdpzKSuoy9BoAXfEmdaAsCIC1t/BANm2spHM8Nyxn0HPQKFhJD++5Sio5qlZ6LPjyv+O2
	9Nlig6jijsClQ7rpRYII+fVL0Ict9CSQQtdOOwQqYbOKTYmtZWc6sVnt6RXYYI0iI7di/AWYxC0KL
	7hkdChqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCny-0000000Dxsu-0biq;
	Wed, 13 Aug 2025 14:50:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYE-0000000DvKC-0WmB
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYC-0003xl-T8; Wed, 13 Aug 2025 16:34:00 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:38 +0200
Message-Id: <20250813143345.3758653-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_073402_176393_926F6001 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/13] net: move netmask_to_prefix into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will become useful for the bfetch command, so move it into
the header.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 commands/ip.c | 13 -------------
 include/net.h | 13 +++++++++++++
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/commands/ip.c b/commands/ip.c
index fc46b6c857a2..08848cfbe739 100644
--- a/commands/ip.c
+++ b/commands/ip.c
@@ -7,19 +7,6 @@
 #include <linux/list.h>
 #include <complete.h>
 
-/* Function to calculate CIDR prefix from netmask */
-static int netmask_to_prefix(IPaddr_t netmask)
-{
-	int prefix = 0;
-
-	while (netmask) {
-		prefix += netmask & 1;
-		netmask >>= 1;
-	}
-
-	return prefix;
-}
-
 /* Function to display network links (`ip l`) */
 static int do_ip_link(int argc, char *argv[])
 {
diff --git a/include/net.h b/include/net.h
index 8858dc34d4ea..43d718353a76 100644
--- a/include/net.h
+++ b/include/net.h
@@ -623,4 +623,17 @@ struct eth_ethaddr {
 
 extern struct list_head ethaddr_list;
 
+/* Function to calculate CIDR prefix from netmask */
+static inline int netmask_to_prefix(IPaddr_t netmask)
+{
+	int prefix = 0;
+
+	while (netmask) {
+		prefix += netmask & 1;
+		netmask >>= 1;
+	}
+
+	return prefix;
+}
+
 #endif /* __NET_H__ */
-- 
2.39.5



