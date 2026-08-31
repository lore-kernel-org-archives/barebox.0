Delivery-date: Mon, 31 Aug 2026 11:49:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0ye6-009EJi-0S
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 11:49:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BC658201D27
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 11:49:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=F20FobpU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QzPABrrF33EKWxFxeTm/Pmo3ttSSLUu3M0rsQtpliGA=; b=F20FobpUKj3L+ZWCU7k+0m/k6I
	WFbj/naCBPvtBrBdJu5bKEfNhbKkMCjU9otjXpaPCcsy9KzICKL2142AkYt5jYG6T7zYP+5Jzg0G5
	X01p4kRMOsDh9FZA4uci6TMiP/qXS+E+4ruwnErXNADmkmpD2z6diN4nPP08EhFJV5gxm3+S7iljk
	/GH8m5wsfRA+8rgec7I3ENoQeDduT8QMMLmLyOjkKnMJJ3R8i8bM2H2hh7AZhO46z1NPqpIFfRIJC
	NGgkEUCDMsFY/mMZNGA1gK06AESyIy5VTfrvNiJDH/pjiS1/Q9xllQ5ivj/cT+a62A8l3rMkSK59M
	O4z3meTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycz-000000093Q8-2Iji;
	Mon, 31 Aug 2026 09:48:33 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycv-000000093Np-0zoR
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 09:48:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4876C2020CE;
	Mon, 31 Aug 2026 11:48:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-004Ebj-0P;
	Mon, 31 Aug 2026 11:48:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-0000000Bs0g-0CnJ;
	Mon, 31 Aug 2026 11:48:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 11:48:25 +0200
Subject: [PATCH 1/4] fs: devfs: remove aliases from the list when freeing
 them
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usbdisk-aliases-v1-1-0a2e40a35f3d@pengutronix.de>
References: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
In-Reply-To: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788169706; l=994;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xTFgfZsR3Ka28pb80T6yDmTKQLB1OlEMxblIfzLIz0w=;
 b=S/PURdR/dCYmy7yU4PqthYzKiOrMp6hms/jGN5A7pV6mLF2g1unRNW/9o9HZuQMrLA/N+6M1h
 COemeRp8Fh3AigBexjsWiXGgItovg49VvVBzRtbC5MA4ib+ZIFWSgsq
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_024829_510089_9C2EB0AB 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  devfs_remove_aliases() frees each struct cdev_alias without
    unlinking it from cdev->aliases first, so on return the list head still points
    to freed memory. Nothing trips over this today: the cdevs tha [...] 
 
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
X-Stat-Signature: 4jq75rroyg9w1cse6bxdsqtgwb1t6od8
X-Rspamd-Queue-Id: BC658201D27
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Action: no action

devfs_remove_aliases() frees each struct cdev_alias without unlinking it
from cdev->aliases first, so on return the list head still points to
freed memory. Nothing trips over this today: the cdevs that get their
aliases removed are either freed right afterwards by cdev_free(), or the
list is re-initialized by devfs_create() when the cdev is registered
again. It is a trap waiting for the next caller though, so unlink the
entries properly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 fs/devfs-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 522d883e1c..b9e34f83bb 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -583,6 +583,7 @@ static void devfs_remove_aliases(struct cdev *cdev)
 
 	list_for_each_entry_safe(alias, tmp, &cdev->aliases, list) {
 		devfs_unlink(alias->name);
+		list_del(&alias->list);
 		free(alias->name);
 		free(alias);
 	}

-- 
2.47.3



