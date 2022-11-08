Delivery-date: Tue, 08 Nov 2022 11:51:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osMCK-001IKK-FB
	for lore@lore.pengutronix.de; Tue, 08 Nov 2022 11:51:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osMCJ-0003UO-8C
	for lore@pengutronix.de; Tue, 08 Nov 2022 11:51:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=waJH5YJEAWcuzkj/aIIFv/xmAspu3CKhJXeNk8b73EM=; b=xP2wyvwdiXYc63
	o7WCfuL9Ncvhn0LWGkV7y+l2YGVjE5uJvZRlgNNaPrQcj7c/IizIceSjte1Ad5IDsmWe7otZEDTdK
	Bdupa5MSZwY1WvfZIm9HmB8TrFi585tyMkDrXNqdddBC17sijPTVNCPP7HlUasCjFgLN4mKq8S2xk
	x17o0jDkzRfmFDCBHMTaQTm1OiBCLjYBL3y4geVhyCKICvjjpBrnK1q77KwYbAyCPQPNdW5sA4g48
	r7x9yNUQj1ze4rfSQ4JbMTd3Op6FsK+uMOz2Z9Pa0RsezqkurP/8ednBpciEnpCfk3P1NqBFfQbqz
	4HjywVLbglCO6lctg5TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osMAi-004fhS-Kg; Tue, 08 Nov 2022 10:49:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osMAe-004fgK-8a
	for barebox@lists.infradead.org; Tue, 08 Nov 2022 10:49:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1osMAc-0002v6-9l; Tue, 08 Nov 2022 11:49:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1osMAa-0032IS-Mi; Tue, 08 Nov 2022 11:49:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1osMAa-0084VL-Ts; Tue, 08 Nov 2022 11:49:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Nov 2022 11:49:26 +0100
Message-Id: <20221108104927.1922424-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_024932_327499_47B88024 
X-CRM114-Status: UNSURE (   9.53  )
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
Cc: afa@pengutronix.de
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
Subject: [PATCH 1/2] Kbuild: create LDFLAGS_common
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The same linker flags are passed to both LDFLAGS_barebox and LDFLAGS_pbl.
Instead of duplicating it create a LDFLAGS_common variable for these
common flags.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index d7f1e3779a..12882ef4cf 100644
--- a/Makefile
+++ b/Makefile
@@ -453,8 +453,10 @@ KBUILD_CFLAGS_MODULE := -DMODULE
 LDFLAGS_barebox	:= -Map barebox.map
 
 # Avoid 'Not enough room for program headers' error on binutils 2.28 onwards.
-LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
-LDFLAGS_pbl += $(call ld-option, --no-dynamic-linker)
+LDFLAGS_common += $(call ld-option, --no-dynamic-linker)
+
+LDFLAGS_barebox += $(LDFLAGS_common)
+LDFLAGS_pbl += $(LDFLAGS_common)
 
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
-- 
2.30.2



