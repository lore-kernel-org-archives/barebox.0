Delivery-date: Thu, 17 Aug 2023 09:41:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXcr-007fuW-Ii
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 09:41:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXcp-0006qh-OD
	for lore@pengutronix.de; Thu, 17 Aug 2023 09:41:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eAK9rNHKBLbpeXkK31mlB8mf7YbwRcPGTl1EGQuCKfc=; b=ShkHeRZpgv7RK+xPWwomUHDz3i
	jDhKH0SKZGaEjKbKvrvD4cnYxZ32hA7SvVSfIFXZfZ6lB47/UrDyVrtMmoT6gTqWhUXEYm1ukXHO3
	U3qdEzDYgoqGoByRgDlOfHN7O/NGCRrTcxhhrTGBhYPpS/WnplBE3ud7lp26uAYXUgErYzt3I92HK
	njMnLK1XZ4/g7hMgvwsKaqd7DrBFLyiyVhCKMd0W/z5BJld28GYlep6d7Q6NHP9x2EbySsOKJC31+
	u1hMYMKCp14oWXrsSXK0s6Npdz1z83BEWIeOE5aIvr1R0SpLyBfOA8EiU51rNKXdrrWIuS316ue0t
	WNf4pTcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXbp-005jtC-1E;
	Thu, 17 Aug 2023 07:39:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXbl-005js4-30
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 07:39:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbc-0006U6-OD; Thu, 17 Aug 2023 09:39:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbc-001Dfe-3r; Thu, 17 Aug 2023 09:39:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbb-005I8W-2G;
	Thu, 17 Aug 2023 09:39:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Aug 2023 09:39:39 +0200
Message-Id: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_003953_968501_4F363275 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] envfs: fix defaultenv_append_directory macro definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

defaultenv_append_directory is called as if it were a function and the
trailing semicolon can break parse of if-else statements. Wrap in do { }
while (0) to avoid this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/envfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/envfs.h b/include/envfs.h
index d4e2c6110e65..abe0ffb96397 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -139,13 +139,13 @@ static inline int defaultenv_load(const char *dir, unsigned flags)
  * from the filename.
  */
 #define defaultenv_append_directory(name)			\
-	{							\
+	do {							\
 		extern char __bbenv_##name##_start[];		\
 		extern char __bbenv_##name##_end[];		\
 		defaultenv_append(__bbenv_##name##_start,	\
 				__bbenv_##name##_end -		\
 				__bbenv_##name##_start,		\
 				__stringify(name));		\
-	}
+	} while (0)
 
 #endif /* _ENVFS_H */
-- 
2.39.2



