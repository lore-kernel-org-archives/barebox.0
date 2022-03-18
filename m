Delivery-date: Fri, 18 Mar 2022 15:51:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVDwa-00FnSD-4H
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 15:51:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVDwa-0007Cb-P2
	for lore@pengutronix.de; Fri, 18 Mar 2022 15:51:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H6atA57LZPHFMFNGBTKpKl/jNW+y2wS6m6WwV9sW8Ks=; b=c+HiyY70m9thS6
	46jHnypqaPEYoqjZxJ7q4tsc9NS00f8R1BIvrAmnB6MT8+zbYzY7B46ATxEWuSzortTpIAQFiD+pz
	+XrFPs9JnotQ07FKERsvEkEIij4gsBlqXD3S9udohg7UhzBudVWFLKOLo/LBVr2FnZJRqWlRA+Vl+
	rtw33I0ho/P6O54qf6pvGhB044rdddh1fzFuzHzK1864sLA40k+d2QXHO863NJ9QEnJuxKu4iXxtI
	ogbW2h/DaXtlMkg8ePoL06UQURI9DKGQmJS1JufiFXvEMC8ErzhJZQ9VBK8AYZHptgKtQU4G5FNLM
	nsLCLJhckWAygZTWxJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVDv9-0024lt-FV; Fri, 18 Mar 2022 14:49:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVDuz-0024h4-Ov
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 14:49:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nVDuv-0006uF-Dt; Fri, 18 Mar 2022 15:49:25 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nVDuu-0025Z0-TN; Fri, 18 Mar 2022 15:49:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 18 Mar 2022 15:49:24 +0100
Message-Id: <20220318144924.497993-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_074929_872849_3C8F9B67 
X-CRM114-Status: UNSURE (   9.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: constify wirte_full input buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Buffer written is read-only, so align prototype with <libfile.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/common.c | 2 +-
 scripts/common.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/common.c b/scripts/common.c
index 2be41615ea9e..0eb263d041a5 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -148,7 +148,7 @@ int read_full(int fd, void *buf, size_t size)
 	return insize;
 }
 
-int write_full(int fd, void *buf, size_t size)
+int write_full(int fd, const void *buf, size_t size)
 {
 	size_t insize = size;
 	int now;
diff --git a/scripts/common.h b/scripts/common.h
index 820108c52c2d..399729c338f3 100644
--- a/scripts/common.h
+++ b/scripts/common.h
@@ -5,6 +5,6 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
 void *read_file(const char *filename, size_t *size);
 int write_file(const char *filename, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
-int write_full(int fd, void *buf, size_t size);
+int write_full(int fd, const void *buf, size_t size);
 
 #endif /* __COMMON_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

