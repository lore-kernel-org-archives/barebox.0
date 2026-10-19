Delivery-date: Mon, 19 Oct 2026 11:54:09 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIk4H-000ZC9-0U
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 11:54:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C923F201BBB
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 11:54:08 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EMyc0Aj6;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=glq96NKw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792403649; a=rsa-sha256;
	cv=fail;
	b=NeYD4B08eeZ/YVEWwvjT0UGrSgUS0PHnecEPfd98sQUM61pFMjbe0XxFkKvtRTayL6kXoM
	cO+HVpcmRlLzbqorqrcCE17zaf7LOnKNKHsz3B6E76BwRerxhz5b9T7hil73J/W5NUDrBh
	bpn5huGGMvWnBSdXC/+KVRgGpBHIcPKlBWLxLPyz4AKAa0gVGyQaaiDTignnd2R98vJ+zx
	DywBv92c2icijfqt5sbyKJpkMYaMBWGPG2qXaRZy3fDcmrwnMdvFk5YieQXanIkakd4OpG
	PWXeV9OimamIns1cqO/jgNzippNMQXPKT0L0DdL4Vvkpo6EA9EBiZk05YaDvIw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EMyc0Aj6;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=glq96NKw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403649;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+FNdZYE2NqN/Tt9o75RfsYG3AXwzoMQE2sdEzAp3VT8=;
	b=FiiAObP+3s7zjzJdHANqCFf3qA6d52mDAn5mf+dQ1/PekJNW+4yw0iFtInaCmTCrzSEXZQ
	CwHXTN7f3/edfreZn3hlGgHgqsa7i1zvsLrzIW8epQcR5KwsDrMTIDM501BlEhZ260R5o0
	0j4OSCduI4JkPyZGQlZg2QOhcFGHlAClEg3++AgwREDX4h/JDp8EKBSHYAtPzr/Is4ECuZ
	NYIxXeYBWnluwt0q7sHTGueCCU/WPjVUFgo1sIPI+b/U9OXgPE3bK0tr7To2itMh0Zl0M5
	GPag2P5MjGPpC662isKCc76kpwq83hCUQY9ZQBcW7olO01MDJdfhM45iIF88dw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+FNdZYE2NqN/Tt9o75RfsYG3AXwzoMQE2sdEzAp3VT8=; b=EMyc0Aj6Yfi+wu2HK4shcfOJEE
	RzQiNSEZ2Snq6ueQ4tIdfWX9ckrEezODhAHS127kbDCOXT7Jhex4sGBsuy4ggPABBgycpGWv164NS
	9K8drN6Kbd1J+nStf49lB7nLqti8GObN5f/Kb3cCaLxF4BrRAFCQ5eLCoX0wlJUooYcwQo1ctxHuj
	7sPBvAQ0GeigGZHa8ptaua1EhjBIZAOzy0bvgDlQm5VyUROZ+yRx8RRp9/1odorHBR2pXwI0kSwdt
	WjZg0Yn1mAzsIjuE+FPGjawyPkBXFbA4obKTno+ZYGoFTV4lgNYPdtaLB8Bk8ePJheptMYgyKE6Pq
	vLT3tOWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIk34-000000074Gq-2yxU;
	Mon, 19 Oct 2026 09:52:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIk2y-000000074Ds-3kOu
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 09:52:51 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B324D201B9F;
	Mon, 19 Oct 2026 11:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+FNdZYE2NqN/Tt9o75RfsYG3AXwzoMQE2sdEzAp3VT8=;
	b=glq96NKwhnuH97Oj6x/gmH5alcHfHAQkmMYWwoki/OXBb+l7L9s6lYHiWrpEfj+4RCk9l/
	GentcdENJEwJFY8yOhS1FQjrsYw5WV9Px9qq+8tuaYhBH+HWH8ClCygL0EyJ0G93zw/lgf
	KyBK37sg0VSsmCjQ/2hBe6r60R5vrPCxnmXZUVk07SOevEeIYhEr1RM6Wf4wfyRWZk4Irk
	6COn3seqVo+ZuvK2hS+IQEq8L8FB4YryA35140B28BQ3ms95tfYQVdGdw0fk17T53xX5fZ
	VISJP44v/Ey6XZ1ytfL1mNUu9pivuH6e6YQaIrZF5+sF6I7uJAviC4AsuCEnQA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792403564; a=rsa-sha256;
	cv=none;
	b=O5aUwK55FtKq0DaS0H83eiog0aDvgmsLxY8ilvXHnxlmP4CnobuFm2TQeSxRjiri7PWR5H
	KVZG+l+XqMOWhgwj4DS2rfKtPzaeGDAxIuzr463MjKgy6zyzm6/Zv+YbTxOHnEQ8j1T6Dy
	OcNMW0HsjgwMQxw+ro7Xx2nL1jQq0TcTgCU/6kDhhbYSuX3Mj8S0keeuDABmo+nGy60PvY
	JjSDIHtcT1Wi1EmLO/66mNKyxoocydF05h4IqNicMtVUwfpoHcxByThpA6VFrNeXrZE3v+
	vrT/ksnHl6Eev4NnXQkve8klxQqhY4GYUAJIWVVZ7WYctetvAJ5C3bIucKpVVA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792403564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+FNdZYE2NqN/Tt9o75RfsYG3AXwzoMQE2sdEzAp3VT8=;
	b=Ohzj99wxpSZuXjJvFQFZc+5ct0SeZ1deuZgyahCxd0p5VQUIRr1+xvHR081P09YPGaSQhL
	pMe5xPgpq4ZkHYbIEjJZQ7e8z0wZIC9TMSSS9/2NvDlMnl009fPyCvE7jpYlEuCCOaJZMk
	UC1y1j802JxGdq9M8DEEI0a91U0XINoLzyfcTgVQt8BiYM7m7ni+ONqQ2ZSwVi+mo6YGOk
	OwLJznP4404iHVej79qbXn6GN1x6PZKNkauZPGr6fwYzCoTFXshgumuHT8x7VJIowTsufN
	yo85oPZpPVaOk5k5g1gnHwIPK5OkRdmbZhRAibyayBucvYvvJOGDkKwRf+by/Q==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] mci: fix read timeouts following SD card writes
