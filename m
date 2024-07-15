Delivery-date: Mon, 15 Jul 2024 14:36:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTKwo-0055sG-2a
	for lore@lore.pengutronix.de;
	Mon, 15 Jul 2024 14:36:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTKwo-0002W6-5A
	for lore@pengutronix.de; Mon, 15 Jul 2024 14:36:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kB5dLGWbyfSlsHMrLBCmZlJhsUhCjfMB55qLIxbWLE4=; b=TgCj8PYNH+BsXpiTpFmhU9KIKS
	aBw4zhbt/s0slgs/B49O3Z1MkYu083GHiWxjGiXPujDLEVXw6kvnMe+WbEhtjkA7RpB+axP82S8at
	z3PHCycfiXcCuMM2ZZPqy5cURW0j48KJhxdk1cVSFV5CHIKMi1Z89RGLAItNMeIL+NDbIq6N3OS9a
	9dbPPekiaZZuWB5l9eZ/aGPvx21vtmcLS14vFpQl1vXre6VU6ZcrBgBlO9w76SypsiWe5Dmak5j/g
	L53TGXqeA4Jw+URLSYieyrpQreO6d7Ns1FJroRHXGwB9la4CIRerhwJ8Hx/ltKrlMgdWIpIy062K/
	foHKJPDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKwI-000000072ln-3IhT;
	Mon, 15 Jul 2024 12:36:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKwE-000000072kV-3j0I
	for barebox@lists.infradead.org;
	Mon, 15 Jul 2024 12:36:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTKwB-0002Km-U5; Mon, 15 Jul 2024 14:36:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTKwB-009huL-GF; Mon, 15 Jul 2024 14:36:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTKwB-0088tG-1B;
	Mon, 15 Jul 2024 14:36:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Jul 2024 14:36:12 +0200
Message-Id: <20240715123614.1940787-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_053618_951890_F112D333 
X-CRM114-Status: GOOD (  11.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] hab: bail out with error when SRK hash write fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When we fail to write fuses during writing the SRK hash, then bail
out with an error instead of silently ignoring it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/hab.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 28a091841a..288f440bd2 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -280,9 +280,11 @@ static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
 
 	for (i = 0; i < 32 / sizeof(u32); i++) {
 		ret = ele_write_fuse(0x80 + i, newsrk[i], false, &resp);
-		if (ret)
+		if (ret) {
 			pr_err("Writing fuse index 0x%02x failed with %d, response 0x%08x\n",
 			       i, ret, resp);
+			return ret;
+		}
 	}
 
 	return 0;
-- 
2.39.2



