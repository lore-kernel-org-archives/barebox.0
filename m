Delivery-date: Fri, 14 Mar 2025 16:17:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6mo-00E3T3-10
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 16:17:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6mn-0003aQ-4x
	for lore@pengutronix.de; Fri, 14 Mar 2025 16:17:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELIFNDGVMtpa0ifoeUTdrS5FaTa3zX1R8R39ndDSA48=; b=rxv0kr4B0F+qi8EPEa3xMvCW8i
	N8fDLKF/DupEbnnbeB94g5L2vjgeMmrHMfwNFHeO7DN6U2FXurku5WkF5p8m+8Zl+bj2Ci3IXSxu0
	ek8vtPjHRfhfptP3GSBDRDXLui+bLHB6L6xDqymfYABrbFsgU+hsyeo2qnkW2C7fn+iLKoLMdO+j2
	bUGmUOxz7vuYD8TuGdI15FkgGbZL9MrjHKCHCgRWqRLxUEIbEdnbEjtQFwiMLVrkl5IYelp6yO55l
	xcxXSURPZ1aeOVK7Fguvn6UFWVOyJwZ4wIDd0qijfjGcf2NDU7wTkh8ViCvjt7IE9z/FU1/sfZZVH
	jEG5Ubyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6mQ-0000000EWsS-2dWv;
	Fri, 14 Mar 2025 15:16:58 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6kM-0000000EWQz-3IUH
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 15:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741965287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ELIFNDGVMtpa0ifoeUTdrS5FaTa3zX1R8R39ndDSA48=;
	b=ZEdeTucYf8di/jgbx2pdE2URxPVPqK/Nht4vYFVa+TUxgmR7CclwxlkY1f5veqpj0yubi2
	c0ISFte8n5Sdwlj4mGqjHP2ZQMd+YU8XC+eo/P2PMsePL3EAybdWpltveM2BuKSgpCCHPG
	tfnY1SocaRc6hhT7v+7gezdYyNr0TbyDAvtkzGkxi9pAfcrs1mxNdE/UYdv+88B61gcyk8
	TcLxiEVDTOwuqROHqQrmtCVTRfWzGt0ophJpEtTOSl7UOYrRwZCZMk2CMjUVveW51FgbJg
	YKiAGFpcCZOFTGKn6RjtmF6xC8ByLAlHADhXYypFdB3cPz8uUPWeqb/vx/YOIQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 93f9d3c5 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 16:14:47 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 16:14:41 +0100
Message-ID: <20250314151441.23223-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314151441.23223-1-jmaselbas@zdiv.net>
References: <20250314151441.23223-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_081451_116427_4AC54E97 
X-CRM114-Status: UNSURE (   8.73  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] sandbox: sdl: make window variable static
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

the `window` variable doesn't seems to be used outside of this file,
thus doesn't need to be exported and can be made static.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 arch/sandbox/os/sdl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index 0c31b6ce87..e4c6f1a587 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -18,7 +18,7 @@ static void sdl_perror(const char *what)
 
 static struct sdl_fb_info info;
 static SDL_atomic_t shutdown;
-SDL_Window *window;
+static SDL_Window *window;
 
 static void handle_sdl_events(void)
 {
-- 
2.48.1



