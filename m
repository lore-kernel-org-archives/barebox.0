Delivery-date: Mon, 07 Apr 2025 12:35:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1jp5-009VqF-0I
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 12:35:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1jp4-00041Y-JN
	for lore@pengutronix.de; Mon, 07 Apr 2025 12:35:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PCdOB1F2VE6os0997wX1wZdPjW8H9GIDx1/Rf/wQcIs=; b=IOD+cd5qNPBI2e+Dlbyfw1JeG6
	YuqtE8LqZLDokITPiIP9oUmCJzdEvjh5Y5O33gQYiwG2Sfswtz+has2bbtCUsTDIRPsKW4KZZn6mA
	H4OBNocm+aNPPkndlAFSblRxdZ2+eAxrmENj/dfOemmygkzXP/ZQMeJWvnfAha8cCSfGcqMzun0g+
	eodfTggJLghcUeNPjWzkrCFEf9B2BZ3RxlaKr63LPBGkX+XLUZxo1EkmG2oDNk9NQTMcZddYsZqEI
	viN9WK2nK854ThpYQv7wwRu2cTvLAiN0JLt2SBSof3ZiJWxBOKosvOQr8gmecpQCI98d0WyAqP2sH
	ItGGY02w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1joe-0000000HOYN-3LTY;
	Mon, 07 Apr 2025 10:34:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1job-0000000HOXp-41t8
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 10:34:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1joZ-0003vg-O1; Mon, 07 Apr 2025 12:34:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1joZ-003kH6-1o;
	Mon, 07 Apr 2025 12:34:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u1joZ-00Duic-1W;
	Mon, 07 Apr 2025 12:34:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Apr 2025 12:34:50 +0200
Message-Id: <20250407103450.3316029-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250407102535.3289549-2-a.fatoum@pengutronix.de>
References: <20250407102535.3289549-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_033453_994019_43343004 
X-CRM114-Status: UNSURE (   7.97  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! bootm: remove ability for late override of bootm.image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 3693a0e8d68a..05fb5379c8ec 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -257,7 +257,6 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (IS_ENABLED(CONFIG_PE) && data->pe)
 		return pe_load(data->pe);
 
-os_file:
 	if (!data->os_file)
 		return -EINVAL;
 
-- 
2.39.5



