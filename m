Delivery-date: Sat, 01 Feb 2025 05:00:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1te4fw-0070fb-1P
	for lore@lore.pengutronix.de;
	Sat, 01 Feb 2025 05:00:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1te4fw-0000ec-GT
	for lore@pengutronix.de; Sat, 01 Feb 2025 05:00:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Iv8R/QOHCzmYvkgTwsUgnCPfGRypy8emV9VgGx+dbwk=; b=tLcF2h5towbq6NMYyqDlToIR2l
	17PNCpoR7fg3xHSEE3FFBsDP5Fc36NKifOuCLF2sNotpfcVJMLMdltcos5IlfvEgQtcPCZjeqUXeZ
	bPn2CyF2K1U0cXg60KIsUwxjZWKY3hvqh6WJlIb31Bs7F8DYCtuK4+4YSJZagjqA9AzsYb7Ol3ti3
	JVXpa5+wbwyWRqRvX+mykRZnYBA0mMHLI+DvImfDjkW/jyKJBIo6VDIrc6r2bDnVxbcXNVThfraww
	s5PfRHxPvf8M5JCWuBy6V/wQ2nxdLV1OZ1cC1fhNkP9QRNqS2br99NlOvFqnR14MaECqC4G2imDA9
	LejHoIkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1te4f9-0000000BqwL-1kaU;
	Sat, 01 Feb 2025 03:59:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1te4f6-0000000Bqvo-2jDk
	for barebox@lists.infradead.org;
	Sat, 01 Feb 2025 03:59:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CAF3D5C5AE2;
	Sat,  1 Feb 2025 03:58:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 534E4C4CED3;
	Sat,  1 Feb 2025 03:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738382353;
	bh=NOLPGh37P3QJ4FvAmqZmiOTt3RUIRLiRctnatGS9Zxc=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=MiJw/GmnuVLegWlup1lyLh9zZ+d4pCs0w2CtOCSHFBn7Ka+mMvLKqDQvxkhkjLGrZ
	 TJaQV9dSK+Ro7X3P6bjmgh4M3qv/QPuA7LD3SWVizxV3Xl02eXKV5ogMv6sZRB0Yv1
	 vrie52drUF6Dqok2LpF53xGn6rrNTBiY+Y2+J19fmqcydkUyk57bmTsYXG+2lvUr7b
	 GxAPMHIZr24710EE99Z/cUROis5ljswrX17lrTnNArw/RyYlRUGgEXQgUwL/DPFlZF
	 BRftMbBVlxXDv5a2LK8jNJkevG6fBSq+qPh+7gyda8qLk8+BagbRzJxy/7rAjAFikD
	 Bz19lne1PKg0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F2B7C0218A;
	Sat,  1 Feb 2025 03:59:13 +0000 (UTC)
From: David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>
Date: Fri, 31 Jan 2025 22:59:08 -0500
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250131-hostname-fix-v1-1-8d7ae619fcf4@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAucnWcC/x2MQQqAIBAAvyJ7TnANsfpKdJDccg9paEQQ/j3pO
 AMzLxTKTAUm8UKmmwun2AA7AWtwcSfJvjFopY3CHmVI5YruILnxIw1atHbwflQGWnJmavrfzUu
 tH17sbo5eAAAA
X-Change-ID: 20250131-hostname-fix-5171778dd905
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Dgien <dgienda125@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738382352; l=1525;
 i=dgienda125@gmail.com; s=20250126; h=from:subject:message-id;
 bh=xhq+3Us3jV+l4WYQJZs4XD7JPkB7pB6UeKbnNdxDEBc=;
 b=piTPCB7bQwQvnVKV6FbnS2xB4f5sAVpzHhAblH70JHdeYyzL+3xCQtXEWxBpXcKOBAWPtEhdz
 UbvwgYjZ+cwBCfOK1d0ZtiS82DIsXPdN2L1rV8PZSezQ16cXYCo7Rml
X-Developer-Key: i=dgienda125@gmail.com; a=ed25519;
 pk=zPhfl/eH2iShpaIksvU8MCg11Il6Dx2oW7WYAzpKbo0=
X-Endpoint-Received: by B4 Relay for dgienda125@gmail.com/20250126 with
 auth_id=332
X-Original-From: David Dgien <dgienda125@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_195916_739222_1EB1796F 
X-CRM114-Status: GOOD (  10.84  )
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
Reply-To: dgienda125@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-106.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] kbuild: Use uname for BAREBOX_COMPILE_HOST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Dgien <dgienda125@gmail.com>

Adoption of Linux Commit:

| commit 1e66d50ad3a1dbf0169b14d502be59a4b1213149
| Author: Chris Down <chris@chrisdown.name>
| Date:   Tue Oct 20 10:34:59 2020 +0100
|
|     kbuild: Use uname for LINUX_COMPILE_HOST detection
|
|     `hostname` may not be present on some systems as it's not mandated by
|     POSIX/SUSv4. This isn't just a theoretical problem: on Arch Linux,
|     `hostname` is provided by `inetutils`, which isn't part of the base
|     distribution.
|
|         ./scripts/mkcompile_h: line 38: hostname: command not found
|
|     Use `uname -n` instead, which is more likely to be available (and
|     mandated by standards).
|
|     Signed-off-by: Chris Down <chris@chrisdown.name>
|     Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Signed-off-by: David Dgien <dgienda125@gmail.com>
---
 scripts/mkcompile_h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
index 49aadc153d44995c23ccc5bc604c2370384387ae..0cc6aa8f0585767435fc6c8537b878925a81a691 100755
--- a/scripts/mkcompile_h
+++ b/scripts/mkcompile_h
@@ -46,7 +46,7 @@ else
 	BAREBOX_COMPILE_BY=$KBUILD_BUILD_USER
 fi
 if test -z "$KBUILD_BUILD_HOST"; then
-	BAREBOX_COMPILE_HOST=`hostname`
+	BAREBOX_COMPILE_HOST=`uname -n`
 else
 	BAREBOX_COMPILE_HOST=$KBUILD_BUILD_HOST
 fi

---
base-commit: b2a15c383ddc4f31792e48e395a425e5c3658dd1
change-id: 20250131-hostname-fix-5171778dd905

Best regards,
-- 
David Dgien <dgienda125@gmail.com>




