Delivery-date: Tue, 03 Nov 2026 15:33:57 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOFaH-006pAi-0H
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 15:33:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 464DE202101
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 15:33:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=33eJKZ3j;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e7GR1gA8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716433;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ql17qzAMdlN5sTqamd4QOwJk+aZHQjaihAWY3AsZjFk=;
	b=ckGYy+KTiDU+ZQIRLmXO1+oxsoKFcXpKXflO74mNKV8S3DvlV+ciobUsLvNsPCAM8pyu9Q
	ddE6R+Z5Hh0UO1m1jPs8k79YVASfPLB6JbpAhU6skmENRfdaQ2mxLLhDIyCICoctbNfHLP
	dIaDvOaRbuqlsQDIzhf2OLAh5YV0pj/Mjwmx269Fm0rJfRIpLFtFWeMhMPm1CsGk/1abr+
	0h75YAf5Q/V2x4UPU5K3g2HNIKtNHzHVUqdm2sFIrM6IezIy2jcs9QwmYgaWz9Nt/XOHN3
	DncdnP9/8h+fJiO6vd5gVZhhhXb9G5VjNanCFIRgECO9Pzg4NLgLBeRsh3XkOQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=33eJKZ3j;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e7GR1gA8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793716433; a=rsa-sha256;
	cv=pass;
	b=RN6VdrsgfUBHFnUWOh4ICEZQTqbUtkJBfUEt0iPqD6ddJgEYFFLbKnq7rMKd09ySY5P6Zs
	P+WimTTCbCjMhvjHCaxAuPP4HNJlpkbvVQLKxelC7J/WirvRk1vGqWxcs3mv5k1g34yT5M
	TSRKqf7C3mIC1m7po+MJ1Zjn7KJpV31CPwk01r8CpJraekWEHvPMJN3diliIg9lSid5VgZ
	5U9xet2L8HH5Q0Z6fGZWTksG8ylGYDbXbFyjRYnwDAiGfgXIHikbyUz4BLeBYOLicxVTvq
	PmN/z37MjUtt9K8N+ZvQA4CW6FwiJGSoQ2b/UVkZ1Sd9pt/v01EGpl8gAhZdIQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Ql17qzAMdlN5sTqamd4QOwJk+aZHQjaihAWY3AsZjFk=; b=33eJKZ3jQEm2ZD
	tHXuMAkBV38ncWjgZjnBfGQSgkKAYfZ6rZ1qjaNPxJytHTMfH9xr1GKHG4Ye9i441+uVjDbmXclb1
	peSGglTp12zfqpc5dE+tLCd18xDtHWgEn/aMP8aOIPup8wm8uP7HdA9sU85U9hfJJaDAWPz9Rfnel
	HJ1YGvM37kj74mosye+DNY+GYCoEP5QoLFuYhT+Vt3tu7t5VNfY2q/G5ch3dWLYw2pZAbP51VJXGx
	UvFgio/Tj1DB2WtMBBHQaajkWrHYsqtRb7UZZdx5gOGWgLbRSXhQHgKHDrheM/UNlWaEpSkrdfsvd
	aI7KjrjgDthM67waEUnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFZ7-00000002jJ9-0Csh;
	Tue, 03 Nov 2026 14:32:45 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFZ3-00000002jHB-1QCy
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 14:32:43 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 96DE2202101;
	Tue, 03 Nov 2026 15:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ql17qzAMdlN5sTqamd4QOwJk+aZHQjaihAWY3AsZjFk=;
	b=e7GR1gA8DbwcWNe8AWAZog+NboVKCUl8xVFM/eI2uHu4z50Jeoh15KGWCl7JbSBpQBYFzg
	OOgRU2VWVhF7a/jlLOFIIoqtZwguW+/990IbQgBVsQpbkgBuHH1/ghNfNvRpSzV3dRLCQv
	sHhexHPZ5UXJPVQCPAx/XMUlKjZvv5LsT+uZu6Jr5uJlq4ikIplH3tzthfrmmCAED5K/8u
	BOyh/bA+SeoGWbXZxnWcZMh4szQx8IeOiqUc9+W6IXFLaYMlWnBZBrxGkAIV60+6LchX5G
	XnqtsipDegFrPglGP5JMMXBcEKyR89TMZyJcPy9TZFytXXuyEAjoPuDHQZZpfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793716355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ql17qzAMdlN5sTqamd4QOwJk+aZHQjaihAWY3AsZjFk=;
	b=Li7hjidb2CYacQWpzJeolpAc+CMEVg5HSrYcho/bAJpynwntPaPzWfg6XMcKZeeUSDO8HX
	f5XYEMXSMpz4Lsy/QB/nAJEnbH5vPJNvqBCtTyg7topJfQdep5GPfLibBe1rf43XEPyA26
	zhMaGMn0FnqYQxOWQ0QcGnUR1oP22mQagGRy9RPV3LfpwH54oNQXW/MNJHNmCMenPS6LfX
	RpNyq55fUSJfP7RbuKMc0gCi5eRx5C6fUW328TbXDYW9cEUz0InG2EgV+QAFn6MowTMfiL
	EHjodFIHD2zHri++4J9R9DNkNu8pKX4aXh/Y18xSqHM9XwbneyplCRI6bdY60A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793716355; a=rsa-sha256;
	cv=none;
	b=P3e/9nxp8sskKMbt1flF+hyD2Bm6/5Z3+tCB0bBItkltAfog6ebgFhTJ2xtAyjgtTzRcLV
	shqYqWmvR1/a+MXlzfqU7fqH7aslTP0+ZqxDqLXm0dJRxhs4lZzKIylGoal3m5v36r0v1X
	CSQ5wRapjNeekYvQJOxF08B9uTDzSDN0xuIhafPrPNOFjOxq/7bZcqPIHxO/JZMQEG6DM3
	GYYLiTZGYNXPg+aAxggHFJmSYDIlgFW6rSnjCII/1N7tFUKDI8d4cVXDc0Wwo0IgwnqLqU
	lNI2tQP8NzXZKJtY/fos80uNHT+cMSw3jAZ7x5g6aXWAcrNCJqZEGPs1ZL1YFQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 7DB73741157;
	Tue, 03 Nov 2026 15:32:35 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/2] fs: jffs2: refuse to mount non-MTD devices
