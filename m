Delivery-date: Wed, 01 Jul 2026 11:32:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werJB-00Bolx-13
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:32:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 21B7D201955
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:32:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Kh9U81PR;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="lAq4/aPY";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ArM7QV2fEcFQnWXdMNNU69MSn+ZwAdJ6EjA/n3psNOU=; b=Kh9U81PRxFA++zo6ulIDzneSNF
	6JNjpVBI1BHtZuhPx3L2c9ZPv0H12Gs5qYaKDw67pezLlbl4YUaMReU0NvCuZpeUewwz5Kzmoyf9P
	2dvsD/iKDeQ5r40w3i8SZ/8QxrP3WhuUw4C6OzqAPIDeK3fmpxViTPDc3L499oO4bwD21I+FEmLbV
	ko9zx1N5l0Jl6qn9AA/s/0Ze0ddnjQeLkAzgqhWfxD/SfpGuSPZ6WAschtSate1/QIVuudNlk5diD
	fZ9vaAUdldXRVVKw741BEcO/h5KVl6AOtIDn97ET3Lb/53MRZ11XGYK/+O/sv+vuCxjrhOmsUStbj
	mYC+4YGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEQ-00000001CD6-2y2v;
	Wed, 01 Jul 2026 09:27:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEO-00000001CC3-3S3R
	for barebox@bombadil.infradead.org;
	Wed, 01 Jul 2026 09:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ArM7QV2fEcFQnWXdMNNU69MSn+ZwAdJ6EjA/n3psNOU=; b=lAq4/aPYp/QFZe57By/PiVA0Gw
	ymgKVfKXDlXEDgqpvZlvLjnExyMRbRHQzRqYj+i0Cr1A/3/lEvPB2dDbb4fpGpVvnhAQQnW38/Zr1
	5C7jNaObWEm680stcraTxWuuxD2e/ofLKtOmbZlyoa7FzPcX84UdOZMAD50/xUfeXHJUwovdUXWd1
	vxMGwdHwBDJ12o9+nn42bhw8RF3+wIeS66qVYwpQ4m7VzDFtCESLboopC4e9+1uOpNQqCKCd9YNVF
	4k68grZtRnb+rhao3NbVAmD15DIdNn0ZMvONywGFIRlhH6hu/VWT4RMzXIPFfjB1lChcz6ToFmzSB
	5lanxnXQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1werEL-00000002ZEs-3L9y
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C8D5C2019EF;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRp-1v;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-229y;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 01 Jul 2026 11:27:38 +0200
Subject: [PATCH 5/6] partitions: gpt: fix wrong error messages
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-gpt-size-fixes-v1-5-aec2e5641a19@pengutronix.de>
References: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
In-Reply-To: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=928;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0tA4MdXCekRFZkxk1yoQcB87h5hzPdvt2y6RmcWBna0=;
 b=qbMq0bWFJk9ZPr+pM3Buf/uoKcUv5un9DtyB8phVzALTUkHERVVYw+2TW9O6FLpbjdk3bpLKn
 jT9eFK+W56+DY+dbh2YxIZKFAYjgHpUYb18dgnt55nKdkhXfUgTt68h
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_102742_114298_5942B10C 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When CONFIG_PARTITION_DISK_EFI_REFRESH is enabled we should
    say that it might be automatically repaired, when it's disabled say that
   it can be repaired with parted, so inverted to what's implemented. [...] 
 
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
X-Rspamd-Queue-Id: 21B7D201955
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: tjdwa8bt1ohp6ntyfj1j8re3zba76xpm
X-Rspamd-Server: mx1

When CONFIG_PARTITION_DISK_EFI_REFRESH is enabled we should say that it
might be automatically repaired, when it's disabled say that it can be
repaired with parted, so inverted to what's implemented. Fix that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index e58f86cd9d..04f7117389 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -484,7 +484,7 @@ compare_gpts(struct block_device *blk, gpt_header *pgpt, gpt_header *agpt,
 
 refresh:
 	add_gpt_refresh(blk);
-	if (!IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
+	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_REFRESH))
 		dev_info(dev, "GPT: will repair later if global.system.gpt_refresh=1\n");
 	else
 		dev_warn(dev, "GPT: Use parted to correct GPT errors.\n");

-- 
2.47.3



