Delivery-date: Mon, 20 Jun 2022 09:21:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Bif-007qHS-Uj
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 09:21:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Bif-0001pk-VR
	for lore@pengutronix.de; Mon, 20 Jun 2022 09:21:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JcPrsa2/WevPqcJogmF8bkVNcliJvEajEpfySTV+rE4=; b=rgOJccS+A3gxPiGpoYvsxL1PtN
	nElIZ1euBHRTUgEloJbX/YUL3vcjQ6336HtU26EMpGZa3hcCStP2dFjL8WNpgLDCw0VKqWdVOb0iO
	WioXC+IbwYf49dSdDA2jHU3Q+/MX9c0WW8IfwUZthkQ2wgG5jtMpBGnQowDjNWSsVUwaWykPGh/kF
	iyRS2A0KwwHjP9rlvna7+JUYLfkSO/spLHOzwpNjv/7glgsKl3/TKC/tPvUsifSOMgSdbvG+Ainkt
	E408VqNvcPwBt0vSB2DcLFFJxn6i2YWoQ0oLfSnkpeK949hGBzNmAcMrIYPEiLxLo33IlDxxiiaDn
	zO3IFnvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BhN-00Ge1c-QB; Mon, 20 Jun 2022 07:19:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3BhJ-00Gdzq-84
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 07:19:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o3BhC-0001Po-QG; Mon, 20 Jun 2022 09:19:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o3BhA-001bBy-NZ; Mon, 20 Jun 2022 09:19:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o3BhB-0067tz-Cs; Mon, 20 Jun 2022 09:19:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Jun 2022 09:19:36 +0200
Message-Id: <20220620071936.1460295-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_001945_324369_4DE309A1 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] state: don't report error for -ENOMEDIUM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit 863a2251393e ("state: make first boot less verbose"),
state_load returns -ENOMEDIUM instead of -ENOENT if we detect
a first load because all buckets are zero.

This case is expected and shouldn't warrant an error message, so
adjust callers appropriately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/state.c          | 3 +++
 common/efi/payload/init.c | 2 +-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/commands/state.c b/commands/state.c
index e7cb9902f71a..56ef93b19fa4 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -53,6 +53,9 @@ static int do_state(int argc, char *argv[])
 		ret = state_save(state);
 	}
 
+	if (ret == -ENOMEDIUM)
+		ret = 0;
+
 	return ret;
 }
 
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index e2bddabc9a42..6976285fb3c3 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -359,7 +359,7 @@ static int efi_late_init(void)
 			return PTR_ERR(state);
 
 		ret = state_load(state);
-		if (ret)
+		if (ret != -ENOMEDIUM)
 			pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
 				ret);
 
-- 
2.30.2



