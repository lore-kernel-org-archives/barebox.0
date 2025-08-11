Delivery-date: Mon, 11 Aug 2025 14:30:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfl-009KnE-0S
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfP-0006Tb-1B
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6NOj0PeS9VjQovCx+UVAWE0swENeRVDQZ+lDSXZyZ50=; b=Bw57VKj1z4UfkmkhkAT3C95/Sr
	UZgElbe5ruVl49KV1S8GmDYpCXH6qEkAYrj+N1Xe/64jG8SUCRoULJhdaQF7nj6JKAfVj4yQhm3DO
	ZpRbVdtO8s5OhG7LtL4g6EE0CZAcoT5+kaWbHuspp+eznuZF0irK1460rSBa6q014EFiIp0rkIZ5t
	pEbKGjxpEroRTvS4DBVBPYC0RObWrM5CChrBkIsUPY7XtACTw1ZYvHUPO4XADAC4Ip7MF56S2ulyj
	W/L8J04jx9D2TnJzOrf51jPIEftNeyVvxuvra4ysAinX7c9xCUsXG1B6o6YOcNHjPrXW87lgGtB64
	rs3LDIGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRe8-00000007eHm-2qxt;
	Mon, 11 Aug 2025 12:29:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdn-00000007di2-1L0V
	for barebox@bombadil.infradead.org;
	Mon, 11 Aug 2025 12:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6NOj0PeS9VjQovCx+UVAWE0swENeRVDQZ+lDSXZyZ50=; b=avbojKnGTwg5YO4DX4JO1DL9wO
	uMx6OjFs95FxNT/ffP3Ppa+AQhSG8Z9ZemDvnDiOhA8700iEGXOwBu9EalVmASMhZCx4y/r/TDa7y
	stMoW7woHo9BeExqfAe77fKXtf8cwzs1ZxiAjwuOnO0re6rKuLGFANcmX9MkW9D6/1ZqCDbIv8sFx
	LhB7sDtleqTYSygRdf5s6+ML1jzOpNwCstEHrqtfQmIRWacgWDPiVl1IJXZ3SEg6HVSXwTHQo/RpZ
	4rIgcPSgpv2CMkZrU7pvAWsfBzWYlzc49aIIevTEQGmfNtlGxNY/FT+p1dH5xc7/ZR+4DvE5sOb3V
	rAruCTFQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-0000000FPTg-45t8
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdf-0004WP-Hf; Mon, 11 Aug 2025 14:28:31 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:01 +0200
Message-Id: <20250811122824.1667791-22-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_132835_213358_16015F48 
X-CRM114-Status: GOOD (  10.12  )
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
Subject: [PATCH 21/44] net: move netmask_to_prefix into header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will become useful for the bfetch command, so move it into
the header.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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



