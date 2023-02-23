Delivery-date: Thu, 23 Feb 2023 11:43:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV94C-00Gius-0l
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 11:43:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV94A-0003wr-Um
	for lore@pengutronix.de; Thu, 23 Feb 2023 11:43:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1FPfxJ0tIbgjf4l1TGCbVtaDY+qs76dCDQJycZ5o4Ts=; b=MyYQRrz2laQfeI2+8d6yeMRVZV
	Uwav5G4yV04LZSkgWNMQ0heO2Atmdev0wd2s60Zw/23UV2b8MEpqSK0Ch2+zBzoiCBI+ZDgIGg5ew
	Qq+wpLEh388y0KMlY90CEg/U9PRG0TvwSHVf/hVRsBHSrPU5cf+KAXFJJQ8H07d0f5QbGkPcwNHJa
	8xQZBBxjv1BfDjpIu8bcp5CRu+DxLi+FR0aQ7j/mcM4FHPNGDDg8q0/HB9u6eU1Sn0XxUHlsdC+8B
	uyu2ykbTvvQC8h4u/XUukSE8G6Y4Y+eSRawRwz43KrwweeNWyEG7vRhZ03Q4Y6REKCzm6NNA3ptHs
	CzpZ6Pjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV92x-00G0CH-7p; Thu, 23 Feb 2023 10:41:55 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV92s-00G0AY-Ln
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 10:41:52 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id A0957100004;
	Thu, 23 Feb 2023 10:41:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 23 Feb 2023 11:41:36 +0100
Message-Id: <20230223104136.1799426-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_024150_875731_3FE529EC 
X-CRM114-Status: UNSURE (   8.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] of: base: Fix of_get_stdoutpath() when property does not contain a colon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Initial state of patch accounted for lack of colon by skipping xstrdup
in that case. Too much time went by that I forgot before upstreaming,
 why I did it that way and thus value ended up being dropped...
 Fix this to restore console for devices which lack : in their
 stdout-path.

Fixes: 90f70dbe2958 ("of: split part of of_get_stdoutpath into of_find_node_by_chosen")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 34854d9b0db1..37520709fdd7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2689,9 +2689,9 @@ struct device_node *of_find_node_by_chosen(const char *propname,
 
 	p = strchrnul(value, ':');
 	if (*p)
-		buf = xstrndup(value, p - value);
+		value = buf = xstrndup(value, p - value);
 
-	dn = of_find_node_by_path_or_alias(NULL, buf);
+	dn = of_find_node_by_path_or_alias(NULL, value);
 
 	free(buf);
 
-- 
2.38.3



