Delivery-date: Fri, 05 Aug 2022 15:02:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwxx-00CWlZ-2N
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 15:02:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwxx-0006Z7-OC
	for lore@pengutronix.de; Fri, 05 Aug 2022 15:02:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4qePHBxN2sWAwvHr/PN8DjLHVOLn/MvooSCrU/hFTNY=; b=tAzR6L67lMWp/0OkpIR2faw6SC
	2CMq4lOR0vYJJWTpKfnewmV3ayiKdXa5/tuHKUnZx4Q/xY7oGFtO9sEQvZWVe+hFdRYbo3VOgjkt8
	b57SZ/0HEj3KPmgnqd4cQ0hTa+a2+yKHMCysxDeqnKu4DLhSgQBUU9gOxjncoqjOjJ8/mutBcCcqh
	CF6ccjs93LUjNug8kstGg7a8e8cwOkwkxs2OKg4FNjw4/uMbqvklJG0iZZyRaCcU10qsxQrA9nYb8
	68axudkxmt4lPLoJ3VMueWUCCONplH2jOis9bE7O6rdVXDaqMj/ho4CJ72tZP2QwqMfdZXRMd4xyJ
	EXT/DokA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwwO-00FEEl-7s; Fri, 05 Aug 2022 13:00:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwvV-00FDUx-LL
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:59:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvS-0005xX-8o; Fri, 05 Aug 2022 14:59:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvP-001thW-9r; Fri, 05 Aug 2022 14:59:37 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwvQ-0055NU-T8; Fri, 05 Aug 2022 14:59:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:59:30 +0200
Message-Id: <20220805125931.1212228-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
References: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055941_771206_B70EDAA7 
X-CRM114-Status: UNSURE (   8.19  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] reset: implement reset_control_get_optional()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make porting kernel code easier by providing a compatible
reset_control_get_optional() function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/reset.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index d0677b1d9f63..91e9cdfb3279 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -73,4 +73,10 @@ static inline int device_reset_all(struct device_d *dev)
 
 #endif /* CONFIG_RESET_CONTROLLER */
 
+static inline struct reset_control *reset_control_get_optional(struct device_d *dev, const char *id)
+{
+	struct reset_control *rstc = reset_control_get(dev, id);
+	return rstc == ERR_PTR(-ENOENT) ? NULL : rstc;
+}
+
 #endif
-- 
2.30.2



