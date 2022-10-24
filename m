Delivery-date: Mon, 24 Oct 2022 08:58:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQH-000MrP-41
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQF-0008GY-SO
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=21GrHSUtrHSbyej1YtbuCCoz0vCJ1mmhP/HkED67s5Y=; b=YaHCvzfT6DNdTd2mAgaH0G1iQK
	wXpLJScHC8Lbmg30QklEb/tR/VA3ePv/BGgDcHDsTfqIovtl+W8SZvOG3LEMH3RVrfiwHonNY2pMJ
	XR7caj0RkSskVOHYrpW/xfFNVFvZBP8C2ofXvywZW34eod/yxUAJ4wcoVbE+YvuzwZSjJChuI3OHg
	gaYXrQq6VnSZOOgTvD1vNg9bMLehGM8TKyMVLQdgAEWXQl408B73j/IYQWaKEKK2+HBqkyYcKNEY0
	7X7Mchs0ge8MneV69s7P908YJ1Wipj7J09lwAmg4vRbNKEoNi/fMDWM/OABRPWj/yfsKgggNYqRSR
	iV2Eu0xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrP3-00HMqW-3W; Mon, 24 Oct 2022 06:57:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOk-00HMiQ-UO
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qY-JQ; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0003ro-Ou; Mon, 24 Oct 2022 08:57:18 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567N-Ia; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 08:57:11 +0200
Message-Id: <20221024065716.1215046-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235723_020204_C60AFB2A 
X-CRM114-Status: GOOD (  10.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] pbl: have linker define __pbl_board_entry alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We want the board-specific entry points to have control over what code
comes first. So far, we solved this by setting the entry point on the
linker command line and doing the early setup in inline assembly.
As __attribute__((naked)) is not supported for arm64, we'll move there
to out-of-line assembly and thus we'll need a way to portably reference
the board-specific entry point. Define a new alias that points at it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/Makefile b/images/Makefile
index 218a24ff1ddd..aa5814710f28 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -59,6 +59,7 @@ $(pbl-lds): $(obj)/../arch/$(SRCARCH)/lib/pbl.lds.S FORCE
 quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS_pbl) --gc-sections		\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
+		--defsym=__pbl_board_entry=$(2)  			\
 		-T $(pbl-lds)						\
 		--whole-archive $(BAREBOX_PBL_OBJS) $(obj)/piggy.o	\
 		$(obj)/sha_sum.o
-- 
2.30.2



