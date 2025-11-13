Delivery-date: Thu, 13 Nov 2025 10:35:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTjv-000Utq-1E
	for lore@lore.pengutronix.de;
	Thu, 13 Nov 2025 10:35:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJTju-0007if-BH
	for lore@pengutronix.de; Thu, 13 Nov 2025 10:35:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hM0c1wAThaoWNzBQEO85OUNiSkAgnHkUEvTNELkIHD8=; b=bBhkPZTQbcK439spxF2vfHtSev
	amUCThPGlqQSQr4SQYP3RCV1NQH4C5FZxFaR4kGprDktrFGScRapsSUaoGOSsL2p80ZrVnfiOxnn6
	A0SgCNdvpJlpyCxOwUQOLhCMqJ81/xmdoC/jKEBb0G22ELuoH8ZJPpE1NpileXHxF70XigfYrPZ+o
	82kOdnFtcU2atqmfPV9YDnxZqXj/miSd8CpvA3AVpHBbVv0Zs0TequJ7zOVOaLxr75ai/ATRiRQjh
	U3hL0UUe6wDKmMJO8dcszkUnvpyjdxr/ztiqwhYaQKrUbW15tRA6FrC+RuKkuGzWnJEyvU84P8LuF
	ZwNhCwtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTjU-0000000ACsg-3SNv;
	Thu, 13 Nov 2025 09:35:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJTjT-0000000ACr4-2Z93
	for barebox@bombadil.infradead.org;
	Thu, 13 Nov 2025 09:35:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=hM0c1wAThaoWNzBQEO85OUNiSkAgnHkUEvTNELkIHD8=; b=dapfkWkehRCd0uv22cYvCXU3iT
	G0ZbtW2Wi2srPp5pJBpU0HkPHk07Hxby9M16eCntlmwOZRCRU8iXsBfcOTrSARH+bj1o42W9ucpq+
	KezBks4+12FfBVFACopuR7oMg4fZIUVvcVTs85Dgvj8rhkE6OZueSCXPAezO2ohDJ9KAhBKs3NYwn
	T4ofnrCH3wFUkg/oE/pFP18Itu9C/GuWwcGND7Z0NYHZZYHYMuzDBS+J2mNbOcvKF5/EBYY84Yq0T
	3xd+G6N62s1DcC+lSx+y798xPDTjzv3fMEUdlPVJp5YaiAXkMGwf+jjTbbnW4XLgnr2f58BTbHtbN
	5xi2uGiw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJSrf-0000000HQFK-42q6
	for barebox@lists.infradead.org;
	Thu, 13 Nov 2025 08:39:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00070H-EU; Thu, 13 Nov 2025 10:34:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTin-000EXx-3C;
	Thu, 13 Nov 2025 10:34:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJTio-00000008Q1y-1LlG;
	Thu, 13 Nov 2025 10:34:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Nov 2025 10:34:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-soc-uid-v1-9-29a256e07144@pengutronix.de>
References: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
In-Reply-To: <20251113-soc-uid-v1-0-29a256e07144@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763026469; l=800;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=dLLJtGPCa/wltk5oAu3q1LvcdzzZRM6CHXfFoKlrMpo=;
 b=/SuYTrr4qFP/MGQG5oXALHEaF4e0iCAczmHAhKZeGtWIDR71AWfIEuB+RZIrUTVe1G9ITN65b
 sk2rT6VDn3bDOFGYExgBXAvoQewwA2+Q5OcPW3daTEdAeTOX15QVDdg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_083941_547095_CA63DCAF 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH 9/9] Documentation: migration: add i.MX8MP SoC UID change
 note
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/migration-guides/migration-master.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
new file mode 100644
index 0000000000000000000000000000000000000000..8c5ad020c42bb553e35141be8588f6e8cb3c8cb7
--- /dev/null
+++ b/Documentation/migration-guides/migration-master.rst
@@ -0,0 +1,8 @@
+
+NXP i.MX8MP
+-----------
+
+* The i.MX8MP SoC UID really is 128bit. With this release all 128bit
+  are used for the SoC UID, previously only 64bit were used. This will
+  result in a different SoC UID and consequently a different machine_id
+  when systemd.machine_id is passed to Linux.

-- 
2.47.3



