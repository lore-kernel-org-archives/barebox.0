Delivery-date: Mon, 28 Sep 2026 14:26:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAR1-007Hxk-1r
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:26:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 655912010E2
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:26:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NXm2rRfe;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PgcwxeeC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598379;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=AoBRslJ2pdRxWqAB08AHfYS9ffU5qZQGnCrhUVSHXAY=;
	b=avJ30x9LjubVYR4srWBc+FuzRT7cfQJTjZy+lSjuVhLZNulFuhQTQ1J0yVD6WITXgj2pWT
	WhPplZXiMBbsIeHOqz66mGGvYH5PapGnWjx1FSRmKtil8sI5Cf36HLdacFqafXqVeeuNxs
	G2HrcB1kOHQwaNpc4Hk6ZDcDqao0D+AQdZ5ZILtSN8WF0pFBl1HfOzWfqjOb6m2ebRq6+x
	K1Rc/lpX7J/4zSzapVaO71IXsBcvUlvP4eAdi62PAQooNAhkuDessMU7YdGAqzxXCuGudR
	X4KK8l0YtE8ih08E3zGnRJbm64Xyl1cyMxpw+a0cMJlxC03rqU01QePjNeylyQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790598379; a=rsa-sha256;
	cv=pass;
	b=ah9GBKH4ff+lStWUYyMytiRbwrCvHZ0TYBX1IXZ+ufcmvVYkwNPGqTv7TOctm8TTVYOQCJ
	F4tiYk8Q2p4iL+jVFiLZi3q+Tch/rGdAMbnOLPJa3mSumSQejcAcOj7N922/yTSgsdTs4B
	LFLEwdWqiQ8Fafd57Eao81LYO8Nroj716kGKFsSkynchihs/IR9OipLahyXuMzg+7g3lZm
	bVzeO3hIT4TIDqcJBOjogv4iiqhL2DDq+yUvVhk4jh4x+oIR3Njs4KZBN26qer6VF1oQe6
	lRwcPCOux0xWcUYHLiedwlr0VIEaZ3UL2yc80u7hqpqsDDkGxKa7B7jyazJMiQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NXm2rRfe;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PgcwxeeC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AoBRslJ2pdRxWqAB08AHfYS9ffU5qZQGnCrhUVSHXAY=; b=NXm2rRfeVXuNbk
	NboZUX/4g0diWQMj53EmVZJ3AkypjwHFP1T32ReB6ITSJy1zu0fI34bNI78w88z56rGLxXjS+eIuV
	IkpwSUxMuu8Zcs1xNVwCCgO919PfXcM2YugNwOia4IZEn5t+Q5sX2gK9dHFOSHbGPacqcSe4OBQbw
	PoDwxB20fydy8DKZmyqyAnga39VvM8Qx0HtHWBew6no5WBGdklMYHmYGuBh+E0YnyxFRGg1Kiadg+
	ol48Zru0QdBOHJiS/Ph5ablMnXJ3ZzT2z4JVDdAmAuAp6iPvzpl1GnoN7c/zHA61JYNMrochX0xI0
	l+dO+pc+gjTtYDJ8MBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAPs-00000000XyI-2MrJ;
	Mon, 28 Sep 2026 12:25:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAPp-00000000Xx1-1bMs
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:25:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B35ED200109;
	Mon, 28 Sep 2026 14:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AoBRslJ2pdRxWqAB08AHfYS9ffU5qZQGnCrhUVSHXAY=;
	b=PgcwxeeC1mjHv6XmFGYEtjATp+8dzzWJPNbjiWw2wuMDwj7JBnBoT+IuN1dQFgFWpH1Kat
	by6e06T7p0FcJZI5mGBqW2ushDE4hr5ac/lsWgkkfMGpsboBh2jy0+xecPfJ1K6ez7Bc77
	83V/fQ8JxycMgdNPE34ikSuRx4Ln+M22v9CDnAidupoP0159nsbCrnNZnlb5aSHrqgbY3h
	790EK5B9N9yCoq4Tv8sPGcSixwRJoUS1MpJALILwlpdbqI/q7tsJe5qJYR49VdtwAQ7Pdb
	8JfwAyPRf2uHTBeftBhxv16xxJIw/rKUpo1e0wGAokRbUvt4YQCm6r4bhXy2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AoBRslJ2pdRxWqAB08AHfYS9ffU5qZQGnCrhUVSHXAY=;
	b=DuyYFVnG9rR32PLEpwULRq8Y+oJlZg19Q9u4vYCd77EcAvxLA5h+nsExZNS5udrBMFmUXj
	n3aASmWMME2BJKKltRyBSa3FE8lEgjUz+U+WB1A2hEBWAmdVilQxeRXTeaEiXYg8okN3jj
	6+ouetIDVUfyY9QM2RGQDgtdd6eJi4j2T9/u/kUr1xyBBala2dfPtSUmjzXPMOhVx5LVux
	fYDbWcWmuwycuxftwRPGjrH7OXWeXvgpqAHtnEgfWdkDUfrQ6jd3+jUzn770wSb0LOmCNm
	A6KkiveyamSIUVoqn5g2uXUcym3RFV6RhbB/byOgQA7nKNhuqwfWFVo0yLaRfQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790598302; a=rsa-sha256;
	cv=none;
	b=KDKlyrMHQiXzjZC+8HYqbzPv+hLEsxxSHSxX7Bt5YJDtvYCtmL+OvMaLC9ZPrTMHB7CKzh
	SOCm5KBZ1O2vEuRwS9kaGE/eGvuJ7ZIkz/cBQ+U509AR/ro6GGja3ApsX95fdVEtC/W4gW
	rUZENz0+VVUZjmyGakbfaSBX5siUKZ9YM41xYk5qYMbroJ606f+pOwcQGGSTGzh10NnJvM
	hXhIHGK8b73kBbB/NRtV5JXaDWG2MahrcDTa9undxrXvCQwN3KPzB7f5/0xlnz03mQVAAW
	0P7pr/QOel1qMb6pS+3bMuZC8y3tVRpgPu5N84vBn4/3Mfn1FvbOMTfqS/siBA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAPm-003Dty-21;
	Mon, 28 Sep 2026 14:25:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/2] PBL: enable hash functions for Vendor Authorized Boot
