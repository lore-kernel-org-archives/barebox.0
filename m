Delivery-date: Sun, 08 Nov 2026 10:35:03 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPzIl-008dS9-1K
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 10:35:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 97D642006B6
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 10:35:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="kn/rmlBV";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794130503;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Hi1T/MAln/ldKTY3QchqA64YBPgyrBveQsN5pS+Cg0k=;
	b=S7qVqWnAILRM9WbSF7oj9kKtleY8hyr02PgvpbYgNANhkIhH3S2tS54ZM4zQni378zIlUQ
	E10Y4aUsZszNpkyppSds7cKYAEHfsAEmWk8PTCM/EQLQcD52uFSkBOq2PI1nK2a2HDO1Vq
	UzjSJ7nOvRXrL5wJ8XCSr+soHhP0LxZjEvas4wz9bmOAI4/IBaqrDm/U3k2TO52FWdJSmk
	5ldmKheOZXhntcnTDtqTg4GVH+zYRSVaYVc/wuFGorXHzlMt3e0cZFug1S1+Dy04MPcDdY
	3P4DlEdQ0q5EvhjH/4H5dKoZINbzOG34qjHIwMvWfepDVmvtckOITelIZZ/AJg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="kn/rmlBV";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794130503; a=rsa-sha256;
	cv=none;
	b=FYYiIzUuqLswvFZKpv/qc6QDC6dHNtMxjJaDeMM9YjhFGnaT+dKq8/EnMyAz5gXn/C192B
	FuGVqL0yiyFwQppbbofDp+celQ+GooK7twpRX7ZjCmInxaAmdyi2KeU4XWx46G9Q/gXhvM
	jLVBjefy41F1Qyx2ICpZOMXltKqJt1BVQFoHE73FrAZoagqEQ4hnsVu3yTqzraz+HJpf0x
	8JKvt16F0XseE26aQwtPksz93xxKlaVahtYBMWVPxdkZx9KGY3GebNyguloHvLoTLg+zdc
	O5pOXwu75yvyN5pSHYrcjz36AZdGku4DWCRB4zeWs9pwMwdOeNSt+AeIcH038w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Hi1T/MAln/ldKTY3QchqA64YBPgyrBveQsN5pS+Cg0k=; b=kn/rmlBV8WA9PQ5PzRNuQxV30Y
	iWFT9YMwB7zzVzkYAD6ZNwyurwlo7f5XqSXeTpvGa06QRsKAp9ITLBy6z2WC2cN0NB8a+JlrSpWdZ
	13uO01IYtUuDD5mGfwIuuVOCEFX41aMFb/EHBih4YUnMdiSiXa9dTbcUvN2Zll2Md4XWAXod7L+Rb
	e2dXStaXTWJqNeJ1dg1RgVWYgeYb3+RM8w0t2bkncZ5j74dbwiLkcdqdqiZZH7BB8K2jnZTmbLBcu
	hsuX51W9MKWy0rzK8P2GzVdmcbeA2XIyjmgKMOshobT+Qj5PQk7eMJVu+yy9uj7z79Gf7nrZIGhT6
	AlD/Pgfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHi-0000000FuQt-2ukf;
	Sun, 08 Nov 2026 09:33:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPzHh-0000000FuP9-07DM
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 09:33:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPzHf-0008Mb-GI
	for barebox@lists.infradead.org; Sun, 08 Nov 2026 10:33:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Subject: [PATCH 0/5] console: escape sequence handling improvement
Date: Sun,  8 Nov 2026 10:32:02 +0100
Message-ID: <20261108093354.1247607-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_013357_066973_6BE78994 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The v2026.07.0 update broke arrow key usage in the web demo
    for some users. Proper fix is on the riscvemu side, but there's still some
    things we can do at the barebox side to make escape sequence hand [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 97D642006B6
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_NA(0.00)[barebox.org];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+]
X-Rspamd-Action: no action
X-Stat-Signature: p6bjpkbz4cjdoenjyedjynhikckjs71r

The v2026.07.0 update broke arrow key usage in the web demo for some
users. Proper fix is on the riscvemu side, but there's still some things
we can do at the barebox side to make escape sequence handling more
robust.

Ahmad Fatoum (5):
  readkey: wait for the rest of an escape sequence
  lib: term: ask the terminal when a console can't tell its size
  serial: virtio_console: report the console size
  console: give each console implementation its own console_ctrlc()
  console: keep the keys typed ahead when checking for Ctrl-C

 common/console.c                | 35 +++++++++++++++++++++++++++++++++
 common/console_ctrlc.c          | 10 ++++------
 common/console_simple.c         | 10 ++++++++++
 drivers/serial/virtio_console.c | 27 +++++++++++++++++++++++++
 include/console.h               |  4 ++--
 lib/readkey.c                   |  4 +++-
 lib/term.c                      |  5 +++--
 7 files changed, 84 insertions(+), 11 deletions(-)

-- 
2.47.3



