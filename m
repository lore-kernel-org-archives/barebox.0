Delivery-date: Wed, 23 Sep 2026 09:31:17 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9HRl-005Lu6-2n
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 09:31:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B194C201D7D
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 09:31:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SEqBam05;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="Vq/tXOTm";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790148677;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=T3Cmevx08WhWZdYnBxOm0BbR5jC78s3shu8jMfPMA9k=;
	b=U3GFBI2rCsetDzeeITDzczJFwv6cA0HpKwpwY2vnw1GK+fWVJ1ErCiraUD8xg0hYta7akQ
	LHTpDUm+SgSJtjodA/973Fl39pRWF8//CrhK7cs5LfxM4tDhEozpqEX4SYXzdFulP9JUSp
	cC6CVpKT4AYvZP3Y8/G8YNK5sLTvUZLfSlofTmII99eFQDVWgjId4pD4NsujKsSBMQv6Xy
	gHtG/+8TMoVJ1vxpzoMJ4I7ZKFRRo16b3zhpRYX/vraRWYvCtm5dPycUETiQZ4m0FwJ1A7
	wYmn81RYxShNsLOZgh+k4yB3KlD2pnSNlq+87ncp08/vgTDx76ivfLc4fNzTjA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790148677; a=rsa-sha256;
	cv=fail;
	b=FMzjhU47viDgESRwSF3i+8P+Es2QL6df+dTdR+DQxHOtYsBcKwugQcF3nYgIfxa6cGei69
	H4QHY6TgH6K5seSuG8vzPjyJEM3XEDMC7cqMjIS0W7iIuSSmFi3jC/I2I9NKi90vYxX0z6
	VJrpD1GrSbvYVPYA6ijoXpdnBTds9InHKD4C5+S+4daA4Bp6kDDUkrygySyzFOA51D1eus
	yoHuz3bnw6MXTNXGlpOhu8K0QVlrRM6Eh6gvkluQlO2poo64+WSQ6jysflltr3PAHIQx1k
	DASHpjpBa0TkEuuwZf5r/KdTPBQEBHIs06wxbhWhdkKlX8OWcOHcazfHLEjKSQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SEqBam05;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="Vq/tXOTm";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T3Cmevx08WhWZdYnBxOm0BbR5jC78s3shu8jMfPMA9k=; b=SEqBam05M5GInuYpJgBDgb8c3L
	fvGulaIZuL1gYglut2D1kmCdR0E84Teqd57QskWe/rBdAmd+0XSz5wuwuuShVsnTsEIYRFoREQLPm
	vTdADLqVVwYnxFeQOGhGToqEZr1NuVP7dXigTFoiKQ4qq9RZRVS6ab4ojWIMuYo5zVkkc0u5ydV+y
	JyfupsnBhjQ5o3tu0bHIXt36SNDkjZQdJypYGY7LpNfkte+ArgNMA8Yt2c7wCIOscad02kncQSKeG
	1lMsleJxkbCLnWfUyz/DphDLWYL/sZKsGCKqzAT+Inu+TfhckaJWK3e2cQGLfCC9oWvzcOVktIvcD
	wEkCDKJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9HQe-00000007PXX-2isd;
	Wed, 23 Sep 2026 07:30:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9HQb-00000007PW9-3aus
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 07:30:07 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 91EAD2001F2;
	Wed, 23 Sep 2026 09:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790148602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=T3Cmevx08WhWZdYnBxOm0BbR5jC78s3shu8jMfPMA9k=;
	b=Vq/tXOTmf/el4m8r1tHrmqsVHS3j00iyEbzZJrvHQsgXkeoFqCnSTuCi5D4u3UDZ6kK4Mg
	zx3bm8bFt1mWqLT4GRTEHalRWm0Wt4hzZPK/hp42uXlA7FeLhYmjzM6a3vEfGV1XrtNuV2
	iGzicROFnsdGIN7dRmk8ehVkQUhzWBNhK0zAA9x4r8apPa3+Enhj9y90WhI/BwgTqXXjqY
	feGPLXZ28WXN6JTQdPzIpGZBPR/x6P2ngrSF0/JuG0cCMqZB+2CJDIiYjS3lFoCKGmhbQx
	wtnMfvpGk8Vrkf2IJUfq6Vgspw9hekVTJqSs1DKo7XGFg4kY6LgREdgoUNKJ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790148602;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=T3Cmevx08WhWZdYnBxOm0BbR5jC78s3shu8jMfPMA9k=;
	b=EEnBzJ3i9z37KbEtLwojdi+Po8iJW3/p1Mxf82xoR0Trc6RMQyxe/EW1rFl9cN48vED1Lv
	D98pNEwLHtpt8i62qLECg68ptUCRfPuoS8hOrt+yKwcbBuCEuxk0W/v09Bn3sf6uSCcpxy
	CGzXvlLaBIo4vxy2o5HdDQG0EFhgRqeteYIp6hKEgnROcJ2Qzq40feD7Glg8osILiOxWgB
	bXe1RNsbWxAOcpF7YFssc/AggV5H0/+ABRFEwvRj14gkq8rXPL2NpPJ3UpvwwDAeDuiPn2
	knQMtNEyvXl0Bnv94fcih0J2z5GwzyzaXhFqU1Oj2t6f+8R1U4epcFIMb4dfCg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790148602; a=rsa-sha256;
	cv=none;
	b=ezohBVhWkH0pbEKy9Atim9bdtDNXSW5mGEb3zN/s3C5hxFZP0eLZr8z88Y37Z6MCkvqJ2c
	9hTYdPsDwW6pm8oVIwelNRx1dchu+61kC69IA5QBnUqO7Zvy5CX1Wbu4mKpHCjAceYIrTF
	hliYYSPNlKBvG5Fpi5AQUZpG4n+oEiHvEvEWLPL0PHmPtneazWYRpCNj+TudgeE3xIT/n5
	daBn2R/uaf/nth8RU9itiHbvvD9Ir8L/W+J51tOFS8tEBb49KB+INkH4rBrpurqxhFJEvb
	PB/gpcXKIiWvXhwCF1Ju9YQfgaFsaT8pDgZXGgsZcMQI5Mk+qRDKdikiB5cweQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] test: check-security-policies: mark the source tree safe for git
