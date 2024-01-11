Delivery-date: Thu, 11 Jan 2024 08:35:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNpbD-00CffM-1O
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 08:35:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNpbC-00089t-Qp
	for lore@pengutronix.de; Thu, 11 Jan 2024 08:35:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8L2746cU2jBInKyHpH8MzgtZZU+Gbl/S1oeUzmUJPvc=; b=RL6gtC4rTPE/C30W7Doz0O5aoH
	ReEBuM47a0Rbg8fWV0YMIwtXmyehLap+2Ck/CMXzCEO2QLzjWG6Dj6MP/HfD96mtxGjrpMk1EFJTS
	BgXFj+nm2iUZLdAAH3lPcU/r88PmMvdtBflozsntmaWmPJzWKufe4AIHbmOjtn8MzyABqgWqvh6EG
	pt65iw/a23Kr5QidCI0GG/5xbOolYaLLX1iS9nW7f1I5WFk9M+LzMpyQnZwfkceTvcoOwK3UoJUcx
	7jBP3gQolkyIeXvHYReFj5kmoaZzzeAWlvsZmokzpcUASattWMY1ZcbQuf2B2EAe6vJhPwKcSTc3u
	HOc2q/Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpZy-00GJMH-2e;
	Thu, 11 Jan 2024 07:34:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNpZw-00GJLP-08
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 07:34:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNpZu-0007uc-MC; Thu, 11 Jan 2024 08:34:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNpZu-001sKM-5t; Thu, 11 Jan 2024 08:34:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNpZu-005X4A-0H;
	Thu, 11 Jan 2024 08:34:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Jan 2024 08:34:12 +0100
Message-Id: <20240111073412.1318725-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_233416_073843_0336DC80 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] regmap: clarify struct regmap::max_register value some more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have documentation for the member that was taken from Linux,
but still managed to use it wrongly at multiple places that were
recently fixed. To prevent such issues from reoccurring in the future,
expand the documentation a bit.

Suggested-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/regmap.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index 690dc3b1dccb..9e38fbc12e16 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -31,6 +31,9 @@ enum regmap_endian {
  *         data.
  *
  * @max_register: Optional, specifies the maximum valid register index.
+ *		  This must be a valid register address and thus a multiple
+ *		  of the register stride returned by regmap_get_reg_stride()
+ *		  after registration.
  *
  * @read_flag_mask: Mask to be set in the top byte of the register when doing
  *                  a read.
-- 
2.39.2



