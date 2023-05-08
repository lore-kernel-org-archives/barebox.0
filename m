Delivery-date: Mon, 08 May 2023 11:04:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvwna-009v0P-30
	for lore@lore.pengutronix.de; Mon, 08 May 2023 11:04:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvwnY-0005mV-4f
	for lore@pengutronix.de; Mon, 08 May 2023 11:04:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c7Rd5ht3qQeb8aDinjN9GfdiVUHgHX9hW9qdOilMAzw=; b=0B1QFO2ohTRsMIt8JJNmTc+4iN
	7yBxSIQ458QGCohGb3RaKiej/C1inJ93pWprNF5M4eDOqiAD9u4C5gKZhc4F24BCIOCGAkaWcpl7p
	V29xlmSlqWIigOYzsKkwtNJZWsw1FKD2w1IBHozQbbYz6vXtFud98WBF8Ec/ET7D3kbPodFXGr/Uy
	T3co6KRY3mBwRTVRBd3hMfRGcwz8+Lo9+W02LzhaH9vKDUNhpesEvGWSshH999PcEdhtq3rk9Nztf
	FJekELAGhCbJ2UZpEm9xcQ8UVMVJbrMbROMnIUmmA79ueIpKGyIScE6PysXiLx/ptVEEYYPFciiQ4
	Toi1vw9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwmJ-0002ou-1R;
	Mon, 08 May 2023 09:03:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwmG-0002o7-1a
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 09:03:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pvwmD-0005do-6R; Mon, 08 May 2023 11:03:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pvwmC-001wxJ-HR; Mon, 08 May 2023 11:03:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pvwmB-00G8JC-NE; Mon, 08 May 2023 11:03:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 May 2023 11:03:22 +0200
Message-Id: <20230508090322.3845161-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_020328_524233_D56D9712 
X-CRM114-Status: UNSURE (   9.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! of: add function to read a file as unflattened device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of: fix warning about now unused variable

This was an argument to read_file, which has been replaced in a previous
commit. Now GCC warns about it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 197ccb2b07e6..4b4e04b03997 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -426,7 +426,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 {
 	const char *devicetree;
 	const char *abspath;
-	size_t size;
 	int ret;
 	struct device_node *root = NULL, *barebox_root;
 	const char *compat;
-- 
2.39.2



