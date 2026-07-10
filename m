Delivery-date: Fri, 10 Jul 2026 16:17:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiC2i-002HW4-1j
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 16:17:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 22276202017
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 16:17:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hUrepQXK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S75wIQy1vR2rkRd+Na/xKW4ERgcDNquR0EZS1BU8Awg=; b=hUrepQXKj67gsuAhBUmVzWDSus
	YRxkmSHRAXbC4Bcv+OUtOyVW8DpIo7TyU//guAC7AXmKH76NkIv7jucG9TssrDsJdHzAjkNvDbdTM
	lU8OTYo5R+P2DDdaosX7CD1prxAovPIB2mqcZkgDCRlFGFIl5doLNs9RiePnxrTgUOXvCVDUNpBOg
	1jH9VHy02MLbFwScTgoUIhK1j8iWAHqP4sVSDkUwrIBWQDyZ5tpg7ifbLiJP+MvNtYgi/5wRQkH3f
	hyXWBa8J4XgTnDiRyvWTl6v5CqTFk3aw9GQSj/DV2QaYkzgKRNLniqkBWPU4xf3GtVGcllzCW9kOm
	/LuiekYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiC1Q-0000000549a-1Q01;
	Fri, 10 Jul 2026 14:16:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiC1N-0000000548n-1qH9
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 14:16:07 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wiC1J-0003y4-0w; Fri, 10 Jul 2026 16:16:01 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Fri, 10 Jul 2026 16:15:57 +0200
Subject: [PATCH] ARM: i.MX: fix fast auth wrong CSF file
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-fpf-fast-auth-v1-1-5a2709d29ea4@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAJz+UGoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDc0MD3bSCNN20xOIS3cTSkgxdA8M0I0tT8zQLUwsTJaCegqLUtMwKsHn
 RsbW1AFr/bXxfAAAA
X-Change-ID: 20260710-fpf-fast-auth-01f2957f8584
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: f.pfitzner@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_071605_486754_A592B883 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The commit [1], which integrates fast authentication support
    on i.MX8 SoCs does not work as expected. The resulting CSF cannot be verified
    correctly by the boot rom, leading to an invalid signature. The CST user
   guide documentation states in `Table 10. Authenticate Data arguments`, that
    the `Verification Index` must also be set to 0 when we use fast auth. This
    commit fixes that. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[f.pfitzner@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[f.pfitzner@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 22276202017
X-Stat-Signature: p5fjkfr43ickfbge9przmsz4t9kthfh5

The commit [1], which integrates fast authentication support on
i.MX8 SoCs does not work as expected. The resulting CSF cannot be
verified correctly by the boot rom, leading to an invalid signature.

The CST user guide documentation states in `Table 10. Authenticate Data arguments`,
that the `Verification Index` must also be set to 0 when we use fast
auth. This commit fixes that.

With this change, the bootrom seems to validate the signature properly
now.

[1] 086d01264d ("ARM: i.MX: add support for fast authentication")

---
Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 include/mach/imx/habv4-imx8-gencsf.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 337f2fab40d02703c8a3be7726528f5ac0db956b..897078651861283d2c47828b4079e847dad72946 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -66,7 +66,11 @@ hab File = CONFIG_HABV4_IMG_CRT_PEM
 
 hab [Authenticate Data]
 /* verification key index in key store (2...4) */
+#if defined(CONFIG_HABV4_FAST_AUTH)
+hab Verification index = 0
+#else
 hab Verification index = 2
+#endif
 
 hab_blocks
 

---
base-commit: 2c6a6478987a7fba5ce8a04d01213d6ce6f02d76
change-id: 20260710-fpf-fast-auth-01f2957f8584

Best regards,
-- 
Fabian Pfitzner <f.pfitzner@pengutronix.de>



