Delivery-date: Wed, 19 Aug 2026 16:41:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwhTa-004tQs-20
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:41:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1CAD4200F4F
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:41:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1btVSFM0;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cFG1nM9mnciRf8rsFJy5VOc2kL6F+px+c8hxiTDW45Y=; b=1btVSFM0zc4DbiNbz14s65BrB1
	YFmgZYyg8/frq9WDF4Wux4xdpW/ztdlP4zTyu6hmtHxemmnyEPPvuoQaCVzU1oeUZXYm6keHbC0O2
	q6cJJhhxbJRVl7Lkeuu6ZC3jtBpeSZJibIue5jiVvHxLuVRObXGL6Z15xafyh/Zfz/fm2t7mJkFqx
	YUgU/JFrFGZcjHv3jS2R0asOs9AFKqjQtNl9N10vBHpcqyx9LanQpAYS+0ykmr1TSN83jseN61bsu
	OCfgCfJt6dXl33mFPDPsq0A0PgfGCISvyeKGrq+qHk8qLtZ6bta73CW8BzZsQIaUFA21BH4CjAElL
	pVEWY28g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwhSi-0000000A0A7-0uyD;
	Wed, 19 Aug 2026 14:40:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwhSe-0000000A09A-2Tzo
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:40:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A35FA200C90
	for <barebox@lists.infradead.org>; Wed, 19 Aug 2026 16:40:06 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wwhSY-002JLX-1r
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 16:40:06 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wwhSY-0000000HQYT-1v7y
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 16:40:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH 1/2] clang-format: do not allow short enums on a single line
Date: Wed, 19 Aug 2026 16:39:55 +0200
Message-ID: <20260819143959.4147390-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_074012_808418_B81CD4F2 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Michael Riesch <michael.riesch@wolfvision.net> clang-format
    11 introduced the option "AllowShortEnumsOnASingleLine". Set it to "false"
    in order to avoid short enums of the form: enum my_short_num { green, red
    }; 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 1xysok1wx69tjoy76e8n7ueo1eg9txyi
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Queue-Id: 1CAD4200F4F

From: Michael Riesch <michael.riesch@wolfvision.net>

clang-format 11 introduced the option "AllowShortEnumsOnASingleLine".
Set it to "false" in order to avoid short enums of the form:

    enum my_short_num { green, red };

With the option set to "false", they will be converted to

    enum my_short_num {
            green,
            red
    };

which is consistent with the definition of enums with more items.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.pengutronix.de/20250210-clang-format-fixes-v2-1-37894413bbee@collabora.com
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .clang-format | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.clang-format b/.clang-format
index be6c955e731c..1f310cfef5c6 100644
--- a/.clang-format
+++ b/.clang-format
@@ -19,6 +19,7 @@ AlignTrailingComments: false
 AllowAllParametersOfDeclarationOnNextLine: false
 AllowShortBlocksOnASingleLine: false
 AllowShortCaseLabelsOnASingleLine: false
+AllowShortEnumsOnASingleLine: false
 AllowShortFunctionsOnASingleLine: None
 AllowShortIfStatementsOnASingleLine: false
 AllowShortLoopsOnASingleLine: false
-- 
2.47.3



