Delivery-date: Tue, 17 Jun 2025 11:22:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSWA-008DtZ-0h
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:22:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSW9-0005b2-Li
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xDZW64ZCm6EBb1R+VKpbs3T7HfYuIcdycSRNkRbTXNk=; b=TXha/RJnbGQHdeRWJKMfr2ypzw
	Cx7NmYjT+nzicN5Y1ewNd914uPUe92AZp7Se7ys0sG34fyF8tIDGlv3sQNnwLoxo3pkKWXdwW9EaO
	M1KNmMZXyNL3gQ9DjMmSL5bn0q5DLzPJoDRQIXMzpTdIQp9JJgeeEj/Eq0oJ/xPouV27ccFWXC1nt
	3pfYYKfTxeh7VzveZ6hWnyIdEQo+/5SNsklk+09zITU2H2MK9J4+d9XE6+BGciujgGT715VsAqo4D
	iL9/7Hy/gY8jUJTvMs8KvdR8CT/TR3FJWwq6eDzVJe6V9h462G9SS4EteB9k0Wk4vZJLsk4zD64o2
	WsSnD09A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSVc-00000006j4N-1ohH;
	Tue, 17 Jun 2025 09:21:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSKh-00000006hSX-2l8o
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:10:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSKg-0004lv-E7; Tue, 17 Jun 2025 11:10:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSKg-003wkt-0p;
	Tue, 17 Jun 2025 11:10:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSKg-00CbRd-0S;
	Tue, 17 Jun 2025 11:10:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Jun 2025 11:10:17 +0200
Message-Id: <20250617091017.3003866-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_021019_708484_0294CE65 
X-CRM114-Status: GOOD (  11.98  )
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
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: AM62lx: Add note about required TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The am62lx barebox port currently needs a modified downstream TF-A to
work properly. Add a note to the documention providing the necessary
hints and pointers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3-am62lx.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/boards/ti-k3-am62lx.rst b/Documentation/boards/ti-k3-am62lx.rst
index 3cd7a6debf..79f2e17cf3 100644
--- a/Documentation/boards/ti-k3-am62lx.rst
+++ b/Documentation/boards/ti-k3-am62lx.rst
@@ -11,6 +11,14 @@ some firmware files and a BL1 which is responsible for setting up the initial cl
 power domains and DRAM. When this is done the BL1 branches back to the ROM which loads
 the second stage which contains the TF-A BL31, barebox proper and optionally OP-TEE.
 
+.. note::
+The AM62lx support currently depends on a modified downstream version of the TF-A. See
+https://lore.kernel.org/20250617090142.3000882-1-s.hauer@pengutronix.de for a patch
+series to be applied on the Downstream TF-A. Be aware that barebox might need further
+changes to be compatible with future upstream TF-A support. Specifically the SCMI clock
+IDs used in the assigned-clock-parents properties might not match the future upstream
+solution.
+
 Building TF-A
 -------------
 
-- 
2.39.5



