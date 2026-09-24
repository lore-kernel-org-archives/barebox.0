Delivery-date: Thu, 24 Sep 2026 20:01:57 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9nld-005rjb-2j
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 20:01:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8767A202136
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 20:01:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FMwIPvpo;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=TByVeMb2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790272913;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=hZkR/KfjIkcWdeeUDF/Htqg9B2jEI/CIIhioxNN0YGs=;
	b=DYUg9K55P+LF6jl1Blk/quE9/xdoCN9Xj3kvd+vxwWLDjjESfZhGfy8cogNFAODDzQOCXa
	8BzL5x/Nduv6z0sszhV+mbfFPn1l2w9DZS3VwsOm5Nza3fYXX+KdozrZX0bAGL6scnr37U
	uwu0HmpUW2ryhJGGDERqMrZy+m8bjqFBeBC+kt/Mq3jlErIMvz2GXM38BjqKYDJZIwB+xn
	Fd++/JrJ0i9PNfGxtOYmACSVbuQilJLYxQVcV6D8IgXK+pYqYz+i3xAS0nIoF4G/8xm3E8
	1WhWLD5x9Rv4Ee+CQef482FgmNioh0CjE4mSLIQQGuWFnh5rV6J0ALqm3SClRQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790272913; a=rsa-sha256;
	cv=none;
	b=NfPOyK8n5EAokO9MErwR+HWSbDLVHA2Vdsvyj5vxIEjfo/NAGqi9lFV6V0WsqWta8+7IkZ
	xt3EgZ2eg6kL3xmGLTzMDDgbHQMqEM1q/2eRkgdv/o7vvLuuQvds0now4rD9Dt/t4q9T3N
	28TjdS8J+eBODnooHYcF0dvp9oKob0ok0LtIeZjxPto5vi2N4AilZI9DTgMIEplDmquAJp
	GIb3hoqG7uxHa2LG5AEmAdF672tC9fpEJ7zWD9B61WnvBbVn090a2oPPS18lZ6qFG/+TVj
	BiYEULbKauj91cR4JyRihyMTt+34LHZIxW0MZbPEHlCxi9gYAIh4mMKRUJT/NQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FMwIPvpo;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=TByVeMb2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hZkR/KfjIkcWdeeUDF/Htqg9B2jEI/CIIhioxNN0YGs=; b=FMwIPvpoedSxJm
	/fdUebW++sLzK0ZdoWsckZZ7NO1mIVyV16/svURcr67BPE2rjfMOhx+4QUxAwgDGpxZACXXQwUOeF
	2heMCwIXSuCTT7R/ocr/0eYd6sP+o3LX4WRIrUMSnBKWMgsyn8BJce6XfW6Wjqaxe+armV2d8FP9J
	tg+eJ9xcNKjFNgwpdLZCIB9MZ7EL1b3xuCAwt0FOC3om6uh9VmQHM06HT2FibWfBzMOmBSZFBGmjA
	wnb0iB8Td/WEisQLnsbjXf9RDcZofJAc3EsSbzQ26hfJcOMX8N9OAC//PtymKrLjrwEtBxhkqyoOa
	I/N4IcIIFCddBtKjURRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkD-0000000Br0i-3iw9;
	Thu, 24 Sep 2026 18:00:29 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nkA-0000000Bqy4-0KLm
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 18:00:28 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 643A54E4105C
	for <barebox@lists.infradead.org>; Thu, 24 Sep 2026 18:00:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2827860738;
	Thu, 24 Sep 2026 18:00:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F35E2103290CA;
	Thu, 24 Sep 2026 20:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790272817; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=hZkR/KfjIkcWdeeUDF/Htqg9B2jEI/CIIhioxNN0YGs=;
	b=TByVeMb2FjV0me7sxnZYXtdLLWD5MjAKdgcjS+3EDlQ0mNMNH8T3Ui+2joRwwNAwQ5a/Dx
	Lnn7hg6SSRE5fOEP5T0v79UzXAQTBpFHHBpKuadLUZI0TTW6dU1SoNXLaqzngjqQ3RRfaQ
	TDiT0u1VkD3oY2De/h0zAh+vUV/6mAljKiYNS54L5r0rXk/CBCb1kY1RTqK4Czwtx8R5Y0
	SlqfaP74nUZB90D8S3HT30jp88BqowQq+0QZv5t5oL9U5I05rGwe4XCV53DP6isE1/0ww/
	JyqfJIlyFAwPI6vcWQ6uiIHwws36vE4V5z4fbxrzyqz0azIfS+jlHfBc/awf4g==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Subject: [PATCH v2 0/3] FIT: parse and use the cmdline property of FIT
 images
Date: Thu, 24 Sep 2026 19:59:30 +0200
Message-Id: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNQQ7CIBBFr9LMWgxQba0r72G6oDDYMRYMYKNpe
 nehHsDlS95/f4GIgTDCuVog4EyRvMsgdxXoUbkbMjKZQXLZ8JNsmTKG6ck8yCGzlGhS2TlI2ww
 Su5prAXn6DGjpvWWv/Y/ja7ijTqVVjJFi8uGz/c6ieH8uZsEEOzYtFygs5119GbxP2dlrP0G/r
 usXuFXhb8wAAAA=
X-Change-ID: 20260827-add-cmdline-fitimage-42f6b2e930c1
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_110026_265673_B286583B 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  As of FIT v0.9, it is possible to pass cmdline parameters
   to the bootloader via a special property in the fitimage. This series adds
    support for this feature in Barebox. It also adds some tests to avo [...]
    
 
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
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8767A202136
X-Stat-Signature: 8484eso558gyfcf8kyxrrf6sammosakq

As of FIT v0.9, it is possible to pass cmdline parameters to the
bootloader via a special property in the fitimage.
This series adds support for this feature in Barebox.
It also adds some tests to avoid any regression on this feature.
As `cmdline` is a property in a configuration that isn't a reference to
an image, it needs to be whitelisted by fit_config_build_hash_nodes() to
not be hashed.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
Changes in v2:
- Skip bootargs configuration if CONFIG_FLEXIBLE_BOOTARGS isn't enabled
- Use a dynamic bootargs
- Added a test for the fit image command line parameter
- Whitelisted the cmdline property in fit image hashing
- Link to v1: https://patch.msgid.link/20260827-add-cmdline-fitimage-v1-1-56701e1f0093@bootlin.com

To: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Miquèl Raynal <miquel.raynal@bootlin.com>

---
Thomas Bonnefille (3):
      bootm: add fitimage command line to bootargs
      test: py: add test for fit cmdline parameter
      FIT: add cmdline to whitelist of non-hashed properties

 common/bootm-fit.c                           | 18 ++++++++++++++++++
 common/image-fit.c                           |  1 +
 test/py/test_fit.py                          |  1 +
 test/testdata/multi_v7_defconfig-gzipped.its |  1 +
 test/testdata/multi_v8_defconfig-gzipped.its |  1 +
 5 files changed, 22 insertions(+)
---
base-commit: 75819f9e196e2da048e96c8589898fdc38ef8e7a
change-id: 20260827-add-cmdline-fitimage-42f6b2e930c1

Best regards,
--  
Thomas Bonnefille <thomas.bonnefille@bootlin.com>



