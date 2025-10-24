Delivery-date: Fri, 24 Oct 2025 12:33:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCF78-00BHjd-2v
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 12:33:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCF78-000630-CX
	for lore@pengutronix.de; Fri, 24 Oct 2025 12:33:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hF+CumKGJJ4slM21WVZxJ7y7qMj2F+o+5KPdDO0YN1M=; b=eqt0yLIScyB9HABs6bWWRvdrzG
	K7QZxIETAkzm1rdjdPgfMI0iT7uG+HkelTZTgDtRUB0VLzgF6Rbxm/h5k+WKioA9JQeHXNEfjH/mj
	xzVjOWm7zooVCy5vK8yAxZdF7KE8hJSs2YH+uquB1UcbW8odePyVfEsuerfTGupGpT4gyeq3aNOWI
	tbrxxNEs0RKedN+x44sKxUvBXi7e9e7c4y63d58cH4f/gK2K5BcPOuntHFNsfcUTKHnliFZNFQM/U
	1UYiodPT57zcMPM0nJzxNdkbiqAKUX3s7kCT8jCixMs7O363tF9FV/7d+0dwWt/JoGXuReUlFfQuZ
	YhyUWAqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCF6k-000000092UL-0MuG;
	Fri, 24 Oct 2025 10:33:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCF6i-000000092Tw-143F
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 10:33:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCF6g-0005y7-AV; Fri, 24 Oct 2025 12:33:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCF6g-005D3S-0S;
	Fri, 24 Oct 2025 12:33:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCF6g-0000000263Q-0CPD;
	Fri, 24 Oct 2025 12:33:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 12:33:12 +0200
Message-ID: <20251024103313.499868-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_033316_308204_7191D102 
X-CRM114-Status: UNSURE (   8.89  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: migration-2025.08.0: add note about W^X
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_ARM_MMU_PERMISSIONS was a relatively invasive change, so it
should be pointed out specifically to avoid users running into issues
with it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2025.08.0.rst         | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.08.0.rst b/Documentation/migration-guides/migration-2025.08.0.rst
index b40119ac672b..86412f25c36e 100644
--- a/Documentation/migration-guides/migration-2025.08.0.rst
+++ b/Documentation/migration-guides/migration-2025.08.0.rst
@@ -1,6 +1,18 @@
 Release v2025.08.0
 ==================
 
+W^X on ARM
+----------
+
+``CONFIG_ARM_MMU_PERMISSIONS=y`` is now the default and instructs barebox to map
+its memory regions with more restricted permissions: Data is no longer executable
+and code as well as read-only data is no longer writable.
+
+This can lead to breakage in code that had invalid assumptions beforehand,
+e.g. code expecting on-chip SRAMs to be executable or bogus code casting away
+const. Please report to upstream any issues that are resolved by disabling
+``CONFIG_ARM_MMU_PERMISSIONS``, so they can be properly fixed.
+
 Bootchooser
 -----------
 
-- 
2.47.3



