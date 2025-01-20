Delivery-date: Mon, 20 Jan 2025 14:32:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZrt5-002Fry-08
	for lore@lore.pengutronix.de;
	Mon, 20 Jan 2025 14:32:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZrt5-0000oM-79
	for lore@pengutronix.de; Mon, 20 Jan 2025 14:32:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I99R2bSLd4oVEemCOtHOCBriuAC+oAEyxWkSzBFx/Gw=; b=xvbvYnmky34n0Af20hzw81G7Ve
	oYWh0naDFFdVx6b9N1UUMnvw0VaiGtVWAc5HFwFKCwhwx8bH0VTxBeaYiqS4apmyTraV3N/xZFA2f
	p69BXHuoYCWaWqhaUfGfGpK3R+543fKgCql0uRlj9mFKHKBQzuUaz6jMcyzHbjtK4DpeCLoSsfhmb
	WeRe/sVI2tHuaRXolrD1zYCQzo0WVNyhQGIoZiIRelgJbUCDjUrd8TpBVIFknVlY1FZXaU+Z0z9UZ
	ZyKY0pvAU9AblBUjCIPlsjhy3zNkQ2n4DvrXdvYf1101FGUSFgMsIyCelOa6N+EcV8ixVGkd+7/Cs
	HjTL+H7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZrsW-00000005ftO-2A4B;
	Mon, 20 Jan 2025 13:31:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZrnY-00000005f6B-1ZYJ
	for barebox@lists.infradead.org;
	Mon, 20 Jan 2025 13:26:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZrnW-0000DC-FK; Mon, 20 Jan 2025 14:26:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZrnW-000wUG-0v;
	Mon, 20 Jan 2025 14:26:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZrnW-00HWOF-0W;
	Mon, 20 Jan 2025 14:26:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Jan 2025 14:26:25 +0100
Message-Id: <20250120132625.4176071-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_052636_408529_E89BF619 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] file-list: fix file_list_detect_all()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Call detect on a device file when it doesn't exist, not when already
exists.

Fixes: 00e5e596df ("file_list: add file_list_detect_all()")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/file-list.c b/common/file-list.c
index 40ccfa97ec..6298f8f82d 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -287,7 +287,7 @@ int file_list_detect_all(const struct file_list *files)
 	int i = 0;
 
 	list_for_each_entry(fentry, &files->list, list) {
-		if (stat(fentry->filename, &s))
+		if (!stat(fentry->filename, &s))
 			continue;
 		if (device_detect_by_name(devpath_to_name(fentry->filename)) == 0)
 			i++;
-- 
2.39.5



