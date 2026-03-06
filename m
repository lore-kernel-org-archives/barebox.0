Delivery-date: Fri, 06 Mar 2026 11:21:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySJO-008e2q-37
	for lore@lore.pengutronix.de;
	Fri, 06 Mar 2026 11:21:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vySJP-0005Km-Aw
	for lore@pengutronix.de; Fri, 06 Mar 2026 11:21:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D0Wz1xig2ssy7aZIaOHBaw+NNpSpVceAVSHTWlrMZyo=; b=QDpQRaSwE8Yj+Y6/8ghjYFL2vv
	9/EhN56hHRXZ51VOIQrmA8WxT4FbUer7Y1NPUnPcsRT5PMpX7lbavSRf/6Tk9CShH2MoSSXKZOmf9
	rcsc9OFSLpBShxi2fftI+NlMA6haoyVTeRatKv+6wZgPE4jIkcxyrfphKmdjNzRvPeNESoi0YS7Jg
	PjFx48dwIwhUywyGZihxFc9+7q9pReY7sNLXzuePvUrZouxVLKdXLmfFcAwgmPY9FWCC22L+H9UgV
	Jj9WdJ2uqzBXvzL6Hd8NbaM+OsO3EVY6wdjpU1Xk8x7gjeTHKj6nMItWzNVwqR4ujtkh8xuCKxwnz
	jed8X1+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySIi-00000003R3w-2gE3;
	Fri, 06 Mar 2026 10:20:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySIf-00000003R3Y-31oH
	for barebox@lists.infradead.org;
	Fri, 06 Mar 2026 10:20:55 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vySIb-0005Ah-L9; Fri, 06 Mar 2026 11:20:49 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri,  6 Mar 2026 11:20:12 +0100
Message-ID: <20260306102038.4065007-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_022053_784242_9D22D0DE 
X-CRM114-Status: GOOD (  10.96  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] i.MX: hab: write srk lock with hab command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The write_srk_hash functions already support the flag to write the SRK
lock, but it is never used in barebox. To prevent an attacker from
calculating an SRK hash that has the same bits set as the current SRK
hash, but with maybe more, we lock the SRK hash to prevent turning bits.

Writing the lock twice will probably result in unusable garbage and the
hab command itself already is written in a way to write the complete
hash and not parts of it.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 commands/hab.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/hab.c b/commands/hab.c
index 8ae943a4c8..b8ef770066 100644
--- a/commands/hab.c
+++ b/commands/hab.c
@@ -14,7 +14,7 @@ static int do_hab(int argc, char *argv[])
 {
 	int opt, ret, i;
 	char *srkhashfile = NULL, *srkhash = NULL;
-	unsigned flags = 0;
+	unsigned flags = IMX_SRK_HASH_WRITE_LOCK;
 	u8 srk[SRK_HASH_SIZE];
 	int lockdown = 0, info = 0;
 
-- 
2.47.3



