Delivery-date: Wed, 26 Aug 2026 10:34:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz95d-007N1F-0y
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 10:34:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A32CC200F1E
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 10:34:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=patqwzUF;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hJQAulwsZprYnoFMVnRXjJRRZaaswx0i+f4vHMpge+o=; b=patqwzUF6JJAOpAjve6fwEUgFN
	JmtsutMLRORzTc7Twpxwbc42MD7WMfcikZiXpetrfUUhaiTGN/xVvMxqeEIscq1Ei0Vz4SUeahs1x
	jGP3/V6QsEaJg8Lz60HQysEhQChiXZ1HAJdnYJNhifEnAfSmEPQSV3edzeKhEs2aJa0fWXaHmbPC6
	h8yN+XrfjI88kXYubb5TAFqpMpkCF2ciw7MXX0Ym8KUDGioz4qoBbKZLyA5ZlczF0iaydcrJ34x6t
	I6IpJf2bLtj6236wGDFdA+mmeLLnfqVR5xjVr1XlLhI4XVvc/xqsUbeefYvRDknsXoe5cqgFoT+52
	ZWVsQLMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz94K-000000026TB-2krf;
	Wed, 26 Aug 2026 08:33:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz94G-000000026Sf-1g7G
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 08:33:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E0DC2200FE5;
	Wed, 26 Aug 2026 10:33:03 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wz94B-003PQ5-2i;
	Wed, 26 Aug 2026 10:33:03 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wz94B-00000003ctI-3587;
	Wed, 26 Aug 2026 10:33:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master] commands: cpuinfo: unify command description
Date: Wed, 26 Aug 2026 10:33:00 +0200
Message-ID: <20260826083303.864464-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_013308_624483_CFF86F62 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  While the rendering of the barebox command help text into
   the documentation got better between v206.07.0 and v2026.08, it's still not
    completely right: https://www.barebox.org/doc/2026.07.0/commands/info/cpuinfo.html
    https://www.barebox.org/doc/2026.08.0/commands/info/cpuinfo.html 
 
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xfngkdxudjhdwgjti8gaun4owaxrszqy
X-Rspamd-Queue-Id: A32CC200F1E

While the rendering of the barebox command help text into the documentation
got better between v206.07.0 and v2026.08, it's still not completely
right:

  https://www.barebox.org/doc/2026.07.0/commands/info/cpuinfo.html
  https://www.barebox.org/doc/2026.08.0/commands/info/cpuinfo.html

This is due to having differing BAREBOX_CMD_DESC content between the
implementations of the command. Just use the same string everywhere to
fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c       | 2 +-
 arch/sandbox/board/cpuinfo.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index c8435e34fdd8..27c5e0697b87 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -283,7 +283,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
-	BAREBOX_CMD_DESC("show info about CPU")
+	BAREBOX_CMD_DESC("show CPU information")
 	BAREBOX_CMD_OPTS("[-sm]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/arch/sandbox/board/cpuinfo.c b/arch/sandbox/board/cpuinfo.c
index 589135102cd3..00516560d30a 100644
--- a/arch/sandbox/board/cpuinfo.c
+++ b/arch/sandbox/board/cpuinfo.c
@@ -45,7 +45,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cpuinfo)
 	.cmd            = do_cpuinfo,
-	BAREBOX_CMD_DESC("show info about CPU")
+	BAREBOX_CMD_DESC("show CPU information")
 	BAREBOX_CMD_OPTS("[-s]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
-- 
2.47.3



