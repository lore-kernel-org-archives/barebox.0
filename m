Delivery-date: Mon, 15 Dec 2025 09:53:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4KI-00BgSO-2K
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:53:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4KI-0003V7-5c
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:53:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6H+WpzwQ7rLZVTZy/vkqhIL5kfV5cwD4VgPYVXuvILQ=; b=j6kA2hsXXgUi6vv0B/oyTsWZfX
	QWYWq6eiyXHa5rdR1/NDSWRDH2fcig+r1MpGbWjbW3R/SJAKjdJu1lgvtF6Q/GfJSVp7rWY1qxPpv
	sFUTYzwOy4wO02q3yH9I7Kuedu2PBJgUELpMVLVaeu7m7ztwsHHJWzXX8xKym0v/UvFCyFcXe8++G
	Cr+e08jPaExRJc3hT6kYVlQg/RhbdSjchOIuUKI1Y8Z74ZMFg0pg/QL6/2IkG6bViQiHdA93AN7WM
	510O56KbuEYXabupZAtJhYtLMo3YBka2Stz4ZEPw9XrkAJUNnzF4WWpaqk/mKSmc7d9Jyj0YhtvsR
	lHX8rFtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Ju-00000003ItY-3NpO;
	Mon, 15 Dec 2025 08:52:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Js-00000003It4-07y8
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:52:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Jq-0003OA-Cn; Mon, 15 Dec 2025 09:52:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Jq-005kcT-0g;
	Mon, 15 Dec 2025 09:52:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Jq-0000000BiwK-0Ufz;
	Mon, 15 Dec 2025 09:52:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:52:37 +0100
Message-ID: <20251215085237.2793823-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_005240_178094_36BCEB8C 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: [PATCH] bootm: add os_type field to struct image_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already call file_detect_type() on data->os_header, but do not stash
the result anywhere beyond a local variable in bootm_boot().

Let's save it into struct image_data, so we do not have to repeat the
operation at other places in the upcoming EFI loader patches.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 2 +-
 include/bootm.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 22796b3522ac..620eb19ff1d3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -816,7 +816,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 	if (size < PAGE_SIZE)
 		goto err_out;
 
-	os_type = file_detect_type(data->os_header, PAGE_SIZE);
+	os_type = data->os_type = file_detect_type(data->os_header, PAGE_SIZE);
 
 	if (!data->force && os_type == filetype_unknown) {
 		pr_err("Unknown OS filetype (try -f)\n");
diff --git a/include/bootm.h b/include/bootm.h
index da3e5d7e4b36..b08e20c50da7 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -104,6 +104,7 @@ struct image_data {
 	char *tee_file;
 	struct resource *tee_res;
 
+	enum filetype os_type;
 	enum bootm_verify verify;
 	int verbose;
 	int force;
-- 
2.47.3



