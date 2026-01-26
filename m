Delivery-date: Mon, 26 Jan 2026 11:45:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK5r-005Vtt-1x
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:45:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK5q-0002E2-Jd
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:45:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x2K3eNBATyq67zRzRSh2TyA+T96rh0MbToPADveeKHA=; b=QzMtCiZHbOmujUN9KdBHeAOOLD
	BdzT+a0kyO7IWBpVTWOizf9yKvRVbuL/RCgaDhMb2TpQC+X//r9zJLmXtMO3VxKOa+HHeDzFYS8yN
	UEU09oGAkr+FZhT01vwByZ3u0Bbsb0rE3AquK4QNRKwCHbrkG4roEWarqNhl2vjR+SiAjOnybuqBL
	phA5qgI9c36Hez44Fe8Gq8h4V04qYFASkM4AdRtl3vzBMcjeMqJGF76RbW7I/YWkHz44Chh5uOgqR
	ZVXWCQcj0wAwetqajxPaCA5MX7udHA5di2flHl9B24kFA4b+KzFuckAZYGr9KZI2cqOgvsNjDNVv0
	OpEQAXdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK5N-0000000CJY6-2wZg;
	Mon, 26 Jan 2026 10:44:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK5E-0000000CJNc-3CY8
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:44:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5D-00022R-4O; Mon, 26 Jan 2026 11:44:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5D-002ZCG-1w;
	Mon, 26 Jan 2026 11:44:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5D-00000003EMO-1SEu;
	Mon, 26 Jan 2026 11:44:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Date: Mon, 26 Jan 2026 11:44:30 +0100
Message-ID: <20260126104433.765071-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260126104433.765071-1-a.fatoum@pengutronix.de>
References: <20260126104433.765071-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_024436_796317_63ABEF7D 
X-CRM114-Status: UNSURE (   9.74  )
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
Subject: [PATCH master 2/2] FIT: fuzz: fix reference count underflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that FIT images are reference counted, we need to initialize the
count to 1, otherwise __fit_close will underflow it.

Reported-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Fixes: f3aadb274abe ("FIT: add support to cache opened fit images")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Issue was found by Claude while reviewing the previous patch
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index b5d0e2e5381f..26bd8e265b25 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -1120,6 +1120,8 @@ static int fuzz_fit(const u8 *data, size_t size)
 	handle.fit = data;
 	handle.fit_alloc = NULL;
 
+	refcount_set(&handle.users, 1);
+
 	ret = fit_do_open(&handle);
 	if (ret)
 		goto out;
-- 
2.47.3



