Delivery-date: Thu, 11 Dec 2025 22:01:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn5-00AQnn-07
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 22:01:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn4-0004Mf-2w
	for lore@pengutronix.de; Thu, 11 Dec 2025 22:01:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oQpllBn+YtjxZ2Kc6z2ZlwQREbbuZZ4EVvpONrQNZOk=; b=cHT3MZsiUKrfTLa1HL5CZAwzA8
	B89/zYp4/PCBXJEujfqdJMwMnBUwQJpU2DklxlRLI+AFr+NrdX7HT9s+OzkARPDwN9qK9GjqDRas6
	BS/E1ZFs6alNqyWpt9ucHcOMcG5I9CT5TCBAYEhKAsESw3EFf3Gp1PhsBztTI+I4Oq0lHhb+qHFDy
	3tPBKMjvngKOmoLKSR4JuDSPxSo9YRfrHykYXUMJfb9FcTi93WBuHcJUiV6xuMetSA1fuFXnQA5a3
	12Y6pZ6g7PX5Xn4BEt486QaQR4AoUdSd4s106RiqtVv/UzKC17b6EfjxXSn3uMEGPS0p3Cd2JBLf+
	mJgwbBuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmR-0000000HIw1-1Afp;
	Thu, 11 Dec 2025 21:00:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmO-0000000HIu3-0Rs3
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 21:00:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0003vI-EM; Thu, 11 Dec 2025 22:00:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-005BZz-0i;
	Thu, 11 Dec 2025 22:00:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0000000DJ5q-0YST;
	Thu, 11 Dec 2025 22:00:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 22:00:46 +0100
Message-ID: <20251211210049.3170349-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
References: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_130052_169075_291F9272 
X-CRM114-Status: UNSURE (   8.23  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] boot: try builtin and removable media before net for boot.default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is the same sequence to automatically probe the environment, so it
makes sense that the automatic boot order would follow.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/boot.c b/common/boot.c
index 07bd288df29d..14525d31ae2d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -137,6 +137,8 @@ static int init_boot(void)
 	if (!global_boot_default)
 		global_boot_default = xstrdup(
 			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "bootsource ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "storage.builtin ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS, "storage.removable ")
 			"net"
 		);
 
-- 
2.47.3



