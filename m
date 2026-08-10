Delivery-date: Mon, 10 Aug 2026 14:22:28 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtP1P-001ca0-1a
	for lore@lore.pengutronix.de;
	Mon, 10 Aug 2026 14:22:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 13D10200806
	for <lore@pengutronix.de>; Mon, 10 Aug 2026 14:22:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4s38y1n9;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UdyqZPFNjKTxgPxe/1QlKyCBRml2C3lsYT1E8Xfm1xI=; b=4s38y1n9YsgDgX1szyHep/R7Gv
	sdz/P6ViEEMkZtNWRahm1f7CO3Hp3XtMvOwcfJXmUuLNET4v9Oik5aBFvWreq7UbvJW+8+ELy0xwy
	pogX1gCWVtureNcd8uobi1FhBzsXLF0/IHKjvSIy1i4MFZCXM2SDHgbqB771/FD5jQGM81LIvyZJE
	VjShbaGYWQn7oVvpJOKfWI2jv+SmI4FGz2CYzlcb9EBHaT7Co8Y8Pv9O2JDh3Kr2erWgG9uZPxmbV
	4RhK1rY7oiGE6dZGWcaSVBbhiyYTQBxPxTq/Arzeeyu6e1PHd097BJwfQtEd00yxbO5q9jdOD4toA
	XyxitjaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOzj-0000000BlZ0-0UZp;
	Mon, 10 Aug 2026 12:20:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOzf-0000000BlY0-0kNs
	for barebox@lists.infradead.org;
	Mon, 10 Aug 2026 12:20:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9F399200734;
	Mon, 10 Aug 2026 14:20:36 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wtOzc-000mXO-1q;
	Mon, 10 Aug 2026 14:20:36 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wtOzc-00000008Fk0-1xEW;
	Mon, 10 Aug 2026 14:20:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	=?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Subject: [PATCH] Documentation: security: mention long term stable release
Date: Mon, 10 Aug 2026 14:20:33 +0200
Message-ID: <20260810122034.1966679-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_052039_362912_D735FFC2 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We occasionally backport changes to v2026.04.0, so adapt the
    README.rst and SECURITY.md accordingly. Reported-by: Enrico Jörns <ejo@pengutronix.de>
    Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de> --- README.rst | 5
   +++++ SECURITY.md | 10 ++++++++-- 2 files changed, 13 insertions(+), 2 deletion
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: b585p4g7g3ewc8hxyi134bqd6mfwig4y
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 13D10200806

We occasionally backport changes to v2026.04.0, so adapt the README.rst
and SECURITY.md accordingly.

Reported-by: Enrico Jörns <ejo@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 README.rst  |  5 +++++
 SECURITY.md | 10 ++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/README.rst b/README.rst
index 17bf288c4c60..71286904a866 100644
--- a/README.rst
+++ b/README.rst
@@ -273,6 +273,11 @@ are the release rules:
   We think that there is no need for pre releases, but if it's ever
   necessary, this is the scheme we follow.
 
+- Occasionally, a release may be designated a long term stable (LTS)
+  release and will continue to receive fixes for a longer period of
+  time. Refer to ``SECURITY.md`` in this directory to see, what
+  releases, besides the most recent, are actively maintained.
+
 - Only the monthly releases are archived on the web site. The tarballs
   are located in https://www.barebox.org/download/ and this location
   does never change, in order to make life easier for distribution
diff --git a/SECURITY.md b/SECURITY.md
index 9dd19d73d0aa..862dd14623d9 100644
--- a/SECURITY.md
+++ b/SECURITY.md
@@ -2,12 +2,18 @@
 
 ## Supported Versions
 
-The barebox project does not, at the moment, maintain any longer term
-support branches.
 Please update to new [barebox releases](https://github.com/barebox/barebox/releases)
 as they become available.
 Compatibility with old kernels is maintained over barebox releases.
 
+The [migration guides](https://www.barebox.org/doc/latest/migration-guides/index.html)
+can be helpful in adapting configuration to new releases.
+
+In addition, the barebox project currently maintains following long term stable (LTS)
+releases:
+
+  * [v2026.04.y](https://github.com/barebox/barebox/tree/stable/v2026.04)
+
 ## Reporting a Vulnerability
 
 Please report security vulnerabilities to security@barebox.org.
-- 
2.47.3



