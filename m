Delivery-date: Fri, 14 Mar 2025 22:34:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttCfm-00EAX7-2c
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 22:34:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ttCfl-00041s-Ml
	for lore@pengutronix.de; Fri, 14 Mar 2025 22:34:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pqJnIxNOQPB8e1KKEVMzu1rlGKahbpmIyTJTWR95CLs=; b=FNo3qKEvwq2USTo27CCSIpGOcr
	BuS99hKriGCn42V+7REywwiK4sReonDhMKAQI4Z/JQCTyX6XAf9IQf9dnbdYfC5kGUrt1JGv7+EBR
	NiYEPoeTFXY24j1E3GKL9OkeldL3kRpR+YwUBqtXVI8UAwcVRhKTJrcT+cECQiiLUJ1R51EushpON
	q6R6VwdZMoy+kTc56LvziwkpVEvVlj3vJTlbJvN9Mjw+nF2QXyG6dmxrpWIvVQFjWoFcTB269FYG4
	YyaHvn+pjSPTGhU5RawbU+S00knJjkmycg3dl9gewYSAzyEpt+dCO0sR+AeeVnHhwWqiyoN3NEUVh
	DoAO1JZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttCfD-0000000FJT3-2QW1;
	Fri, 14 Mar 2025 21:33:55 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttCfA-0000000FJSa-1gLY
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 21:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741988030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pqJnIxNOQPB8e1KKEVMzu1rlGKahbpmIyTJTWR95CLs=;
	b=ddEnQCmdv28KAG16eJchqE/UoA4VDSWah+keGJj0bBG61QC8cq2HIUAsRcd1VrCtKScp+z
	OK4lawy/VC7SGy9No52+OBva2vFsQ0KzMktEfZeCQCZZ5u9K9ITMO9zAjLvoDJCQ7FvuFM
	Cor+YC/jp0JD0zWLNm5jg4zj30x03WHqbCGqg4j85jeIu/LGlXR5JfRC4CYV+J1f8mXJEW
	uSt422iHUBs5LEgq6qrpt/NqXaMvh7WNKfoViN5/fFv7eLp+69XnOSO8jARq3SKCAu85H0
	JJllmd+WZbjfx/AxwnpJv242U4q6PQgvitjxZ5z5uBT5Hq9gCxcaL8ASJja06A==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 4c76d270 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 22:33:50 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 22:33:44 +0100
Message-ID: <20250314213344.12335-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_143352_731883_84FC26D2 
X-CRM114-Status: UNSURE (   7.89  )
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
Subject: [PATCH] commands: hwclock: replace strncpy with strlcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strncpy could leave the rtc_name buffer not nul-terminated, strlcpy will
always nul-terminate the dst buffer.
Also replace the hardcoded size with sizeof(rtc_name)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 commands/hwclock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index c594e070ac..33829e4118 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -95,7 +95,7 @@ static int do_hwclock(int argc, char *argv[])
 
 		switch (opt) {
 		case 'f':
-			strncpy(rtc_name, optarg, 16);
+			strlcpy(rtc_name, optarg, sizeof(rtc_name));
 			break;
 		case 's':
 			memset(&stm, 0, sizeof(stm));
-- 
2.48.1



