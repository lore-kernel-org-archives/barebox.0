Delivery-date: Mon, 31 Mar 2025 19:41:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzJ8o-006eqC-1S
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 19:41:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzJ8n-0000xF-Ty
	for lore@pengutronix.de; Mon, 31 Mar 2025 19:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I5Q5IcUnqYgzoIKdXaVV9bI3WjaPCA2I1Qhh5nFRbiE=; b=eHPAnQ8AEbGI1Rj7rRAqJh/Q0L
	piK1YrMuv+U4B9G1vkb7qr/wd5hy40LZrO6Q+WY22Yat3lHCedn632xMpLOXIJBzrZJjgyGznK9q+
	aDWgP6BT8zWT/u9rUOqMVHDDvdI2ZC8eQs4e5ucfVwzdYiNsPPeFMora/mpN46fzWody3YnTMmtiv
	ZDMqKIVberFOJaTHJkZNiy1BSDgxHb1fpD8XAZYczy25RQFmSTAgBaNl/C1MOPTsl20Vd67JR8VOa
	8KQU8QrbDtDEye2txFaLVg/jQFPhlEFdcmRzO4HxKVixQ1hveMf8O1poYfc1/bBJNwq50x+QsW+d4
	kbkGsFWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzJ8F-000000015WW-3wMI;
	Mon, 31 Mar 2025 17:41:07 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzJ8C-000000015Vm-0RhX
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 17:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1743442859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=I5Q5IcUnqYgzoIKdXaVV9bI3WjaPCA2I1Qhh5nFRbiE=;
	b=XuEqIIFS9k/mGoLtSQ/WDMhgPwqx/tPjeItcv0qFaUdPCwzborCHOprQf6d8sy8ZIufeey
	RmNZ/iEkyNwWrhFpXHh7z9KVsZBM5ma+g6mvrTY448Ex/DkIdkxzoGDuaaTwUwEJZHy8Rs
	4tFoMXHkCsNuRE62E19SbfBJ/SuQJ7dcLrssSIuq3ByTyzGx/sysFDE8fZZfQFfPmV6EpV
	lF9U9x5SBo7iyNTAacKTG0fO5RRbkT8YfGJr7g/Hl1zmd90IkzKDxAVMY/VRCM9sCMvUyJ
	QMO0E1h0GBPBUEy2zoESMi++TKLdxnOA+VaNTI1wMggBM2okfa+MX+K84f+rVA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:7db3:a294:8571:f831])
	by zdiv.net (OpenSMTPD) with ESMTPSA id caa6d143 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <barebox@lists.infradead.org>;
	Mon, 31 Mar 2025 19:40:59 +0200 (CEST)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Date: Mon, 31 Mar 2025 19:40:49 +0200
Message-ID: <20250331174050.2606-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_104104_450791_15AC64E5 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] commands: edit: Fix potential out-of-bound access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The local lbuf can potentially be left not nul-terminated,
and the tab expension can potentially write out-of-bound.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 commands/edit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index fcf8ad90f5..3bbe60fdbf 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -53,14 +53,14 @@ static char *screenline(char *line, int *pos)
 		return lbuf;
 	}
 
-	for (i = 0; outpos < 1024; i++) {
+	for (i = 0; outpos < sizeof(lbuf) - 1; i++) {
 		if (i == textx && pos)
 			*pos = outpos;
 		if (!line[i])
 			break;
 		if (line[i] == '\t') {
 			lbuf[outpos++] = ' ';
-			while (outpos % TABSPACE)
+			while (outpos < sizeof(lbuf) - 1 && outpos % TABSPACE)
 				lbuf[outpos++] = ' ';
 			continue;
 		}
-- 
2.48.1



