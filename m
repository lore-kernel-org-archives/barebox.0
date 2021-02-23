Delivery-date: Tue, 23 Feb 2021 21:26:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEeG4-0002kZ-OG
	for lore@lore.pengutronix.de; Tue, 23 Feb 2021 21:26:12 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEeG4-0004Oc-0Z
	for lore@pengutronix.de; Tue, 23 Feb 2021 21:26:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xmsCyG523LghD1E1ltSCnsx/9ujSsaPly22wPEk70TM=; b=zDOQ3imbWv+L8V1E3bEU+uxNOh
	msCl3rYbs+ucNWzJQw+MNr3fH/hqGLyht2LNFnz5+SPzJLFKKLgDdA8yIj6XUPssPYRYM5CkgnKEA
	FLPYd2m1ZxQTEoR1FOJ/VtyG1hWeGfkpaK4Ztm6UDX3crz/nbtwZY0cSYg76i3gLxA7/A8sqECYgK
	zcwqxzKpyE0DDse6WznNRSwwmeIUg58/mM7qD3/jZA7JxPK5eSTdYUOySGknG0FOkZfJ4ajeVvHNF
	zWoqo/fb+nyv7SZDQ8bRyFDfLhF6Pze2xWGRyYtitHHJJefiATrYHrdWGDcslcK1KYP3AS/Qo8CgR
	C6hwg0Og==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEeEX-0002jz-Ud; Tue, 23 Feb 2021 20:24:38 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEeEV-0002jD-6r
 for barebox@lists.infradead.org; Tue, 23 Feb 2021 20:24:36 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4DlVrs6MnyzQlY4;
 Tue, 23 Feb 2021 21:24:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id LdS7XkXdpSbH; Tue, 23 Feb 2021 21:24:28 +0100 (CET)
From: Thorsten Scherer <tsc@scherer.tk>
To: barebox@lists.infradead.org
Date: Tue, 23 Feb 2021 21:24:01 +0100
Message-Id: <20210223202401.35896-1-tsc@scherer.tk>
MIME-Version: 1.0
X-MBO-SPAM-Probability: ****
X-Rspamd-Score: 4.65 / 15.00 / 15.00
X-Rspamd-Queue-Id: 4C86717CC
X-Rspamd-UID: d03b90
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_152435_377681_57EF2E16 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Thorsten Scherer <tsc@scherer.tk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: devicetree: include firmware in toctree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix Sphinx consistency warning.

Fixes: fcdcb8177 ("documentation: devicetree: migrate remaining binding to reST")
Signed-off-by: Thorsten Scherer <tsc@scherer.tk>
---
 Documentation/devicetree/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index 8c47d033f..ce62ebe10 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -108,6 +108,7 @@ Contents:
    :maxdepth: 1
 
    bindings/barebox/*
+   bindings/firmware/*
    bindings/leds/*
    bindings/misc/*
    bindings/mtd/*
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

