Delivery-date: Tue, 21 Feb 2023 07:52:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUMWA-00Da2e-AV
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 07:52:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUMW9-0004yj-1g
	for lore@pengutronix.de; Tue, 21 Feb 2023 07:52:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K6C/WayTEPD26w24UOBHEw5EF8tQJZqr7hE9URsZ718=; b=VbYzvRu1yd2RxwwR1PWzxy+HqL
	bUiv+3vCcQlwlKMG49MR77DwFIsGExXpqy74zfFt/q8hDbugqU65iHfohhryRvrOE0NUEwkigs4FE
	bqda4p2YWAzni5b2vcS6MeaOt7zcoCun+qIAXRFQOQHWDwadRv9b8hugEmn02An43gGLB/m95H/gd
	VwXOpPNJKveZ43Iljp2rkCOv1zg4++rt/0dzT6d/4Sfnlc6n3aUCEzHXhXyRYH53fhpNK4pl9Y2wb
	L93lo6YYmf7qsoEDAq9VBvTIK0gTdyvovPg3GsQM0SLc9PrwwOiPTTnlmKpGL0aOJkD+sUt1lHWkM
	xEwkr1Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUMUa-006myp-Ux; Tue, 21 Feb 2023 06:51:13 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUMUV-006mxK-VO
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 06:51:09 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 6F6EF100003;
	Tue, 21 Feb 2023 06:51:00 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 21 Feb 2023 07:50:47 +0100
Message-Id: <20230221065047.1114231-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_225108_175158_A11C9535 
X-CRM114-Status: UNSURE (   7.13  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: fix linker warnings with newer ld
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Building with a newer ld results in two warnings:

    binutils-2.39/bin/ld: warning: defaultenv/defaultenv-2-reboot-mode.bbenv.gz.o:
    missing .note.GNU-stack section implies executable stack
    binutils-2.39/bin/ld: NOTE: This behaviour is deprecated and will be removed
    in a future version of the linker
    binutils-2.39/bin/ld: warning: barebox has a LOAD segment with RWX permissions

This is already fixed for the non-sandbox platform with a4b49c69c3ad
("Kbuild: link with -z noexecstack and --no-warn-rwx-segments"), but
sandbox has its own cmd_barebox__, so add the equivalent to the sandbox
Makefile as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index d5ba05ba866f..0f59e79e13e0 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -69,6 +69,7 @@ BAREBOX_LDFLAGS += \
 	-Wl,-T,$(BAREBOX_LDS) \
 	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
 	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
+	-Wl,-z noexecstack $(call cc-option,-Wl$(comma)--no-warn-rwx-segments) \
 	$(SANITIZER_LIBS)
 
 cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
-- 
2.38.3



