Delivery-date: Wed, 26 Aug 2026 11:56:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzAN1-007OKg-2h
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:56:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 61D05201552
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:56:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XVtooXNh;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o+09z+gcPmgXH8sOpbUF8xSXw90T/C/v8LzyAuR7QWo=; b=XVtooXNh5OP9u1cZ6DH9tLFjzO
	R7kL74497oFdkuFV91e5nmpp8CZuiaHGNQImGsltc/awzR8EATYroLZMEwBOY3d963tfZKWAk02Oj
	p5blUHA+VxAoNV+Gf/Gfs4uSzr8ia7vvvcDbXjyjVkHQco0zYfr8IoMrfJ56FGsJqxl/+vOV5tgR0
	SKiwviPAWIyMPPPN5wWsps7kznVeNChWSydz4WXwLhxXyormTuBcOJHcykTGMnEouaNozykZNKnSq
	8FUBWvN4b4klk6zV5b3SCf+VOoj3aouSKqkuLhx8TMWD2uBq14Ps2QMfh1BcXJcp0NWjaKEBxjyiU
	w+k0D9uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAMc-00000002F76-0p2h;
	Wed, 26 Aug 2026 09:56:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAMY-00000002F5u-4BgA
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:56:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2AE1B201552;
	Wed, 26 Aug 2026 11:56:05 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAMX-003Q1b-0J;
	Wed, 26 Aug 2026 11:56:05 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAMW-0000000B8Pz-4C54;
	Wed, 26 Aug 2026 11:56:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/2] libfile: advance offset in pread_full() on short reads
Date: Wed, 26 Aug 2026 11:55:37 +0200
Message-ID: <20260826095604.2652204-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_025607_191062_BEC926F4 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  pread_full() loops until the requested size was read, but
   reads from the same offset on every iteration, so a short read is followed
    by re-reading the same data instead of the remainder. Advance the offset
   along with the buffer pointer. 
 
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
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 68kfqrrecqayxp6yiaf8ne1xh744jbme
X-Rspamd-Queue-Id: 61D05201552

pread_full() loops until the requested size was read, but reads from
the same offset on every iteration, so a short read is followed by
re-reading the same data instead of the remainder.

Advance the offset along with the buffer pointer.

Fixes: 59d6b83f1d4b ("libfile: implement new pread_full")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
While a fix, I would keep it in next, just to watch if this leads to
adverse effects.
---
 lib/libfile.c    | 1 +
 scripts/common.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/lib/libfile.c b/lib/libfile.c
index cf78c70354d9..bd0118a7e5be 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -93,6 +93,7 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset)
 			return now;
 		size -= now;
 		buf += now;
+		offset += now;
 	}
 
 	return insize - size;
diff --git a/scripts/common.c b/scripts/common.c
index a6eee968b79d..6615cfb38b55 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -210,6 +210,7 @@ int pread_full(int fd, void *buf, size_t size, loff_t offset)
 			return now;
 		size -= now;
 		buf += now;
+		offset += now;
 	}
 
 	return insize - size;
-- 
2.47.3



