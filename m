Delivery-date: Mon, 27 Jul 2026 15:01:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woKxG-003R0y-1x
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:01:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 02C72202241
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:01:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G0vCQWKM;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4Jpn71M4+yLPOaWyFh1ekh6uX25vWYOmXP0+QPeu6xM=; b=G0vCQWKMt8FTJhr1m3zdtAM8/b
	kp05S/nV2jjJR8YbKlSkdFUE7jC7xpQv3MMq9uUzzsWUbeic/0ey6uG1MRUNrjvAKMVHapfM4QHYj
	nPk2XLEX0OMHIB+E2FvvGoqTjOecd6BUh2pqqS0whyUoUqG8SY6TCmQd8lIR3BIc+on03BjeDCxDC
	EyWLwCOe6mVYoBgoZouPQm3MO/c76FKR3f4JOkv2X9/YRfA3XPDsulsSyRYfnLNAKS+nN++C+YFUX
	+aHGIcz1/mgOnE/oLojkLv2Ipn3Q4ne8OfKcEsUNJKmIlRy8rYeIYt/p6Ctq65oZ4ZJMp7PD/cGEM
	g0/4YyEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woKw1-00000002lVH-0fNS;
	Mon, 27 Jul 2026 12:59:57 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woKvw-00000002lS1-1wZi
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 12:59:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9A0C3202241;
	Mon, 27 Jul 2026 14:59:48 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1woKvs-001XuY-1X;
	Mon, 27 Jul 2026 14:59:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1woKvs-00000001ECO-1jqB;
	Mon, 27 Jul 2026 14:59:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/2] PBL: add support for optimized sha256
Date: Mon, 27 Jul 2026 14:59:43 +0200
Message-Id: <20260727-pbl-sha256-v2-0-5f5a16d614ca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD9WZ2oC/23MQQ6CMBCF4auQWTtmKFIoK+9hWIAMMIkpTYsNh
 nB3K2uX/0vet0NgLxygyXbwHCXIYlOoSwbPubMTowypQZHSVJFB178wzJ0qNfaaRlObIleaIR2
 c51G2E3u0qWcJ6+I/px3z3/qXiTkS3sqiJjJkysrcHdvpvfrFynYdGNrjOL7eJK1bqQAAAA==
X-Change-ID: 20260709-pbl-sha256-b60f9893126e
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785157188; l=1175;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Sue9cYV0KUMI+SZLHnzsSwtTAjYpB3LbFfzNTePtdDY=;
 b=/URTEKcnJ3wOFRgX4s2m7W5sJKsgZP2H54FRN9sRhrz5w+CXNpUgzoGfnKgPaZ3TlhopyQeMW
 B/hpQuhp+5hC1BmdWTzty+LcmJMemmfpGxF5V7nXW/xSztx4xScxLy2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_055952_658932_C0A46AFB 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When chainloading a full barebox from the PBL we have to verify
    the loaded image with sha256. This can take some time for bigger image, so
    add support for optimized implementations and ad the ARM64 Cr [...] 
 
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 02C72202241
X-Rspamd-Server: mx1
X-Stat-Signature: ahag9quprtoz4assa68t7mmwmfbf9rnx

When chainloading a full barebox from the PBL we have to verify the
loaded image with sha256. This can take some time for bigger image, so
add support for optimized implementations and ad the ARM64 Crypto
Extensions as a first implementation

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- drop ARMv8 specific comment in generic file
- Use static SHA256_DIGEST_SIZE in function prototype
- Link to v1: https://lore.barebox.org/20260709-pbl-sha256-v1-0-453800909579@pengutronix.de

---
Sascha Hauer (2):
      PBL: add pbl_sha256()
      ARM: pbl: add PBL support for crypto extensions

 arch/arm/crypto/Makefile       |  3 +--
 arch/arm/crypto/sha2-ce-glue.c | 44 ++++++++++++++++++++++++++++++++++++++++++
 include/crypto/pbl-sha.h       | 14 ++++++++++++++
 pbl/Makefile                   |  1 +
 pbl/decomp.c                   |  6 +-----
 pbl/sha256.c                   | 28 +++++++++++++++++++++++++++
 6 files changed, 89 insertions(+), 7 deletions(-)
---
base-commit: 8057f993993040fdd3bea1c42cf8e37af5b6f5d3
change-id: 20260709-pbl-sha256-b60f9893126e

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