Date: Tue,  3 Nov 2026 15:32:30 +0100
Message-ID: <20261103143234.855394-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261103143234.855394-1-a.fatoum@pengutronix.de>
References: <20261103143234.855394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_063241_545987_DD0553F5 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> jffs2 only works
    on MTD, but nothing keeps it from being probed for other devices. mount -t
    jffs2 on a block device leaves the MTD pointer NULL and jffs2_do_fill_super()
    dereferences it right away. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 464DE202101
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: hj3hir879mkr8xqce9bccwm5zkfswskg

From: Ahmad Fatoum <a.fatoum@barebox.org>

jffs2 only works on MTD, but nothing keeps it from being probed for
other devices. mount -t jffs2 on a block device leaves the MTD pointer
NULL and jffs2_do_fill_super() dereferences it right away.

Let's fail the probe instead, like ubifs does when it's not given a UBI
volume.

Fixes: 831b3312e5fe ("fs: jffs2: add initial support for reading jffs2")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/jffs2/fs.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 84f39a0f2a24..8cbe15850e37 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -407,6 +407,11 @@ static int jffs2_probe(struct device *dev)
 	if (ret)
 		goto err_out;
 
+	if (!fsdev->cdev->mtd) {
+		dev_err(dev, "%s is not an MTD device\n", fsdev->backingstore);
+		return -EINVAL;
+	}
+
 	ctx = kzalloc(sizeof(struct jffs2_sb_info), GFP_KERNEL);
 	if (!ctx)
 		return -ENOMEM;
-- 
2.47.3



