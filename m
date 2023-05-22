Delivery-date: Mon, 22 May 2023 07:31:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y8u-009JJN-Qd
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:31:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y8s-0003vN-Fc
	for lore@pengutronix.de; Mon, 22 May 2023 07:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WF26nIY8qB2mcBHAnS4TR+C4dN25sp7deYJrZg07gc=; b=n7y+S4fUa1zOebDcrpPN5ZgzbI
	0cs0nZvJ1R4Cv4urZLFT7BAk/S0sV60XRmDnKyZSny3mE7F87XbxeQLnnJefJpnJaW3neHYzzCMMc
	oyuQ+UtVD0tWYSgNv0ARLQuuQQrB3ANALk7mX13MpnOWCzk1KTDkZP2K0uH3CkACPsvwMvuJCt874
	9gFnzxE5uub24zv3Soj+7M6yUe3ANz0w7Dx23ProovtOgF0pnTEroHx3AgULnkfY+5W1af9yARPhs
	NFa1rIq0cV7fc7VUEDTsy1yaXo+2fTPMa4GAT/OcnqXM7nwhaIVIsc4ZiTJ6+iIUBN71xqPMlfRij
	O+ZlvfIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y8E-005PkR-33;
	Mon, 22 May 2023 05:30:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y88-005PgL-0p
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:30:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y87-0003V0-23; Mon, 22 May 2023 07:30:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y86-001vws-D8; Mon, 22 May 2023 07:30:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y85-004MSB-53; Mon, 22 May 2023 07:30:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:30:43 +0200
Message-Id: <20230522053044.1039572-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
References: <20230522053044.1039572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_223048_290609_00730FDF 
X-CRM114-Status: UNSURE (   9.75  )
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
Subject: [PATCH 6/7] crypto: sha: reorder struct sha*_state into Linux order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incoming Kernel code expects state to be the first member and uses
variables exported from C to get offsets for the two other members.
To import code as-is from kernel, follow suit. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/crypto/sha.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/crypto/sha.h b/include/crypto/sha.h
index 17a489bd4a8d..b01d74cd3334 100644
--- a/include/crypto/sha.h
+++ b/include/crypto/sha.h
@@ -67,20 +67,20 @@
 #define SHA512_H7	0x5be0cd19137e2179ULL
 
 struct sha1_state {
-	u64 count;
 	u32 state[SHA1_DIGEST_SIZE / 4];
+	u64 count;
 	u8 buffer[SHA1_BLOCK_SIZE];
 };
 
 struct sha256_state {
-	u64 count;
 	u32 state[SHA256_DIGEST_SIZE / 4];
+	u64 count;
 	u8 buf[SHA256_BLOCK_SIZE];
 };
 
 struct sha512_state {
-	u64 count[2];
 	u64 state[SHA512_DIGEST_SIZE / 8];
+	u64 count[2];
 	u8 buf[SHA512_BLOCK_SIZE];
 };
 
-- 
2.39.2



