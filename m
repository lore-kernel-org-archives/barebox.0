Delivery-date: Thu, 14 Aug 2025 22:28:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYy-000cg9-1d
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYx-0001ZC-9i
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6g/2444oP8MdFVovE0MQ1pLHznBnNxtKUuxxxXqjdbo=; b=ulGKR0X5O8sg5Lb+ZrSbvx3VEO
	xoRatM1Q0aEd5/9zdhVroDG/hhihJI8m7LItaBEHvWRaJjH9yqWlwi1/t19EDRaCIFcpqj25pFwB1
	U/SAXMGq7uPZi3TsPjDmOr2bTl49ocQY/wjfAHkUrmdxGtMGV3sE3/mcQwaiiwPW3tG8GKjM81weQ
	m6ohpclAT2OIf9FDFP17jEY5VzLgcSSqTMVPiSHX2m6WJfTXzemaRROjOuc+37ddFnsShb96nAlJb
	IWYuShhxYrZaHg5Mw6nAV1xpcq9Kmv6bro5LPQkMwU/4ft6KOzXJ5rSpjG8oYtbqbF1Sjb1bgJHy5
	NE23shBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYU-00000000VAC-3E4r;
	Thu, 14 Aug 2025 20:28:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYR-00000000V7t-3Zj0
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYQ-00019L-AB; Thu, 14 Aug 2025 22:28:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:27:58 +0200
Message-Id: <20250814202805.354827-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132807_890073_FCF6FC67 
X-CRM114-Status: UNSURE (   8.60  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] common: fix outdated barebox_set_hostname comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do not allow underscores either now, so bring the comment in line
with what barebox_valid_ldh_char is enforcing.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/misc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index af22579af16f..f2c084a0df4b 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -211,8 +211,7 @@ bool barebox_hostname_is_valid(const char *s)
 
 /*
  * The hostname is supposed to be the shortname of a board. It should
- * contain only lowercase letters, numbers, '-', '_'. No whitespaces
- * allowed.
+ * contain only letters, numbers, hyphens. No whitespaces allowed.
  */
 void barebox_set_hostname(const char *__hostname)
 {
-- 
2.39.5



