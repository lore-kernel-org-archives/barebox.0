Delivery-date: Mon, 24 Apr 2023 13:57:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqupL-00FXEJ-1y
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 13:57:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqupK-0000rG-Ti
	for lore@pengutronix.de; Mon, 24 Apr 2023 13:57:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E/h19bX37WjaKYJGSIZfZZRtmScwg34j0WFMOtgeGGc=; b=VkvMGFpdORkfScM6ui5KYEckZV
	nHGloqiI1AJt4rR0CwyKECnJr8Ry72M8GOBKfmikqw3ckG0iWMN098qk4Tl0lFZSA4d3BfzZTT7TW
	fLvD0AiK5Kw63lUwi8pM016mSf0XDwPTeJeAqYMrqA89W5td9xEVEATBdrbzRrY6jYlBu+lpUcLmt
	kgADh0ue4GHyVL8CpRnV5J8yun9VECOlXP53OCi0KU/6emq/cntJHCQmDvvSD5gDJGg2n45YHKaRR
	JQYUc43T69wv4Xj0Hym5w6IKS94wojRFo1BO8VisNDkRrzhYHG8EFoKJhl/pPGFjId5pBt966oPlA
	vKQex1nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqunl-00GF8C-1i;
	Mon, 24 Apr 2023 11:56:13 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pquni-00GF75-0W
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 11:56:11 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 68508FF811;
	Mon, 24 Apr 2023 11:56:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 13:55:47 +0200
Message-Id: <20230424115548.114858-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_045610_346867_63EFB6F3 
X-CRM114-Status: UNSURE (   6.32  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] test: self: printf: compile test with -Wno-format-security
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For testing purposes, the test code uses a variable for the format
string at places, which -Wformat-security doesn't like.

The printf test was copied over from the kernel, which sets
-Wno-format-security globally. This may not be needed for barebox yet,
but let's set at least for this one file.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 test/self/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/self/Makefile b/test/self/Makefile
index d55d9133be23..98ebd1fd66c1 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -3,6 +3,7 @@
 obj-$(CONFIG_SELFTEST) += core.o
 obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
 obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
+CFLAGS_printf.o += -Wno-format-security
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
-- 
2.38.4