Date: Mon, 28 Sep 2026 14:25:00 +0200
Message-Id: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJxcumoC/x3MTQqAIBBA4avErBtQ++8q0aJ0qoEw0YgivHvS8
 lu890IgzxSgz17wdHHgwybIPAO9TXYlZJMMSqhadKpF7R93HujmHcM2FW2JVHXaNHOpjTSQOud
 p4ft/DmOMH48FaeZjAAAA
X-Change-ID: 20260928-crypto-pbl-sha384-e59cd7b4cd1d
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_052505_574906_88BC1688 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Altera's Vendor Authorized Boot (VAB) uses a sha384 hash for
    verifying the second stage boot loader. As preparation for adding VAB, make
    the sha384 and sha512 hash functions available in the PBL. Loading the second
    stage loader from flash and verifying the signature will follow as separate
    patch series. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 655912010E2
X-Stat-Signature: gn3fzikejoffpxuu3kpr45y7db64ts9u

Altera's Vendor Authorized Boot (VAB) uses a sha384 hash for verifying
the second stage boot loader.

As preparation for adding VAB, make the sha384 and sha512 hash functions
available in the PBL.

Loading the second stage loader from flash and verifying the signature
will follow as separate patch series.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      crypto: make sha384 and sha512 available in PBL
      PBL: add oneshot helper for sha384 and sha512

 crypto/Makefile          |  1 +
 crypto/sha4.c            | 11 ++++++-----
 include/crypto/pbl-sha.h | 29 +++++++++++++++++++++++++++++
 3 files changed, 36 insertions(+), 5 deletions(-)
---
base-commit: 4a752d2303440195e12ed1a4e642b0be5b450b8e
change-id: 20260928-crypto-pbl-sha384-e59cd7b4cd1d

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



