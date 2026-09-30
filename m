Delivery-date: Wed, 30 Sep 2026 12:17:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBrNZ-0081Z7-1M
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 12:17:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A36C1200231
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 12:17:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lIKDR+tQ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="DDxC2Vq/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="D/EY9J4Q";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790763457; a=rsa-sha256;
	cv=pass;
	b=MzGontfPYmpMiX2GO7inz5Y8qiosaLWAWeJ4c+Rl502HBYQmJ/zWEn/K2YFc4e/3e/BbJ5
	ZTuaRnn+t0O99EPvnTVAZmYfyOeimaF+MuL3Hl8FOh1orffavR2I2R7oepxBzST+O0LSxD
	A3nzpI0MDgfYqsLReYDANp2yjvEuyc3CqbNNrUBkwWNSLPqZm0val/m6afe0afFzVuc6QT
	0hXu8RLLps369SO2zFZQpbyMu/jDo3IDcDOU5lFKlAJ4FN957Bq+An2TguhMV81is8B/Yg
	o5L+KZK7dd74kiNEQ9tMPdP09O64KLCrAvN7ugFdYGOfJZHVWhkplrjEauwEPw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lIKDR+tQ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="DDxC2Vq/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="D/EY9J4Q";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763457;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=YIrVU4uZHivAOkAbpOt+G/+Ozewgw1b0rWHAYlUhq10=;
	b=W/2d9VdTJMnS3TshX0+i5GQ3gANXw8/VK1T+mTG0ZQpQCcQVmKpfaBbaRV+PoFSBD3awOa
	S6fPxK6rxf++9xAvjcJAfsr5ylKN2e+LL0ONOw7myASRq6TWx/FDdLe/UxaZ6IUD8vCv+I
	29zG5oq44bTJSnBayB03SVLJ4S9mxmNC3FXeraN2tSnTPrHJfiSa2AToLckYK41ZN32lA0
	Rf+jers2gJiyCgSbw7bCiGROlDMXSsXyCOeWfqTxNtl7Y6j/kZGRTt258w5CNGwKqlj9K3
	CeJ02c60vTIkIWitFwyVmr/z85J/LR1hzI34VlfdobK+e2lf4zvh0HBDVFt2IA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YIrVU4uZHivAOkAbpOt+G/+Ozewgw1b0rWHAYlUhq10=; b=lIKDR+tQX3nOsF3PDU2Ea/DbpG
	MHODtJ9ouhJ4nDyUbzXLRyWyzQHhEH7l23k7UK5OsFp8Cq1c6xgD8M902ikc+t5WPbYNWf6b+DowP
	VK4bVYQSRoV1VxL2MjOTNjvGs5aVbvJGam7JhCld06w84U4bHr8ZqhDrwEpevV1q+1LWfgxQ9gacF
	mIjEU7v3tjgTJfZcOrnyhBea/j4qSubJbG7oxj/554L9UWkYUgXEgiEYND3PLnkts+r02cFUO+G4o
	DfxwDnOV05JRCVu/eg4bFmL7HW+IndEy9RoJqemUKgYO9YsqQ9lVnBamfXb75wC/AotCcHNQcYkce
	Bz7Bk7ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrMF-00000005i3i-3imU;
	Wed, 30 Sep 2026 10:16:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBrME-00000005i34-3dTX
	for barebox@bombadil.infradead.org;
	Wed, 30 Sep 2026 10:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YIrVU4uZHivAOkAbpOt+G/+Ozewgw1b0rWHAYlUhq10=; b=DDxC2Vq/EIJ824nzwRp25lZphH
	hlKxXYLJ9+Uw5PK2u9jFk2YPkjsV0Ke1HUt4kBUQkFDVV/Vkkw3sSXrRn6fVvmgSpgQwf/NSwcKXN
	TLvX9Rk82bDz4ZYDa4meN6zklkOKF9SHyRXxQuaG95Png9pocVZKHfVvsE707m8mRAktTOBw05vFv
	4NGzdo3WP+o91lX20kmaiqy0qYAoxWB15UiHEuEUHHG9AD6kL7krhe/tZ7BaoC2Ug9v5oHXPAaSjM
	EN8TJZkJEnnIdHJ6QfHxusrgUEZ+5aF8kfiDeWI1/lLZwuwZsaodk3/Ca+254qYkabjZtZl2sSOne
	UpT41/Yg==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBrMA-00000003dN2-1zla
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 10:16:13 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0875F201CD4;
	Wed, 30 Sep 2026 12:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763368;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YIrVU4uZHivAOkAbpOt+G/+Ozewgw1b0rWHAYlUhq10=;
	b=D/EY9J4Q/CLKe678zMZtkD+P3dWxgW6CrwUhBsveOwfzVxqksjaxJjiWdTAfoI1CF8QUUw
	x7dMAARxhe+Y5k18ERVKsiv+V1aG/5k4V6f2ZcS7pBBcGgpyi7tQbkMwQAfICH6I3X56lf
	5vLsoIzIRZfmEuXx4de/g0Bq3tLtH3ruC/TB8i1RhXOdiDEj8tLg/sqiqrFkyXNZnH9Jkx
	61qHF8wrfwj8CV3Ay81z0J2EC9fNiek65W6zf3CnPGetdacMhaL0FgWhKvmi3mcREXuwr+
	8vb4vzmids7if9sKzK3IqBq6qfvJpmvX/ilJYQxImBUaaffZGKchzwgus6kc7Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790763368; a=rsa-sha256;
	cv=none;
	b=BwR2oFkdvdKp3e+k5GaQ9aYMUE0MWFJrCd0vINxTXX7oRc5OgNNaDZfj321gPMKXrTAHiR
	G0eZMHgAFNCqhA2UgO5ELgxNHFuoPvJ2RpicuoxG+OW7ev+rluMKYbkcLfEAu//1ABP4+l
	AL1UZvKqKYuyrf2hUycllPeMuO3bcE24ZemHYPgAhxfTLq45Kzv5QbbUnOqfg/Y1UE1PEA
	1S7m8XSeTvLA/3NzeK95DwtH0POF7HMOcIg1IYaUZQh6Oty2tWVTfGO2yI73Kz9RBB9VR2
	DdHpr2bMW34cMRpUveS+lboTTaNSep9/js+KzwsF4xtEIw8DfLCFisRBaiMnng==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790763368;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YIrVU4uZHivAOkAbpOt+G/+Ozewgw1b0rWHAYlUhq10=;
	b=foKtk6RDunry82/TTudRRFb32f91z2I0jYQzISjDgwJZ0wWtaQU9frRoxOv3y152jVRMKV
	JNTNz4VETj/RKYcPgDELjBatdA98Q93IrUe0OXlLZPLRcJ4ubnBxRrzVH6F8riEDWFAbOA
	c4/7WNa+vMiJtponWFpHZX/P/+s1zddnnQXNazHVTi2PIcs+BR3KGvGjHZfNVBJL38HD5M
	2MV2fr+4NQZHVWSasHpA06LS9rzGekIX/luoJ5+cQtcad7SYG3uXkgiTXNCcPhWCOkroGm
	9YxRVMtftye6TJDL7f9RPzNygnHQUrtQZSEQp7BrhEdZqdVbwmYweFwTYE/vww==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id DDBD374243D;
	Wed, 30 Sep 2026 12:16:07 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 4/4] clk: imx: pll14xx: hit 393216000 and 361267200 Hz exactly
