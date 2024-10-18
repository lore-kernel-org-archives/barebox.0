Delivery-date: Fri, 18 Oct 2024 17:29:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ouS-005vms-1i
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 17:29:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ouR-0007F8-VG
	for lore@pengutronix.de; Fri, 18 Oct 2024 17:29:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ajh5dcfU3gDR/qS+uWYqPvI0/U4a8yn6/9biKdNudqk=; b=WtG5xv0oQYKO+WfFA2mLlRTziJ
	RZqHWtDkRW/5CngCpO0BBRhhaMbQnP0weR/uNR5VtVFjNaGYmjSTueQCBuLtIi9MeCdfL+BdzKkrg
	QEfWKxGzLgNqOdhalmQM/6GKFi06vP0pIsWzD+CkmQf6FrbcSKy2deb9/6Q++5Cw+41ZdefN9IjnD
	w9wLbS3w197gTRVUUKAMR75oxBl5D21IAs4WZVkMdTME5VIS7QrIEsal+Wlcg14ge3FB/cLXmoW7B
	rVGoWjQgbnNRNPI5Ev9akJs1cN/SxfJnmYy/RvPng7bTZ8KYy3XAq34goMnR+8r96LxYRbFSqCU1Y
	7NKu1VcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ote-00000001C3K-1iCr;
	Fri, 18 Oct 2024 15:28:10 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1osF-00000001Bon-1vSV
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 15:26:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6C74FA4423C;
	Fri, 18 Oct 2024 15:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 213C9C4CEC7;
	Fri, 18 Oct 2024 15:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729265202;
	bh=yVIbQvIdwszgjzKawnzmn7MYifDPLy8phnmz29IZACs=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=D41ZSoG7Rif/ZnNYQL0/BZg7saYXK2F+wY/7Vq0Izq91ihLRpMU6SwhMmg7yq/rqX
	 Iiv5QW4idnrZcFQNyZhXg5tI6EBijX90KkYxf2M/yE6mcvGCFYe5K4j401eI96B4A3
	 erNbGdmqVmoaITAJd+RrvfIostwarAa6BIwtB4QseIxryxhotKvh6h+ywvKJPuHwI4
	 Zlt5EhoZGIfzHMcKvUTJeCdWnPrU3CLDeF0oOVxQOOWmKQmhtCCihVfdEhwiKxRjdZ
	 UfAbuG+vt85z9zlq7cbzN3m/Ix5H3YoPIJbPZn/FcosH/VNFQ/Bz78nEGSrTgdwy10
	 IUfyVUhVVgM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14C19D2FFFA;
	Fri, 18 Oct 2024 15:26:42 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Fri, 18 Oct 2024 18:26:34 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-overflow-v3-1-30dc98fe930a@gmail.com>
X-B4-Tracking: v=1; b=H4sIACl+EmcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0ML3fyy1KK0nPxy3ZRkE6OU1DTzVJM0MyWg8oKi1LTMCrBR0bG1tQD
 iSrwSWgAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729265200; l=1500;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=i8c9ivcrgzC7TxEGB7gC3sLaxScw2SEdmsCmpe64u0g=;
 b=tBpAmcaHlN9jjo3kRbrItMqxBKFKA5ogP/8WjZJlaJbEcA/3oMy2xS9stegVoFyrLc04RufY5
 IGx62SlXhrsAqggJN/LbaD7XT1So5KkWohiU+jyvZgKxkLgjEG9HCAm
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_082643_605214_C8584A2B 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-104.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3] common: buffer access out-of-bounds
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
 common/filetype.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 3690d4ae07..3f74871d7f 100644
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
@@ -388,7 +385,10 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 256)
 		return filetype_unknown;
 
-	if (strncmp(buf8, "STM\x32", 4) == 0) {
+	if (buf[16] == 0x31305341)
+		return filetype_socfpga_xload;
+
+    if (strncmp(buf8, "STM\x32", 4) == 0) {
 		if (buf8[74] == 0x01) {
 			switch(le32_to_cpu(buf[63])) {
 			case 0x00000000:

---
base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
change-id: 20241018-overflow-dc42def7e4f6

Best regards,
-- 
Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>




