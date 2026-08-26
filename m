Delivery-date: Wed, 26 Aug 2026 12:14:52 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzAeh-007OoB-1x
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 12:14:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2AD0B200F1E
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 12:14:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4k5x8NMI;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AOT0k7CF1R2LTcxqOsPyh7TTtTinioP90j5xV1yUduk=; b=4k5x8NMIzRI8SR/lyH3jeOozTH
	DKk8J6tFeBnN1gglGL0+gIl76nR3Tgd/CAbF61PCz3R6QgHpPRVcL52C0ptph7zlFq+30wP3fDhZC
	9Z8pkVEMnWvrkutmD/7B8He390ELk2uJE//+zDGONQ2ngYlN40W2NKxTjS+Vc6qopBBwaKDVrJTam
	dzeZeu0KOXN2SpHFSmkkGbA8bjlPczMWqXHavBWJCSE9m59VD9ezhU9eSvY+jTfCCdIkbRrZxj5+j
	gJTFo75LFljy6QT9ouihtQLuK66WIyUaVyTNZxFnptjrhXXMONA+D3aje1P7kSLQo0Ny614EQKuv9
	BWq6mEtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAdb-00000002Gag-2iQP;
	Wed, 26 Aug 2026 10:13:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAdY-00000002GZa-2CCI
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 10:13:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6BAB9202040;
	Wed, 26 Aug 2026 12:13:38 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAdW-003Q9J-1A;
	Wed, 26 Aug 2026 12:13:38 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAdW-0000000BFsN-15eu;
	Wed, 26 Aug 2026 12:13:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH] boot: don't use the nfs:// mount path after freeing it
Date: Wed, 26 Aug 2026 12:13:33 +0200
Message-ID: <20260826101335.2682621-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_031340_744818_91DE3017 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We free nfspath, while there is still a dangling reference
    to it in the `name' variable: nfspath = parse_nfs_url(name); if (nfspath)
    name = nfspath; ... free(nfspath); if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)
    && !found) { const char *path; 
 
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: taykbn7tyagxsnhfdkim6wzjp5owwcco
X-Rspamd-Queue-Id: 2AD0B200F1E

We free nfspath, while there is still a dangling reference to it in
the `name' variable:

	nfspath = parse_nfs_url(name);
	if (nfspath)
		name = nfspath;
	...
	free(nfspath);

	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT) && !found) {
		const char *path;

		if (*name != '/')

Fix this by freeing it at the end of function.

Fixes: b5c00912524d ("boot: move nfs:// parsing out of bootloader spec code")
Reported-by: Chali Anis <chalianis1@gmail.com>
Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index dc1441d0dc91..0dbe8784d40c 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -473,8 +473,6 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 		bootentries_merge(bootentries, &provider_bootentries);
 	}
 
-	free(nfspath);
-
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT) && !found) {
 		const char *path;
 
@@ -490,6 +488,8 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 		free_const(path);
 	}
 
+	free(nfspath);
+
 	return found;
 }
 
-- 
2.47.3



