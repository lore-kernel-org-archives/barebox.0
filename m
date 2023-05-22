Delivery-date: Mon, 22 May 2023 07:23:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1H-009Iqp-N7
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:23:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1F-0001S3-Bw
	for lore@pengutronix.de; Mon, 22 May 2023 07:23:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0f/rJ8Hp6traD5/tknrVJi4Qc3+02FKk6K3uhCCh5iQ=; b=wSOSGqYIcVvjR9g7jlcqd7Qpoh
	fQB2rWFG4o71CDm6QCvmmr5Vq6BMc1IHtSgQ18/R6BpuAtTVEJIUkyVqJTExQ+HYRobz2nRelWGpV
	07H+JJDtagbx6XZ1uQWFR2BQsCFQUqy3e5+k0LP2WrSiKqowNdkrZ6vq3vhubM1nL+SZm6cp4omIh
	HHwmUxQp0cUdkHXIMe27XVj24obg94N7ST4V4rK0cheru6lx2WN1b0KoMu1t/r8ofskwVgmAvoxmV
	I35f8sV4+ivdITuMyrjD00TDwOQK5FXdB+zdzzp3GY9a9tIm8tBNA69DC6M8VSih1XT4NQrUl6ekb
	HIjZY/Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y04-005N9L-0k;
	Mon, 22 May 2023 05:22:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y01-005N70-21
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:22:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-000170-F0
	for barebox@lists.infradead.org; Mon, 22 May 2023 07:22:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-001vuD-P1
	for barebox@lists.infradead.org; Mon, 22 May 2023 07:22:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-004M1I-1W
	for barebox@lists.infradead.org; Mon, 22 May 2023 07:22:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:22:17 +0200
Message-Id: <20230522052222.1037931-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
References: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222225_661020_8AE8E11F 
X-CRM114-Status: UNSURE (   7.93  )
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
Subject: [PATCH master 2/7] include: zero_page: hide possibly NULL pointer variable from optimizer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 include/zero_page.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/zero_page.h b/include/zero_page.h
index 26a12246f155..a71c0e0b8733 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -44,6 +44,8 @@ static inline void *zero_page_memcpy(void *dest, const void *src, size_t count)
 {
 	void *ret;
 
+	OPTIMIZER_HIDE_VAR(dest);
+
 	zero_page_access();
 	ret = memcpy(dest, src, count);
 	zero_page_faulting();
-- 
2.39.2



