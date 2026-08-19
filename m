Delivery-date: Wed, 19 Aug 2026 16:41:44 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwhU7-004tRh-2x
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:41:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6786C200F4F
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:41:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ifPqDUZK;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4voI/8jAA4uz8mDLL7okFraRsZEHf8/EVVNytdT71zM=; b=ifPqDUZKYOkbDN34XlHCbmM2Cl
	kOvbM99vyzj9PhSCRXNQk/ybilg55W8sGqeAOYAEGgGJeQ4btBCnBd1ItKWK5kZgaJqhg1PpZyTfo
	H1m0ZQK1KNpFY2WyEqFkFSsenZKtbEa1jIJzKqrNDmPR72kLCaRj0CO7+f7BdnDDnZ6JOMyJw+JXV
	uLw/ubyaPWk28eSHx9b5I8lSd8xwYbyelIadG320+zWsOQGgiHWOS7rmPGVfghS8Xh+H145dockpx
	s3l9cZNVI/PO6Qz+XKbNY0tfHIj/qDviz5/1Dua796+v9svQf7IOWfo+WGKGm1MQ7UlrEXIuvEveX
	LSnyNtmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwhSj-0000000A0AM-1Kki;
	Wed, 19 Aug 2026 14:40:17 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwhSg-0000000A09H-1Dvw
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:40:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4849D2005C5
	for <barebox@lists.infradead.org>; Wed, 19 Aug 2026 16:40:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wwhSa-002JLa-0f
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 16:40:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wwhSa-0000000HQYT-0OLJ
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 16:40:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Subject: [PATCH 2/2] clang-format: align consecutive macros
Date: Wed, 19 Aug 2026 16:39:56 +0200
Message-ID: <20260819143959.4147390-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260819143959.4147390-1-a.fatoum@pengutronix.de>
References: <20260819143959.4147390-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_074014_486682_BA3FDE1C 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Michael Riesch <michael.riesch@wolfvision.net> clang-format
    9 introduced the option "AlignConsecutiveMacros". Set it to "AcrossEmptyLinesAndComments"
    in order to avoid macro definitions of the form: 
 
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
X-Stat-Signature: zqduwb3dcgywmoynq1n6nsdwubn7s7zk
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org]
X-Rspamd-Queue-Id: 6786C200F4F

From: Michael Riesch <michael.riesch@wolfvision.net>

clang-format 9 introduced the option "AlignConsecutiveMacros".
Set it to "AcrossEmptyLinesAndComments" in order to avoid macro
definitions of the form:

    #define MAGIC_REGISTER_1 0x42
    #define MAGIC_REGISTER_BIT_FLIP BIT(2)
    /* important comment */
    #define MAGIC_REGISTER_BIT_ENABLE BIT(12)

    #define MAGIC_REGISTER_2 0x43

With the option set to "AcrossEmptyLinesAndComments", they will
be converted to

    #define MAGIC_REGISTER_1	      0x42
    #define MAGIC_REGISTER_BIT_FLIP   BIT(2)
    /* important comment */
    #define MAGIC_REGISTER_BIT_ENABLE BIT(12)

    #define MAGIC_REGISTER_2	      0x43

which seems to be the convention in the kernel code base.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.pengutronix.de/20250210-clang-format-fixes-v2-2-37894413bbee@collabora.com
Suggested-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .clang-format | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.clang-format b/.clang-format
index 1f310cfef5c6..d0846dccc0c3 100644
--- a/.clang-format
+++ b/.clang-format
@@ -13,6 +13,7 @@ AccessModifierOffset: -4
 AlignAfterOpenBracket: Align
 AlignConsecutiveAssignments: false
 AlignConsecutiveDeclarations: false
+AlignConsecutiveMacros: AcrossEmptyLinesAndComments
 AlignEscapedNewlines: Left
 AlignOperands: true
 AlignTrailingComments: false
-- 
2.47.3



