Delivery-date: Sun, 08 Nov 2026 08:56:54 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPxll-008bwB-2F
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 08:56:54 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D3CCD2006B6
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 08:56:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fBV+LdH1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794124613;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Qjgf/RpAl/RJ8d385mbAyo4IeZBUiehHN/UfUNH/zTg=;
	b=Iug2n/pW5L4hiIh8uaPjTkmG1DUztNKpWMsEgWSXBoGOJgQ8SI7jxplITZaNLHTebd4dif
	a7y1STRgGVKl7nFQPxtxnePL3+L1FYsgmRJ9KiAugehw0b/H7YUkYuX1wedfn1w3wBsWRw
	pwzkTp5gY6WecvLX3KeNtHua9XnPOpj4MM/6vtIH4NcU/yQBUAIXnHn8FDe5h5c0Cz69w5
	SYRuZgbUDr9OHr5NyOLz2ksjS5no9R94a5UgPjw+kUVyQghRt2txS2mNyEbkRs2YxYrEma
	AYwuKPTCNKBWtWtZQIcR4OkhFKaUA6nKSU4/gvtQbNX8xRYsvynLUP21E0dbtw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fBV+LdH1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794124613; a=rsa-sha256;
	cv=none;
	b=CW/C9P0Kuco77iUsdQk5IEG76aVSHqIBA9QQJFIlJqs6E1H5BiHVoILG9GChmbyW6riNoM
	/gYfua5lhweUzBIYXs//9fVs0uNfGgvLlIECm6iDUBXTq21Q2OmpzkFreknoK6DzowQoMK
	z4Ub2NY5LbsWggeGveqdl4JfWSRG6YlH5GjkXGcv7mdd4coLVCM2k5KNBPcC8JJVK0S2ln
	jhWfIMV/psgFvitYukwXfw+Eo35QkoauPvtHOUHul/AAje1i9BwLzF3llWOeZD6alC13th
	PYMOPN5YKThqtVAdRkHSQZWbiPN+2STuiD8Wx5AH6pZ60xrVd2qplT5Hp7Nc2w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Qjgf/RpAl/RJ8d385mbAyo4IeZBUiehHN/UfUNH/zTg=; b=fBV+LdH1z0qoTbLB8sxYmEK3zE
	eWIYdYwojPPSza9pVugy60hoDh7kZci8TG0ie32+1/VIr8+FIlKasIWncLmYhzQfgPVUSigXUTTFu
	GqflrqR5JKliWXudm62no7hepx1AvLljWxlVIf6S+hUZI4oF+SXDvx4LhcW2c8EsbR9fnCgTCw3dj
	DuiGlK/iYYBbWkHtO3aHpKseiMUzIyVJLTcInit4eQux8lQQHSVqhGqNaMOozAVQfEtZb3rToNjH3
	S0DI/prlpuliXgWwTHg3/Vl6zqub+PU0pEPQJRu25xIvwk0kk3KZl0k4M9z9fop4FVtZ9omIzDz72
	7vth9G8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPxkZ-0000000FpKJ-0fq2;
	Sun, 08 Nov 2026 07:55:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPxkV-0000000FpJz-2aPb
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 07:55:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xPxkQ-0006Dn-SE; Sun, 08 Nov 2026 08:55:30 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] checkpatch: allow a space after BAREBOX_CMD_HELP_OPT
Date: Sun,  8 Nov 2026 08:55:28 +0100
Message-ID: <20261108075530.1207763-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_235535_653176_78ACF3D0 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Command help is commonly written with a space after BAREBOX_CMD_HELP_OPT,
    so the strings line up with those of the BAREBOX_CMD_HELP_TEXT( lines around
    them. About 300 lines in the tree do so and check [...] 
 
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
X-Rspamd-Queue-Id: D3CCD2006B6
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: us1fhiq4u9iokmnbehcoi6twefcfgrua

Command help is commonly written with a space after BAREBOX_CMD_HELP_OPT,
so the strings line up with those of the BAREBOX_CMD_HELP_TEXT( lines
around them. About 300 lines in the tree do so and checkpatch warns about
every single one of them.

Let's accept the space for BAREBOX_CMD_HELP_OPT, but keep warning about
it anywhere else.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/checkpatch.pl | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 94fca7f34bb3..5d20e5e3178b 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -5101,6 +5101,9 @@ sub process {
 			# cpp #elif statement condition may start with a (
 			} elsif ($ctx =~ /^.\s*\#\s*elif\s*$/) {
 
+			# the space lines the help text up with BAREBOX_CMD_HELP_TEXT(
+			} elsif ($name eq "BAREBOX_CMD_HELP_OPT") {
+
 			# If this whole things ends with a type its most
 			# likely a typedef for a function.
 			} elsif ($ctx =~ /$Type$/) {
-- 
2.47.3