Date: Mon, 19 Oct 2026 11:52:42 +0200
Message-Id: <20261019-atmel-mci-fixes-v1-0-6a636f3b28ca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGro1WoC/x3LQQqAIBBA0avErBtQicSuEi3ExhpIC40IxLsnL
 R+fXyBTYsowdQUSPZz5jA2y78DtNm6EvDaDEmqUQhq0d6ADg2P0/FJGYwZvtZPae4J2XYn+0KZ
 5qfUDxr5tImEAAAA=
X-Change-ID: 20261019-atmel-mci-fixes-994fa7c17ffe
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792403564; l=1244;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1UdFEQoCGIjJCl/HjVHgLB9Ti0dBUrxM9Y+ROTCs5SU=;
 b=v0xR4P9ms7uwNJPUapbNMY469Y5afoZo1Yvk/pea1Gs386wKnFZShmpeqI2gFrSAFmbjudm+x
 HQZi0GFNTU9DVeKxVU+FlXS0dQC+PSA0/3SikQmnZn+DVz3qixfPRMF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_025249_095100_3980F30E 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On a KSZ9477-EVB (SAMA5D3), saveenv fails on the first attempt
    after the SD card has been freshly flashed, and larger raw writes to the
   card fail as well: ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data
    timeout ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: C923F201BBB
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: bzdy4hwxh9u649rkzyk5ch7km81tamnu

On a KSZ9477-EVB (SAMA5D3), saveenv fails on the first attempt after
the SD card has been freshly flashed, and larger raw writes to the
card fail as well:

  ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout
  ERROR: atmel_mci f0000000.mmc@f0000000.of: command/data timeout

The card is still programming a previous write when the next read
command arrives, and does not answer it. barebox already waits for
the card to become ready before writes, but reads can still hit it
while it is busy.

The first patch makes the atmel_mci timeout message say which command
failed and how, which is what pointed to the cause. The second patch
waits for the card to become ready after each block write.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      mci: atmel_mci: improve timeout error message
      mci: wait for card to leave programming state after block writes

 drivers/mci/atmel_mci_common.c |  4 +++-
 drivers/mci/mci-core.c         | 11 ++++++++++-
 2 files changed, 13 insertions(+), 2 deletions(-)
---
base-commit: 6b2dee07d7189bcec749539574ff99580880e238
change-id: 20261019-atmel-mci-fixes-994fa7c17ffe

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



