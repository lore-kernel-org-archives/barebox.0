Delivery-date: Tue, 21 Feb 2023 16:25:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUUWR-00E565-CX
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 16:25:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUUWQ-0005MS-F8
	for lore@pengutronix.de; Tue, 21 Feb 2023 16:25:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=msMQHl3LR4xHd1XVvW6eJi8v/rLquYomC1jUz2mPXN8=; b=i86Fx/xoeP6Vyf
	Q7K4KL0pXo6ZNd0KDz8Z4hPkOIbAScE2yXdUxTMIBW4YAFKCbgLAZC1abUoBQxq6wRud1GtVB9O1m
	fSkWTYZdMAjFnxzzvxJINGQPrsrqCUqGl1U70QpRyq1Z5wn5K7HVUb3oyjU/rvKQCCuD0YREtX+pF
	MFB4tkG14EeVs/Q5/HHmYHY1e8weXthlBBV0mZ67qAtNZgRvAIruqpBDejWw8Xl5N1FMkBOdAGoaj
	XXQRcW1kGQVUyjkjXewheH0i63CZqMhQedVgOFkXzZ5NpyBQiMRAxCB4aSrsdixTdIZG2foPJiYG/
	RKNFfE0KsaWEDY8ov4lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUUVT-008ebg-EJ; Tue, 21 Feb 2023 15:24:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUUVO-008eam-DY
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 15:24:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUUVL-00056L-7t; Tue, 21 Feb 2023 16:24:31 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pUUVJ-006Wl7-DE; Tue, 21 Feb 2023 16:24:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pUUVJ-00CEwW-UA; Tue, 21 Feb 2023 16:24:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 21 Feb 2023 16:24:25 +0100
Message-Id: <20230221152425.2916278-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_072434_475643_A85B69E8 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: Fix fixing linker warnings with newer ld
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There must be a comma between the words passed in the -Wl option,
otherwise gcc responds with:

gcc: error: noexecstack: No such file or directory

Also cc-option only compiles but doesn't link, so can't detect if the
linker accepts flags or not. Use ld-option instead.

Fixes: 4e8713dd6e ("sandbox: fix linker warnings with newer ld")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 0f59e79e13..9d5a5d8c6a 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -69,7 +69,7 @@ BAREBOX_LDFLAGS += \
 	-Wl,-T,$(BAREBOX_LDS) \
 	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
 	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
-	-Wl,-z noexecstack $(call cc-option,-Wl$(comma)--no-warn-rwx-segments) \
+	-Wl,-z,noexecstack $(call ld-option,--no-warn-rwx-segments) \
 	$(SANITIZER_LIBS)
 
 cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
-- 
2.30.2



