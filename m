Delivery-date: Sat, 15 Feb 2025 13:32:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjHLc-002fRI-2f
	for lore@lore.pengutronix.de;
	Sat, 15 Feb 2025 13:32:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjHLb-0004aQ-L8
	for lore@pengutronix.de; Sat, 15 Feb 2025 13:32:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+WGH7VcOBGod0JLimyGJummFMgcEiELC6LpG7QlmqmE=; b=YdoRYeCOspyfbUVSDXCqnieyOM
	1UJOi47v6H/z+xAkbZR/JkJhh5vkMKyIPpApopLl31THWwX8fW+8U4iYsgXEHOQett6K831AMpd/R
	TWT99CXJJzLJO6jov+MEWOTtcflH0j8tm4X31RBJW6N00YgRWxh0b88BrTQTDO76edSuOynKzzR81
	rHT+VRySQVc+Kn/1PN0NVJ/LHP3pWXfdHBj2lGGquxaOITO0G5orExFBQUtMULXF98hgK7+1nRcDy
	ec+T1XUbhnUMbp19xZoHu6G16rxmqVIaxqcEsb1GhQuhonVr9Zgg4bCi1hIlL98Bam4GZa2WVQEN+
	TRWICJUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjHKm-000000003Jm-3gBt;
	Sat, 15 Feb 2025 12:31:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjHIA-0000000031y-4AkE
	for barebox@lists.infradead.org;
	Sat, 15 Feb 2025 12:29:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjHI7-0003zg-53; Sat, 15 Feb 2025 13:29:03 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjHI6-0014xC-36;
	Sat, 15 Feb 2025 13:29:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjHI6-00Bzd8-2o;
	Sat, 15 Feb 2025 13:29:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 15 Feb 2025 13:29:02 +0100
Message-Id: <20250215122902.2858449-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-8-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_042907_034241_C7BC4A2E 
X-CRM114-Status: GOOD (  10.21  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! commands: boot: add support for overriding boot artifacts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows e.g. adding an initrd, when none was specified before.
Otherwise, we would run into a NULL pointer exception.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index dd9ba2eae3b2..fe4d51681d73 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -152,7 +152,7 @@ static bool bootm_get_override(char **oldpath, const char *newpath)
 	if (!newpath)
 		return false;
 
-	if (oldpath && strcmp(*oldpath, newpath)) {
+	if (oldpath && !streq_ptr(*oldpath, newpath)) {
 		free(*oldpath);
 		*oldpath = *newpath ? xstrdup(newpath) : NULL;
 	}
-- 
2.39.5



