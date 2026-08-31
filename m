Delivery-date: Mon, 31 Aug 2026 16:46:20 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x13HA-009JS6-0U
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 16:46:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A8FB2201ED7
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 16:46:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YLTNz3Dd;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qP3qSIURrud0FgZINTkqV2toRjcF9aUUa0GisA+2Mw4=; b=YLTNz3Dd6jQzCNviJZgCBREXY3
	ImxlK7JlyLIIlMZ6qxQV+NPqupJlFGUUu3CoHEweJU0Oac8CnLrMmmI1uNPDoPEAZzwmnjl/LfNXI
	MqPsAA+IprjZhGSUXOjThf+xxFB0/s/vPDpbCdiu0Q7nu6A0k1aaG7xK4u/IQuxV3U5L+A3SBLAZo
	LeF3V35ko5Wbf6MSkmuIH01tAf+s6hUWkycmhCIFFlHMFQD9utPPkd1tNgmxrkKs0OlCwOUwX3uo1
	K99LAJwl6aDZnfZjzyIqtsWYzBnhU16Cs7dVXKO0tMvBoZJfQvX5q2pt0E0nUxL7pkeca1aBcGtv/
	UI+wuufw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13Ff-00000009fNo-0EIR;
	Mon, 31 Aug 2026 14:44:47 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13Fa-00000009fMT-4A5M
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 14:44:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3B096202475;
	Mon, 31 Aug 2026 16:44:36 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13FU-004H3M-0W;
	Mon, 31 Aug 2026 16:44:36 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13FU-00000004KcT-0EXW;
	Mon, 31 Aug 2026 16:44:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/2] ARM: i.MX9: initialize max_speed in imx9_cpu_speed_grade_hz
Date: Mon, 31 Aug 2026 16:44:19 +0200
Message-ID: <20260831144434.1032533-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831144434.1032533-1-a.fatoum@pengutronix.de>
References: <20260831144434.1032533-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_074443_179842_60382040 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When built with clang, following warning is produced: arch/arm/mach-imx/imx9.c:36:6:
    error: variable 'max_speed' is used uninitialized whenever 'if' condition
    is false [-Werror,-Wsometimes-uninitialized] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Rspamd-Server: mx1
X-Stat-Signature: gc41umz5prm3idbuxshxawpg5871m5ic
X-Rspamd-Queue-Id: A8FB2201ED7
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

When built with clang, following warning is produced:

  arch/arm/mach-imx/imx9.c:36:6: error: variable 'max_speed' is used
  uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]

The read is not reachable today, as the only caller chain is
imx_init() -> imx93_init() -> imx93_set_arm_clock() and imx_init() enters
it only under cpu_is_mx93(), but that stops being true as soon as another
i.MX9 SoC is added.

Initialize it to U32_MAX, so the fused speed grade is left as-is when
no maximum is known.

Fixes: 37912154d88a ("ARM: initial i.MX9 support")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx9.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index ada4048d4ca0..4344de260238 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -24,7 +24,7 @@ static u32 imx9_read_shadow_fuse(int fuse)
 
 static u32 imx9_cpu_speed_grade_hz(void)
 {
-	u32 speed, max_speed;
+	u32 speed, max_speed = U32_MAX;
 	u32 val;
 
 	val = imx9_read_shadow_fuse(19);
-- 
2.47.3



