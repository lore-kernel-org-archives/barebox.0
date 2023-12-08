Delivery-date: Fri, 08 Dec 2023 15:08:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rBbWa-008ihs-39
	for lore@lore.pengutronix.de;
	Fri, 08 Dec 2023 15:08:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rBbWb-0001jQ-1Z
	for lore@pengutronix.de; Fri, 08 Dec 2023 15:08:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ak4hk4QT7LMsgvq63Muux8Aj0tayf9nSneGMtxqIEjU=; b=veUvuTSYWZWRdMpHP5JLndOD/3
	CtnWGkBG3c3uiul82PTAkWt7go59CZPD3gLcw/2JXDvp5xPpZdwErS2IFk3jR6ASwn49Yzv606bUZ
	MlXRYqjSVAcHB1u+Hl70uIhdIGz6gbL8PB3vRDrWPDLBB90N8h8+V0V6xMTrnH0Xp/scpjQXdCre7
	DrQJSioWl6rHh0L1AVhpocufYqkx/b0UHFkKcQoC/T1xktdeV/ahod9hASFYQFsOtHyjFrCxZRoqd
	XzyS0vS+hmKjMZkaKfSoEhm8USkXs0iuAB5qnsPYyX9Pt6FFrJ/S12fjKgqzzEqNJlStLBQXuGjs3
	wuD6wbtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBbV4-00FjT4-2c;
	Fri, 08 Dec 2023 14:06:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBbV1-00FjSW-1h
	for barebox@lists.infradead.org;
	Fri, 08 Dec 2023 14:06:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rBbUu-0000dP-AU; Fri, 08 Dec 2023 15:06:32 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rBbUt-00ERFV-UC; Fri, 08 Dec 2023 15:06:31 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rBbUt-008LGq-2j;
	Fri, 08 Dec 2023 15:06:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 Dec 2023 15:06:30 +0100
Message-Id: <20231208140630.1986278-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_060639_588751_11BEAC1E 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fastboot: sparse: print descriptive error on overflowing destination
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fastboot flash of both regular files and barebox update handlers will
print a message if the file being written doesn't fit the destination:

  barebox update:  "Image (%zd) is too big for device (%lld)\n"
  fastboot:        "write: No space left on device\n"

With sparse images however, not the write will fail, but the lseek to
the new offset, triggering a cryptic:

  "writing sparse image: Invalid argument"

Let's improve upon this a bit by translating lseek -EINVAL to -ENOSPC,
so we get:

  "writing sparse image: No space left on device"

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 65d1d30f9092..261283d50a3a 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -598,7 +598,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
 
 			pos = lseek(fd, pos, SEEK_SET);
 			if (pos == -1) {
-				ret = -errno;
+				ret = errno == EINVAL ? -ENOSPC : -errno;
 				goto out;
 			}
 
-- 
2.39.2