Date: Wed, 30 Sep 2026 12:15:56 +0200
Message-ID: <20260930101606.2097864-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
References: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_111610_915925_FD53CEBC 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The table entries for the two audio PLL rates only approximate
    them: they program 393215995 and 361267196 Hz. Linux commit 72d00e560d10
   ("clk: imx: pll14xx: dynamically configure PLL for 393216000/361 [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A36C1200231
X-Stat-Signature: wytdua3bcke8iw9671iu77seex14jkwb

The table entries for the two audio PLL rates only approximate them:
they program 393215995 and 361267196 Hz. Linux commit 72d00e560d10
("clk: imx: pll14xx: dynamically configure PLL for
393216000/361267200Hz") dropped them in favor of dynamically computed
dividers that hit the rates exactly.

barebox has no dynamic rate calculation, so replace the entries with
the equivalent hardcoded values that I had listed in the Linux
commit above.

This is visible after boot: Linux finds the requested rate reachable
from barebox's dividers by adjusting kdiv alone, keeps them and ends up
a few Hz short, whereas after U-Boot, which doesn't touch the audio
PLLs, it locked in exactly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-pll14xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 939320c0590f..3390a3ffc754 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -64,8 +64,8 @@ static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
 	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
 	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
 	PLL_1443X_RATE(519750000U, 173, 2, 2, 16384),
-	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
-	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
+	PLL_1443X_RATE(393216000U, 655, 5, 3, 23593),
+	PLL_1443X_RATE(361267200U, 497, 33, 0, -16882),
 };
 
 struct imx_pll14xx_clk imx_1443x_pll = {
-- 
2.47.3



