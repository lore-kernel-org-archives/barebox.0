Delivery-date: Wed, 01 Jul 2026 11:29:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werFf-00Bohk-0o
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:29:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0E12E2019EF
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:29:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o8ewJi8d;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=KBcJWo1h;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8tNqAztHeLaNCrTAhff6dmV9+dgU3m3pw+9mTYvQX6A=; b=o8ewJi8d2QXZM9X3UsL4/JNr3H
	iSFFPY1emaFgJvqTSYBLAAv7Km79jEnzakodT3qRWfNqiY97IQX4fMLi+cNP6rNRSSMjAdFNvHAcB
	9lboJpBa3ZvJgqxp8objNsWTDBNzUVFFNUFu61L2AzKm2zF+Q4Ro5G/l1KyIJLc8MQjCxSgd5J2tq
	zp1RNzut0oXUEABOpJ8mvjLBzNH9q6ok0xBKpYA5DXzXhvICK9XtEoBakL4zVMb0l2FmqpacsLJQH
	zFCghQdizR78oyeZU0xsNRWohx+6eE9QcSmjxB2oYU9TbBYOYUy5LrtDoxJ+8lFrbh44QI4SUWeFt
	FvO1PkvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werES-00000001CE5-1vg9;
	Wed, 01 Jul 2026 09:27:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEQ-00000001CCx-3Koh
	for barebox@bombadil.infradead.org;
	Wed, 01 Jul 2026 09:27:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8tNqAztHeLaNCrTAhff6dmV9+dgU3m3pw+9mTYvQX6A=; b=KBcJWo1hquTPLPWIt0Di616APB
	UY2IQ9mKaiLyRQ4CZSRrQVoHo41E6Q0W0ApDAWfuqjE1MmTmo6Z2P68wKbZJTJD+X8W8rmTqEj+pj
	+JdfTzrB4A9qlkhGiIRWuxaWTlCxzJQcrDWcdYS/zrth4KyOxp2LyVCT6OKK22E93RK2JyB+C+pDx
	vSc7TOvQei7pWpXiuU/6ZlXLVANHu8Kl8CqKDYlR89+WuvzIDAYLbAvV/X+paz3PUYf6wVW1+UtEp
	4whck4CB5JhxHZwKk5iaCbtt6thIWUj/B4W2hJYvBdx3dfx+hCh+h3lTdfQWwohpaAnQ3DsfMz8BP
	XNGt6ecQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1werEL-00000002ZEt-3b3b
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C12962019DB;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRq-1t;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-22wg;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Jul 2026 11:27:39 +0200
Subject: [PATCH 6/6] partitions: gpt: log a message when partition table
 refreshed
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-gpt-size-fixes-v1-6-aec2e5641a19@pengutronix.de>
References: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
In-Reply-To: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=660;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vrFI5qqSXEFyJlHZaL5eFmQHmLFhOO9yUqhYMoh9ykY=;
 b=wq0Rks6BVgCsTCf+sZyKCX0NTP6bfh/qABe852eKPy/+FuLrFKIEL7WO8Q8brEMT9ox5Xb42J
 Ru3FGYR5J0JDVGfP6FYK09fW5EQcmITlngDvo4j2NOIH3xI7Ii7EOkk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_102742_147523_1E55B5A4 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Inform the user when the partition table has been changed
   as that's a very useful information. Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
    --- common/partitions/efi.c | 2 ++ 1 file changed, 2 insertions(+) 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 0E12E2019EF
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-]
X-Rspamd-Action: no action
X-Stat-Signature: h4osyicq36ew7heduu473of5hzhe5nec
X-Rspamd-Server: mx1

Inform the user when the partition table has been changed as that's a
very useful information.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 04f7117389..ab920e645a 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -82,6 +82,8 @@ static int gpt_refresh_one(struct block_device *blk)
 	if (ret)
 		dev_err(blk->dev, "Refreshing partition table failed: %pe\n",
 			ERR_PTR(ret));
+	else
+		dev_info(blk->dev, "Refreshed partition table\n");
 
 	return ret;
 }

-- 
2.47.3



