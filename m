Delivery-date: Wed, 07 Oct 2026 08:01:54 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEKiw-00ApDs-2V
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 08:01:54 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 959072022EA
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 08:01:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KlAXcFUw;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=pDvBERYY;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=QVnmZ4m4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791352914; a=rsa-sha256;
	cv=none;
	b=JRiSBhA8c0WSHNa5wt5BoCF9+I2GjWxtV6pPF7Nt6N9K0k6KQ20kUe+0C44sE1/QeNEJxb
	YVX0q3wBdj/aCFzfwjBrYL2ijZC0vFSJgNjbXHBcflquKfNwxafxx8JnxThMATx2cJ8gY3
	MndeRx1BWBhQoAiXsu+0HA3jPqlH2efGpKL2GCuUleSs5o8FCrIJR7YhJoD5A0tpkF+Ahg
	VMpY+eQELm6R9j5fCcGNEzPdcEZwWOO9wbVF/TFpkDPQE7OC+zlr6/swjPYm10RecWrS48
	dIO8lr9tm38liWNvOxqfVOZWu9JHOlh+wDCtLBMm4SyOuTdB2JG7AYp3B6PTbQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KlAXcFUw;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=casper.20170209 header.b=pDvBERYY;
	dkim=fail ("headers rsa verify failed") header.d=norik.com header.s=default header.b=QVnmZ4m4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791352914;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=BpXKEWMH+z1M2Fcat1IpaM3hT49HSoOxJ9U58IEhzl4=;
	b=BDUfHvY0EKDzVDcPd/HuXSBZ4sduCHQlJEjatwf2Nq6hKht56eyyxKYFXQl/uY0q+fwAon
	c0pfUn2qjoE5ssbAY/7KvU1njYhHFTYAdJmJ8D7ji7kZvTXw9Il+TPQnojkvVhWxwpH75/
	Qbw/JwYadkGjFbbzjcHTQzzra9lxVpeZJbb5qRh3X30z8JkJX8XCa0ZhZYLp2kfG8zjKBD
	VL9H7FEH1aVQiP4gE6VrJh7yYql/HPF9HTGuS32LWzdeZRbZHTVx5RH1fM/T2tbT9H8QkJ
	Iyjh+IDDqmKHY/2ukx1akaLvo/RGv1pU5mUodrxKu59OwYyl9Cp3JOLSG7bM0w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BpXKEWMH+z1M2Fcat1IpaM3hT49HSoOxJ9U58IEhzl4=; b=KlAXcFUwLiJOaVl/RleHHA0r6U
	043vrG3Ts6F/bVTT/BEzNOoR2c5uIVm/uzTChdjq+2JscZNAVjpvPWSs7yS3HxHB0M0ASaTLOwKV6
	dbU0m4D/mtCiwZWqCEj6fyATY0Yap/2vR3zMYei8wPrrSYfdh2KXlVOOumyttxjvoh5EOGm5pR+zh
	GufFpYXgUh8EjCszi/jXitxX5AuzWu4jyIFZiwt0UEXZvTNoy3u9f/CTgkyBX8hxpmlRdPcu3pJ8E
	cQ/6EvbK6GCs5K6ldX79+8GV+vc00VVhD+wZwa/YgiZmce87o7FYKYYe+esQSzmwIm8iOZZarDzCZ
	GE/nxoHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiW-00000001kAq-1FPI;
	Wed, 07 Oct 2026 06:01:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiT-00000001kA5-0TjZ
	for barebox@bombadil.infradead.org;
	Wed, 07 Oct 2026 06:01:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=BpXKEWMH+z1M2Fcat1IpaM3hT49HSoOxJ9U58IEhzl4=; b=pDvBERYYlFk2f0tMueNEmhB+yF
	pJq7SRGS522mP5BfI91JC8ZIJFn6Jqj0X3kwxvzH2CseuDt7gwFY1DZFDFLdW9GIenGSHn/Uv6KBg
	iRPR4/uWsngPJRtdHA7uiMtSbehXaUoYrMP8rAY5Ef65MX9Z7TXYJgswSqvMpYFCsbOaC8VArO+L+
	+IKJKR2vybZy2o32C4HpvJQyqNHJVRCbIOwVHgknwYs3Dmpy6MUspjV32xzrDk8w8BoF5alHH3fiE
	sLJzufZDxrcTzCKVpTBw/jvBv3ugtfznHdTLpcuw3nz1quf2IxzlSvEenNFGvwI5C80kp7O5iqMSY
	qMUcMjuw==;
