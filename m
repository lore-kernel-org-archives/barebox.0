Delivery-date: Wed, 13 Jul 2022 11:22:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBYZz-005rk3-Q0
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 11:22:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBYZx-000344-8Q
	for lore@pengutronix.de; Wed, 13 Jul 2022 11:22:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mXjJrhjq1qmKkC5YeqllDf3jFbCMmep0G+r4f8rcYOE=; b=aHd90R+HRqS/cuv6dcFKy0wwfR
	ksKAwQ7ty9gudL+O7DWCCws2YsDy7KkCS7Hj9yhRsdEKSf8C6ounyUWu5gbz1iJTeUv45s2UVzaRK
	j9OTpDSLZ4/mQmi3dob84RsjmkZ9df0GHbM6J4wPPgSSXuoZUk2wDGldU1nW6hB+7+c2SZi+0utvh
	SZmiecqx89M2yoxiriKpMkjmMoix4lBd0CEtaJGF/3dL9SYGuZUFMHqtNH3ol7Q0vdubGX1eDQ6er
	+yjDVA2UCf2HXat662nzGy7zZjU899QqFxXVqW9DuC2e3FTDN4aAPiBtg3M0h0kuyT9JNvS+jzIG9
	4QfcEk6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBYYE-002Dob-Ss; Wed, 13 Jul 2022 09:20:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBYYA-002Di2-HU
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 09:20:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBYY5-0002iI-2w; Wed, 13 Jul 2022 11:20:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBYY4-000gP0-Ba; Wed, 13 Jul 2022 11:20:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBYY3-006fBB-QJ; Wed, 13 Jul 2022 11:20:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 11:20:47 +0200
Message-Id: <20220713092047.1588210-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_022054_592799_AB870AE8 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ubifs: fix crash building without decompressors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When building barebox with ubifs support, but without decompressors
enabled, we run into a NULL pointer dereference:

  BUG: failure at lib/string.c:249/strncmp()!
  BUG!
  [<4fd8ea59>] (unwind_backtrace+0x1/0x78) from [<4fd014e5>] (panic+0x1d/0x34)
  [<4fd014e5>] (panic+0x1d/0x34) from [<4fd65ed1>] (strncmp+0x2d/0x50)
  [<4fd65ed1>] (strncmp+0x2d/0x50) from [<4fd784bb>] (compr_init+0x4b/0x70)
  [<4fd784bb>] (compr_init+0x4b/0x70) from [<4fd78915>] (ubifs_compressors_init+0x15/0x40)
  [<4fd78915>] (ubifs_compressors_init+0x15/0x40) from [<4fd78e89>] (ubifs_init+0x2d/0x48)
  [<4fd78e89>] (ubifs_init+0x2d/0x48) from [<4fd01159>] (start_barebox+0x35/0x6c)
  [<4fd01159>] (start_barebox+0x35/0x6c) from [<4fd8c9f3>] (barebox_non_pbl_start+0x127/0x170)
  [<4fd8c9f3>] (barebox_non_pbl_start+0x127/0x170) from [<4fd00005>] (__bare_init_start+0x1/0xc)

This is because the loop in crypto_alloc_comp iterates over all possible
decompressors and then accesses comp->capi_name, which will be NULL for
unusable decompressors. Add a NULL check to handle this gracefully.
A check for alg_name isn't needed because it's already checked in
compr_init.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ubifs/ubifs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index e7b434c1960e..0b4f3de773e7 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -125,7 +125,8 @@ static inline struct crypto_comp
 			i++;
 			continue;
 		}
-		if (strncmp(alg_name, comp->capi_name, strlen(alg_name)) == 0) {
+		if (comp->capi_name &&
+		    strncmp(alg_name, comp->capi_name, strlen(alg_name)) == 0) {
 			ptr->compressor = i;
 			return ptr;
 		}
-- 
2.30.2



