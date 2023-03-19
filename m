Delivery-date: Sun, 19 Mar 2023 16:41:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdv9h-006eaV-6T
	for lore@lore.pengutronix.de; Sun, 19 Mar 2023 16:41:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pdv9h-0001sr-7t
	for lore@pengutronix.de; Sun, 19 Mar 2023 16:41:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KG9nBAIg3oVPTspkxiXM7ANnvEHSANL87gh/9csqPGo=; b=IRb+AP2EwxhB6YR/blmlcBlI4X
	9O2vCK8erEtduscZIP3Fmv0uk/iCYSc8jHIQHn+cIKIEstjkTZIm5oBbWfPMzEyodf0rzE1z2e6tQ
	1dqd4xx3YBJ0dNeRpCp1oaSDFRHoBEDi9BbBpH43KVdE6ibQPVDOhJxPymbGazzlqvQahE7SPpL7n
	2qT3AoFwLqXGkOK6tnLVD1oUZS4JEYUhMWorXKXEkNjHuKcS3xKcXjfCsaVTSEv8Wi3u3x5LVAx8f
	09TmKr6ce7fGAw3pykypqlLLWOYY/G8Ky5jfsi9qBvBNnju5F2PP4AYb0JPMdJkHuibEItog7Q5dD
	6AkHl2Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdv84-006ws2-2p;
	Sun, 19 Mar 2023 15:39:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdv82-006wrT-10
	for barebox@lists.infradead.org;
	Sun, 19 Mar 2023 15:39:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 95C8461085
	for <barebox@lists.infradead.org>; Sun, 19 Mar 2023 15:39:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C638C433EF;
	Sun, 19 Mar 2023 15:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679240362;
	bh=0hxWbUNolyzgNtFEsfriKJ7BRBZayUM3vcmuaS9FSJ4=;
	h=From:To:Cc:Subject:Date:From;
	b=eRk76mWTkjX1j6EJ7BD6NaRj1fsC++N4IUEhxWyHcKBZYCteMps7/iC3BT1K1BHIg
	 2s+zNwqeTxiroKfJ1m8MK4+PuGGPLPz2DjwiDzzR7CjWDqoDgbpI9HAlESSNCQVY+p
	 khvMtslTlqknt/gnG7oblr5Hh8iXBJ5hYHGprNpNzVrfcLTgwPaCxSt6q9vKVIPjCy
	 h/21ycP96XFJGGBLUIz4H3l8f1BfOuFtfAQeEAYE4j2YOlhD8syBcXp/gb4pf5b4Uv
	 14ePgAMLZelh0qmPkQqgV/H0Mr5jUoekO7f/wvu6Bqak7f+8LTo7iRx1zwxqlc1raC
	 7BuxE3OyF9X/w==
From: Wolfram Sang <wsa@kernel.org>
To: barebox@lists.infradead.org
Cc: Wolfram Sang <wsa@kernel.org>
Date: Sun, 19 Mar 2023 16:39:11 +0100
Message-Id: <20230319153911.23811-1-wsa@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_083926_413249_31884180 
X-CRM114-Status: GOOD (  10.14  )
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
X-Spam-Status: No, score=-104.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: edit: fix typo in Kconfig help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Wolfram Sang <wsa@kernel.org>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index ec15f4e543..27769950d9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1383,7 +1383,7 @@ config CMD_EDIT
 	depends on CONSOLE_FULL || CONSOLE_SIMPLE
 	prompt "edit"
 	help
-	  A  small fill-screen editor.
+	  A small full-screen editor.
 
 	  Usage: edit FILE
 
-- 
2.35.1



