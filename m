Delivery-date: Fri, 18 Oct 2024 19:14:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1qYL-005xca-2y
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 19:14:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1qYL-0005oM-Bt
	for lore@pengutronix.de; Fri, 18 Oct 2024 19:14:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nTG6GItqStsMoJ2AVLxfJAjknYUHCR+ao0X4uAxcSRc=; b=fCoJFfxDkJ191BzSqg05IGOHWw
	vX2DzHivSl2qzlfhYPqcAP25ufqmGsBKzgQQWEaIX9UUWU0w9dp456PQCzahTo+r1iFA66e5/FbG7
	e1pjYwZGKRxUTeww1/PczHUoU+1kA7plN0j+64p5bhw+fs4+tsGn0WJkDAtnrGsoymIKHve0yT4sA
	Iku4C0p/NrMiG4ExHkvC8bbzMY/N6QE6NYXyWLVtAXf+zBGnV3Vxq31ZsHI9KDcKLg9xwA3XpiK5L
	ry8bkzVMfp716F02PPv+B53LcW0KtsofO8Q97c7V8eewyrFXws0daBL85pK+1gFh08RVdf3AGK7S4
	WimlR1wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1qXm-00000001RNY-484z;
	Fri, 18 Oct 2024 17:13:42 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1qXj-00000001RN8-3vEo
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 17:13:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 268BAA44256;
	Fri, 18 Oct 2024 17:13:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C08C4CEC3;
	Fri, 18 Oct 2024 17:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729271618;
	bh=lw5MyuqoTx9U+uT1OOlXsBbW9rL1zFFhpH+A6aHXn3k=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=N9HPqLLmf1zbHhj2hHizpvw1zl5m8osI3UBiATeVUah8bg1IqlERXm4EOIhz0fThY
	 GSy95fthOcI3T1IzOtC9Hu3QPOjB0iNTBZRw9LvWs89VBuH3146ciCGYbWOk0lHRyB
	 hj+P1ae3DUo2IR2BZL4Ryenp+/C9N9zFSxgg3AwSbbJiwfO/25SzWVzp+r6WYSwnW6
	 bTLE4/ksS2Kb7Keeo3t6rmwb7SJ0CodZ1Y+4Ug+r7kInvx9i+6+8tAJQtYWiMjxLu9
	 p/ED9husAmlTShTQguI0stynhb2VCfn9jT+DqTu2vt/XdQow4HOfHIgDk9Vp9WSdPP
	 cHSAhlt1vjaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2629D3DEA2;
	Fri, 18 Oct 2024 17:13:38 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Fri, 18 Oct 2024 20:13:31 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-overflow-v5-1-6a438ff92ca2@gmail.com>
X-B4-Tracking: v=1; b=H4sIADqXEmcC/3WMyw7CIBBFf6WZtRgo2Icr/8O4QBjaSdrSgEFN0
 3+XduVCl+fmnrNAxEAY4VwsEDBRJD9lOB0KML2eOmRkM0PJSyW4aJhPGNzgn8waVVp0NSpXQb7
 PAR299tT1lrmn+PDhvZeT3NYfkSSZYJJb0zYOW8n1pRs1DUfjR9giSf0TVRbvXKOtayGsqb7Fd
 V0/F20N9NkAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729271617; l=1673;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=ECwB9jAzpYJYU3ijMMyMb/rTEhskLDq37D0Kv7kaNzo=;
 b=xw5QaH1/ThujjiNaG1TfAxd6jSF0F0hTBVGlHqbF50u93D06rTulrJw39otjN+2++1GXCNQ2X
 ybI77z/2vBJCjaP+UcHcKZrKwhwFncCS89APkRFJN+5LKwKhg/geMVf
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_101340_152355_D5E5A5A4 
X-CRM114-Status: GOOD (  12.71  )
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
X-Spam-Status: No, score=-104.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v5] common: buffer access out-of-bounds
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
Changes in v5:
Removed leading spaces that misaliged the code in v3
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




