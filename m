Delivery-date: Fri, 04 Sep 2026 10:17:40 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2P7D-00AexQ-1E
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 10:17:40 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Lf/lxI84";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EE295205858
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 10:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XmQV2q9xWQosGfUd6etdN5sRguDODYdwsPkg2D9KJbM=; b=Lf/lxI846Vx3KK92+noFpjADSR
	sGFCDYdQpYJO485sscP4nCAlDxfgWlnrUHBjwvIXexbIstMpRdV8RpasE5UbxlpJm6MXy36Bxd2ge
	a7d6Wzx1dGlU7gMKhqOMz+NiWF/gfGOAW8dOY5P/ejXlVcUmRLbj7CbyNpsGCkwQBPfzHkpLID9P9
	UfHekrwcMbWYV66VflTSMSwjIQpjBFggbfsXdl61biqFEyJv2WswzbADE/+NmA7qIYMXYPDZvcedz
	4zOajhiy1bcUutA0aVSvfZZ12C472qTcrDxhLrOThuuZTXLOTUnB2hMFuebXdtpqOjAwlM+lK3NUF
	Ct8+gZCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Oqd-00000001JtQ-41WM;
	Fri, 04 Sep 2026 08:00:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2OqZ-00000001Jqx-3A50
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 08:00:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 18C3120592B;
	Fri, 04 Sep 2026 10:00:26 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2OqY-004sj8-01;
	Fri, 04 Sep 2026 10:00:26 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x2OqX-00000000cNK-3mnY;
	Fri, 04 Sep 2026 10:00:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 4/5] kbuild: disable -Winitializer-overrides for clang
Date: Fri,  4 Sep 2026 09:59:16 +0200
Message-ID: <20260904080025.147376-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260904080025.147376-1-a.fatoum@pengutronix.de>
References: <20260904080025.147376-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_010027_958312_37E15807 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> clang warns about
    the intentional [0 ... N] = default followed by per-entry overrides, e.g.
    in arch/arm/cpu/interrupts_64.c: arch/arm/cpu/interrupts_64.c:28:26: error:
    initializer overrides prior initialization of this subobject [-Werror,-Winitializer-overrides]
    
 
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
X-Stat-Signature: t54pfbrkh4k95t4f318rsdn6r56su35c
X-Rspamd-Queue-Id: EE295205858
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]

From: Ahmad Fatoum <a.fatoum@barebox.org>

clang warns about the intentional [0 ... N] = default followed by
per-entry overrides, e.g. in arch/arm/cpu/interrupts_64.c:

  arch/arm/cpu/interrupts_64.c:28:26: error: initializer overrides prior initialization of this subobject [-Werror,-Winitializer-overrides]

Disable it for clang, as Linux does.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/Makefile.warn | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/Makefile.warn b/scripts/Makefile.warn
index 393f7fd522c8..237597d18af4 100644
--- a/scripts/Makefile.warn
+++ b/scripts/Makefile.warn
@@ -47,6 +47,9 @@ KBUILD_CFLAGS += -Wno-pointer-sign
 # them when -Wall is passed later on the command line, so the -Wno... options
 # must come after -Wall
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-but-set-variable)
+ifdef CONFIG_CC_IS_CLANG
+KBUILD_CFLAGS += -Wno-initializer-overrides
+endif
 
 #
 # W=e and CONFIG_WERROR - error out on warnings
-- 
2.47.3