Date: Wed, 23 Sep 2026 09:30:00 +0200
Message-ID: <20260923073000.4124447-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_003006_056000_D940D34E 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The labgrid-pytest job runs the container as root, while the
    checkout belongs to the user of the GitHub runner. git refuses a repository
    owned by someone else, and the final git diff --exit-code -- '*.sconfig' 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B194C201D7D
X-Stat-Signature: yjtzje6pxouwrx5wjmrmpxjsf6w85pm9

The labgrid-pytest job runs the container as root, while the checkout
belongs to the user of the GitHub runner. git refuses a repository owned
by someone else, and the final

	git diff --exit-code -- '*.sconfig'

then never compares anything. Instead of failing with the ownership
error, git diff treats the tree as no repository at all, falls back to
--no-index and exits 129 with its usage message, which fails the job:

	Check security policy configurator
	Process completed with exit code 129.

Pass safe.directory on the command line, where it still counts as
protected configuration, and check up front that we are in a work tree
at all, so a future breakage of the repository lookup is reported
instead of being mistaken for modified policies.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/check-security-policies.sh | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/test/check-security-policies.sh b/test/check-security-policies.sh
index 09b5301590..946a1ccdde 100755
--- a/test/check-security-policies.sh
+++ b/test/check-security-policies.sh
@@ -71,5 +71,18 @@ for O in "" "$builddir"; do
 	make O="$O" mrproper
 done
 
+# The CI container runs as root, while the checkout belongs to the user
+# the runner uses, so git refuses the repository over its ownership. git
+# diff doesn't fail loudly in that case: it falls back to --no-index and
+# exits 129 with a usage message instead of comparing anything.
+srctree_git() {
+	git -c safe.directory="$PWD" "$@"
+}
+
+if ! srctree_git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
+	echo >&2 "$0: not a git work tree, cannot look for modified policies"
+	exit 1
+fi
+
 # Catches security_oldconfig rewriting a committed policy.
-git diff --exit-code -- '*.sconfig'
+srctree_git diff --exit-code -- '*.sconfig'
-- 
2.47.3