Received: from cp2.siel.si ([46.19.12.180])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEKiP-0000000Fnmd-1xHO
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 06:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
	s=default; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
	Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Unsubscribe-Post:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BpXKEWMH+z1M2Fcat1IpaM3hT49HSoOxJ9U58IEhzl4=; b=QVnmZ4m4Uk/qQPMK2fecyvZ82K
	L6cRjVnv6+qx+9AifnKThcchUtSSZKFuX//Wf68GRRDscGx0c3jQMG8wc6NXr9P89cu0sb2kpGDuG
	q5SqclMXUQN60jytxW3O/A/Q6SALLmORVq+f5EqzRto4m1ISHmX4Jc9IBgeU84npBIkxT5OpeswY+
	rmMcwk7splCnyLGoQ99eeFxr7KTUeEfvtl+UEOgEz2NzLQu9mGJsGJ6bsxGGR4scUvpTP4bi3u7m2
	j5N5H2AeT7W+nykOWAS5dZfkfZDIlbo4HfZXfUdcvBhvQDbEymX0takniAuCsDB8NIX5ftLLIRNS0
	SaX9ncDA==;
Received: from 86-58-88-254.dynamic.telemach.net ([86.58.88.254]:25803 helo=florijan-nb..)
	by cp2.siel.si with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.100.1)
	(envelope-from <florijan.plohl@norik.com>)
	id 1xEKh4-000000090el-2rIF;
	Wed, 07 Oct 2026 07:59:56 +0200
From: Florijan Plohl <florijan.plohl@norik.com>
To: s.hauer@pengutronix.de,
	barebox@lists.infradead.org
Cc: upstream@lists.phytec.de,
	a.fatoum@pengutronix.de
Subject: [RFC PATCH 0/2] defaultenv: board defaultenv now overrides CONFIG_DEFAULT_ENVIRONMENT_PATH
Date: Wed,  7 Oct 2026 07:59:51 +0200
Message-ID: <20261007055953.1001705-1-florijan.plohl@norik.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp2.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cp2.siel.si: authenticated_id: florijan.plohl@norik.com
X-Authenticated-Sender: cp2.siel.si: florijan.plohl@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_070121_629010_383C5743 
X-CRM114-Status: UNSURE (   4.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 4.0.2 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-2.99)[99.96%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1236::1:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_GMSV(0.00)[florijan.plohl@norik.com];
	HAS_X_AS(0.00)[florijan.plohl@norik.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[norik.com];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_X_ANTIABUSE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,norik.com:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=casper.20170209,norik.com:s=default];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[florijan.plohl@norik.com,barebox-bounces@lists.infradead.org];
	HAS_X_SOURCE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 959072022EA
X-Stat-Signature: mmbr39zyktee8yca8h7w7p3zh45e4rye

Hi,

since commit 7f1cc5dd869d ("defaultenv: add base and external
defaultenv in pure_initcall"), a board's own defaultenv overrides the
environment from CONFIG_DEFAULT_ENVIRONMENT_PATH instead of the other
way round:

  before: base -> board defaultenv -> CONFIG_DEFAULT_ENVIRONMENT_PATH
  after:  base -> CONFIG_DEFAULT_ENVIRONMENT_PATH -> board defaultenv

Documentation/user/defaultenv-2.rst still describes the old order.

On phytec-som-imx6 this means the board's boot/* scripts now replace
the ones with the same names from our Yocto BSP (meta-phytec). Booting
via these entries then skips the BSP's additional setup, e.g. the
device tree overlays it applies for mmc, emmc and nand boot.

This RFC restores the old order for this board only: patch 1 adds
defaultenv_append_external(), patch 2 calls it at the end of
physom_imx6_probe(). Before polishing it, we'd like to ask:

1. Is the new order intended?

2. If not, is a per-board opt-in like this series acceptable, or would
   you rather see this fixed generically in defaultenv.c?

3. If it is, what is the recommended way for a BSP to replace a board's
   boot scripts?

Thanks,
Florijan

Primoz Fiser (2):
  defaultenv: add defaultenv_append_external() to re-apply BSP
    environment
  ARM: boards: phytec-som-imx6: re-apply BSP environment after board
    defaultenv

 arch/arm/boards/phytec-som-imx6/board.c | 12 ++++++++++++
 defaultenv/defaultenv.c                 | 16 ++++++++++++++++
 include/envfs.h                         |  5 +++++
 3 files changed, 33 insertions(+)


base-commit: ba8e34dfa96f80ae405e0ea7ac1e62762c28246a
-- 
2.43.0



