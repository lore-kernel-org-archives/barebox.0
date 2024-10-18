Delivery-date: Fri, 18 Oct 2024 18:25:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1pn8-005wwX-08
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 18:25:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1pn7-0003Hm-FP
	for lore@pengutronix.de; Fri, 18 Oct 2024 18:25:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1jk2yTPdZYN/5FjxL9ztUBy4UfoThhV7jwVPfQji6kU=; b=x4dJl6xmRIlqnnmQOransIDxK4
	i51HiDZMxpyKkmIUf4OXG05eJ1ypEn3CSuybbirujwTJC3hLlQBX8AyWU/v5PlMzpzIKGdmaXBTbu
	RZ/R2A5KC/0CXmiN44hANyanI/JdXsDs+m6JDT1+HLbuFKSnHzTn21GDa9eOghHrVm+7D26g6bL76
	t+9AR08gDpORA4S4CF2UMT9tuFE8K4hpkLFjb9r5X6ZMMfRE5KkX3/L3ls7IQPiE3l2Zx/pTXbSwf
	Q7ZZbK+z1szuhOkitEMhaCRsJ6ceK+6KqASQnNC1ioTxWLJkOStR4zeyJ2Ehtp4axJ26PYg8hD4yc
	/5umSblA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1pmU-00000001LZo-0LoO;
	Fri, 18 Oct 2024 16:24:50 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1pmR-00000001LZ9-17hu
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 16:24:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 86084A447A8;
	Fri, 18 Oct 2024 16:24:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C125C4CEC3;
	Fri, 18 Oct 2024 16:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729268686;
	bh=Rv7abMsfMGoow4T5AEHILEdsknpziHU0BPgaeAWCq3U=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=av+6oYwlZptbF1noXAt3i4EseSsp/VKciZ7VDc3RdNZuKz0YRmAbP60OYrLWhRGbb
	 XpNsKr5hxtKzPb2+ZepHmCozJXA0xxHYKyd9uGOb9SpkZg80+FNDfCJKvw8ZiAzUKf
	 r63uIGD8/68eRXyuULx7NcfwkwZ6rF/xSuvcJ9adUPlXAbfi7ODKMEPFRZyo/G4WsX
	 Bhg+qfbJKGHsWHWNqFjqNJOWQza+FLL3iiHH2mzKBO3mRlQ9BE86eKHGtfbBzRQg+x
	 GfUkHaWBpcjWlLfiOlNOGkuz7ZpaLiPLQluX/kDOnHiI8PMaDEgle1b+GYoHfmQ3AY
	 RKVYSG6ivstFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23CC9D30016;
	Fri, 18 Oct 2024 16:24:46 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Fri, 18 Oct 2024 19:24:43 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-overflow-v4-1-b0aed7711dc6@gmail.com>
X-B4-Tracking: v=1; b=H4sIAMqLEmcC/23MSwqDMBSF4a3IHTclL1rtyH0UByG50QtqSlLSi
 mTvpo47/A+Hb4eEkTDBo9khYqZEYa2hLw3YyawjMnK1QXKpBRctCxmjn8OHOaulQ39H7W9Q76+
 Inr4n9RxqT5TeIW6nnNVv/YNkxQRT3Nmu9dgpbvpxMTRfbVhgKKUc9tmesqAAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729268684; l=1598;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=QWTUuGk9RwnfJAMjCAGxegxXtgyypiWYdpNK77oXhZk=;
 b=KaI5JXvxeLwgryzpnRRi4dhL+K5uR2AGbJTXgkS0koCNEXaHCBxBVzuHbzAEipFKi4fZyoQzX
 Cee7oD41pjHBbb2TgbMFfWO5ey8S8sDj0Q9zjLLkrdDb8GQTFe1FS3t
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_092447_426029_9C20156D 
X-CRM114-Status: GOOD (  12.08  )
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
Reply-To: abdelrahmanyossef12@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

in file_detect_type() to detect file of type socfpga_xload you need at least
68 bytes bytes, so we need to check if we have enough bufsize.
So I moved it after checking if `bufsize >= 256`.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
This patch is a replacement of the last one because there were some issues with it
---
To: Sascha Hauer <s.hauer@pengutronix.de>
To: open list:BAREBOX <barebox@lists.infradead.org>
Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 common/filetype.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 3690d4ae07..67ae4916d1 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -374,9 +374,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
 
-	if (buf[16] == 0x31305341)
-		return filetype_socfpga_xload;
-
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
@@ -388,6 +385,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 256)
 		return filetype_unknown;
 
+	if (buf[16] == 0x31305341)
+		return filetype_socfpga_xload;
+
 	if (strncmp(buf8, "STM\x32", 4) == 0) {
 		if (buf8[74] == 0x01) {
 			switch(le32_to_cpu(buf[63])) {

---
base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
change-id: 20241018-overflow-dc42def7e4f6

Best regards,
-- 
Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>




