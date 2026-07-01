Delivery-date: Wed, 01 Jul 2026 11:29:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1werFg-00BoiH-0A
	for lore@lore.pengutronix.de;
	Wed, 01 Jul 2026 11:29:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D9B97201955
	for <lore@pengutronix.de>; Wed, 01 Jul 2026 11:29:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2macctGS;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=YyRP91Sf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nUFjoW7mhDpiDfwavD0F7A5+SgRYQRqmLnmIPHdWFdg=; b=2macctGS83YcY3
	yQAhIpKeH+5y0A8qxXQub5nQJpjs+eWUQy4HbsOaSThtGHPaaZkiDuYFOzsOzV4/C/Hjg/jDYJU6I
	WStEMNeAn9JKfUdkfkwR1LSgAI3vECQf8xokOcDg5EXUuXnxUmVTULvYcs2iswiuqFReF46RMPAvx
	BV8kwvi4+sPjVSGpGm0dMelU6KJu/inaiLVngzj1PyUH1HYDDREyZW9R5yG+IZ0tiqf8cmW2QCODO
	UmsY+sCerM+4dNJLkralPy3VLPSqT56kkYOsUJmbLnCd2nrGq5OkZDRoz8YuuoYsLpd0Z6AL16tP6
	vbgPebTplXCIbmsIpdGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werER-00000001CDF-03cZ;
	Wed, 01 Jul 2026 09:27:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werEO-00000001CC2-3UhL
	for barebox@bombadil.infradead.org;
	Wed, 01 Jul 2026 09:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=nUFjoW7mhDpiDfwavD0F7A5+SgRYQRqmLnmIPHdWFdg=; b=YyRP91Sf9ZfjJGH5plkK05dL50
	NUlWhmgHeOpd5x1iwtQXwPywQukBMMVlf9a0pKcIx5xkAetDV7SoNhWclNcxcyeSC2WHjHnxxlYj6
	Usbj0otR4iGiu64ik+SiLR5mmJb2NLTh5wXxvKfW4pb5mWJUf8D7SoyTgVtqX7iyPnsV2cHwMzlpn
	Av3Sz3INhgA04CvYStzBym3mXsBYNgPTbDjTEUWtl+YFvVzQfhj5G89nUiLqUdINqxVabi0cPv6QZ
	FuldoQnK7rpmO9WN+ro7Jq9cegBKgAKhNTakz31knCHKmzt6ZiBB+AXXNrAd5ymBqwBXJLH1AYzna
	cHvX9WyA==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1werEL-00000002ZEr-3AFl
	for barebox@lists.infradead.org;
	Wed, 01 Jul 2026 09:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CC172201A91;
	Wed, 01 Jul 2026 11:27:38 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-005YRl-1r;
	Wed, 01 Jul 2026 11:27:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1werEI-00000003pCn-1wFD;
	Wed, 01 Jul 2026 11:27:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/6] GPT: fixes around last_usable_lba
Date: Wed, 01 Jul 2026 11:27:33 +0200
Message-Id: <20260701-gpt-size-fixes-v1-0-aec2e5641a19@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIXdRGoC/x3LMQqAMAxA0atIZgOxSkWvIg5VU82ipRERpXe3O
 D4+/wXlKKzQFy9EvkTl2DOqsoB5c/vKKEs2GDKWWqpwDSeqPIxeblb0ztTWNEzdRJCnEPkP+Rn
 GlD5KvGDfYAAAAA==
X-Change-ID: 20260701-gpt-size-fixes-fa23624e09b0
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782898058; l=1503;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Vf7Y9gRErkSB1oCZRPkwKdjE2K3FM1KiCozF0K7YM6Q=;
 b=/BfyDU5bDa5ZEeylQ0zxES2pgX6UsB9FKxyN/mkazR/TgyOTrTqyF7TbRQ+Dt+Efvh8QGjz/m
 moc29uyP6f+BQYqklyVCV4Q5FWuqIcwBl1Rk6qlXP3XJ6eN9TmbTj1H
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_102742_035965_590C8274 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The last_usable_lba field in a GPT specifies just that: The
    last LBA we are allowed to use for partitions. There are some bugs around
    that fixed in this series: - When creating partitions we never actually check
    against last_usable_lba, but instead the device end. - When writing a disk
    image to a device the last_usable_lba is usually set to some value matchin
    [...] 
 
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
Cc: Sascha Hauer <sascha@saschahauer.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Queue-Id: D9B97201955
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,m:sascha@saschahauer.de,s:lore@pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: mih9gp9ino1da5m67gxzoeqiagr3zgdc
X-Rspamd-Server: mx1

The last_usable_lba field in a GPT specifies just that: The last LBA we
are allowed to use for partitions. There are some bugs around that fixed
in this series:

- When creating partitions we never actually check against
  last_usable_lba, but instead the device end.
- When writing a disk image to a device the last_usable_lba is usually
  set to some value matching the image size. When writing the partition
  table later, adjust the value for the actual device size so that the
  full device becomes usable

Also some logging fixes/cleanups included

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      partitions: gpt: Adjust last_usable_lba to real device size when writing
      partitions: gpt: refresh also when primary or alternate is invalid
      partitions: gpt: validate mkpart range against GPT usable LBAs
      partitions: check new partitions against usable LBAs, not device size
      partitions: gpt: fix wrong error messages
      partitions: gpt: log a message when partition table refreshed

 commands/parted.c       |  8 +-------
 common/partitions.c     | 28 +++++++++++++++++++-------
 common/partitions/efi.c | 53 +++++++++++++++++++++++++++++++++++--------------
 include/partitions.h    |  2 ++
 4 files changed, 62 insertions(+), 29 deletions(-)
---
base-commit: 18599acfcbf38e95edc605f89e257e32f67d0ac4
change-id: 20260701-gpt-size-fixes-fa23624e09b0

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



