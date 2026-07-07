Delivery-date: Tue, 07 Jul 2026 15:52:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wh6Da-001ELD-2U
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 15:52:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 994ED202623
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 15:52:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zW1QLcPW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xayahuFWqOMsoQKQP/YHc2O5+9nYZUiNbKRaAgIGPAQ=; b=zW1QLcPWAGoT51zoWQOY5ZYej2
	vZfvS6ptjg4IUYB1ThciIJ4GTVrtPulsuzGEgXIWVUqQPaHrre+RyYyvSHgA0W+vvGEMFfUUlRcRW
	Rdjuwkbi1+OkLu7dcy8hAGPfLRvnYFIaRwi7f06YBOvrv1mLLA3e2LxQF7NQ7sa0i8IxLfo/tXTeM
	Yxi88mUlcZwgURC6t1K3U5G561yX1pY4EgrMe5TfIB4PEfiw7LQkWSXtTxqgaBKFPBysbTJn1PvWt
	ywDvvh2gsv8aCIrN+2ghTpNtKdzmXtL4xvHp/JlMcjCmAuMlpbLBcPmJKrZjSxGZt50FnGgHKPbii
	UhjXSk5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6CH-0000000F5bO-3uy2;
	Tue, 07 Jul 2026 13:50:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6CF-0000000F5ap-13Bx
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 13:50:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A65512025F7;
	Tue, 07 Jul 2026 15:50:44 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh6CC-000ajv-1v;
	Tue, 07 Jul 2026 15:50:44 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wh6CC-00000007EhZ-25hG;
	Tue, 07 Jul 2026 15:50:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] doc: user: barebox: fix name of barebox.fit image
Date: Tue,  7 Jul 2026 15:50:42 +0200
Message-ID: <20260707135043.1724797-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_065047_442995_477F50FD 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The build generates no barebox-dt-2nd.fit, but a barebox.fit
    symlink to the architecture-specific FIT. Reflect that in the docs. Signed-off-by:
    Ahmad Fatoum <a.fatoum@pengutronix.de> --- Documentation/user/barebox.rst
    | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs
                             [URI: barebox.fit (fit)]
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
X-Spamd-Result: default: False [-5.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 994ED202623
X-Stat-Signature: ga5g1ewrgngxm538i1hgtqmn83stc5eo

The build generates no barebox-dt-2nd.fit, but a barebox.fit symlink to
the architecture-specific FIT. Reflect that in the docs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 4bb33d7db19a..b89db4b07d58 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -225,7 +225,7 @@ Linux kernel:
 
 .. code-block:: console
 
-  U-Boot: tftp $fit_addr barebox-dt-2nd.fit
+  U-Boot: tftp $fit_addr barebox.fit
   U-Boot: bootm $fit_addr
 
 The FIT image has a kernel type of ``kernel_noload``, instructing the bootloader
-- 
2.47.3



