Delivery-date: Mon, 31 Aug 2026 15:26:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x121y-009I83-2g
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:26:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 50B5C202475
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:26:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oRLPIl4e;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OsQx1aTXXOR56tCWiKj1Q0vGysTUd+tJUfW4hNdeLzg=; b=oRLPIl4eH1Ym682LDjmK02SKUn
	H6tLtxlCcX32Fzv/3C3VSMFsFy5g9hPTLtnXr6+/bsx6XiZysWqhmB9+vpAkJJyjZx/iWol/MAuHL
	J2wH42NhXlZjSiX0+xrfmXFDXPlgJrSdRaqLnFj+yMB/8lpManiRQz1dFZNtFg4ZdRKOmveXx95aX
	k60tFuMyus4+qlOa7jEorVevILcjWq1JOHCCn82IxkSktHzsHdwfw8k0MvxJekj/o1QG3z7MLZwy7
	oGChBxg1lXDmLb4HEyEFN/sB69dIvq7Mv8YXNkBx8+hML91jVCrvNpBvSJNYkpPuo7Fi3Fa3XZdYP
	auX8ZkgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x120Z-00000009P1f-3XqI;
	Mon, 31 Aug 2026 13:25:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x120V-00000009OzG-00io
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:25:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 460B62020E6;
	Mon, 31 Aug 2026 15:24:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x120P-004GSE-0b;
	Mon, 31 Aug 2026 15:24:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x120P-000000034AG-0LIV;
	Mon, 31 Aug 2026 15:24:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 4/4] sandbox: actually build the assembly setjmp/longjmp/initjmp
Date: Mon, 31 Aug 2026 15:24:54 +0200
Message-ID: <20260831132456.730833-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260831132456.730833-1-a.fatoum@pengutronix.de>
References: <20260831132456.730833-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062503_204031_67C8D321 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  arch/sandbox/Makefile adds the host's um/ directory to pbl-y,
    but Kbuild only consumes core-y from the arch Makefile, so the assembly implementation
    selected by CONFIG_SANDBOX_SJLJ_ASM was lost. Use core-y, so the assembly
    version overrides the weak C one. 
 
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
X-Stat-Signature: z6feghj5765cqryfp7jr44h1as47qtrf
X-Rspamd-Queue-Id: 50B5C202475
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
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

arch/sandbox/Makefile adds the host's um/ directory to pbl-y, but Kbuild
only consumes core-y from the arch Makefile, so the assembly
implementation selected by CONFIG_SANDBOX_SJLJ_ASM was lost.

Use core-y, so the assembly version overrides the weak C one.

Fixes: 48d0d0cc28ed ("kbuild: sync with Linux v6.17")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 08e09c53f7ef..cd11083e4deb 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -25,7 +25,7 @@ HOST_DIR := arch/$(HEADER_ARCH)
 
 -include $(srctree)/$(HOST_DIR)/Makefile.um
 
-pbl-y += $(HOST_DIR)/um/
+core-y += $(HOST_DIR)/um/
 
 KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/include
 
-- 
2.47.3



