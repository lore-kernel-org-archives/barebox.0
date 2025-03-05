Delivery-date: Wed, 05 Mar 2025 14:43:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpp1a-00ACXb-0D
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 14:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpp1Y-0005f4-Sw
	for lore@pengutronix.de; Wed, 05 Mar 2025 14:43:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RLLtWcWDNtXgXvD2MGutuWEMGSNxfV8ZoG4Wd870LkY=; b=Tlu4Is/N9vwFxeDS2HrLwuiJ9C
	Ai+LHU39LN0bVYOR/6jA2bGsvW/1ybVZ+X6J0X9oMPRh6CGiDlt5Ne0EwcZptpG04uRyUjl8kPpkz
	a6+Y4jkzbxNYlTkt/Urb+PgHmsE8HkxtRlVq9u+kR32rHEUp5Rt0fG1a4fjaEC2WWpWq5RPwiIrYy
	7206qXLCi8XoG/HypKkqtGiDQgXNRo6zJlWFhWpO2LZeK5sn6jKE4frCKFU9ut0QVEpp9p/+tL4w8
	nudttGepzLQQVk8HGKRmp/wa69jjgfIujXHog5knFdRl8vzqgwP9Q1y/i+tBUCc6n3uq+UyQgf2ZL
	oZPRPRLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpp17-00000008Dhv-1JBl;
	Wed, 05 Mar 2025 13:42:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpoXy-000000088jm-1q8s
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 13:12:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpoXu-0000cG-Am; Wed, 05 Mar 2025 14:12:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpoXu-0049Cn-0T;
	Wed, 05 Mar 2025 14:12:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpoXu-00GjDc-0B;
	Wed, 05 Mar 2025 14:12:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  5 Mar 2025 14:12:21 +0100
Message-Id: <20250305131221.3986986-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_051226_474466_FCFB9B3D 
X-CRM114-Status: UNSURE (   9.88  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: user: networking: fix trivial typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

s/varariables/variables/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/networking.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 0adcff6954dc..1be2a15ac5f4 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -81,7 +81,7 @@ The :ref:`dhcp command <command_dhcp>` will change the settings based on the ans
 from the DHCP server.
 
 To make the network device settings persistent across reboots there is a nonvolatile
-variable (nvvar) for each of the varariables above. The network device specific variables
+variable (nvvar) for each of the variables above. The network device specific variables
 are:
 
 .. code-block:: sh
-- 
2.39.5



