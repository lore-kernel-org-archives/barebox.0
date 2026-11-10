Delivery-date: Tue, 10 Nov 2026 22:30:26 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQtQA-009UKg-19
	for lore@lore.pengutronix.de;
	Tue, 10 Nov 2026 22:30:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7C531202C27
	for <lore@pengutronix.de>; Tue, 10 Nov 2026 22:30:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Vkc5TtJS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794346222;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=n68lN2zgpNWn9A1TOCJ+txhpNs7fcLw6lO1jMNf1x8I=;
	b=QQhE+OHq8282ia+xBdRDyJkg3suRycFAQqGkgd5gcFidn2fJAmKDb54UudtsOP8nbhljBL
	dBao4tgwCI0/5MQFTPpYHwY7PT42PtcnftF1RgEPG4z1rPT4Po0CpCgU8lhBRTqiTw2Wso
	ti85p/g56g3j0ROx8O3Uy2Q6eCm8D4enEgEMv256JWzjFPOqSPBShBbQ5v3vRJc9UTfw2y
	bbSBlWcZZ4eeqAPdQPHPm33gwtbR3KktC5TrA/nAW5i1Ka4YZruHuWezCtzog9biXlXFLf
	/zH+tmdvBmjiLMjQUI9k+vm/F3ceiyo9XLdZc8mtnC9S4IASA06kqZ9HpOsYHw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794346222; a=rsa-sha256;
	cv=none;
	b=gyEmB0v0yF3sOHa2Fqp3DaTZiNWeHtX1eITkV7Qqw6MScMHzb+Gfte8ai26b24lxgN2UdK
	SUnTr+JI/Jx1FBCIOwh3vHK5kr2M36gH9eLgWuKeacSWhOAyNIC9UyLQqGOPxJsjOEfH8O
	F2W5VsEQsts/XOxss+zvQQXE12MVeIgwjF/YinZyu65mhJJuftVpNWNthvr0xHH1i3gTHv
	nvSr6TpKNU7eyNbpG48eVTgYpFB40p/RcY1zwhxjjkMwmsfOpIBWvjMaVyqaVWNjpK4gPM
	QeYrVqPCQAf3ToKU3OIjFVZ/qNRVMdx66+X5fLzBK09cNutIJ40mhCm1Mu/jFQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Vkc5TtJS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=n68lN2zgpNWn9A1TOCJ+txhpNs7fcLw6lO1jMNf1x8I=; b=Vkc5TtJS513jZMz163nw2b88oq
	wFErtUIVtQNPymWjoZB9uFf2YxQkSfUzFcnk5Iy7VhgFfRsTNXwgZv1vGgTVLCagOAN8NzZdhcDO8
	uoZZeB9wvzodzVExDlG0aI4SbKkilAEuFzXKW5SOhDwpxlLtUnVgrtei/VGNZ6cCul9XjOmnPE5ew
	tzk1uNbAn6Vmrn2GJhiPHq6/yWQx+mgGyDIr55eORDFMa8HQzxHhLsMoMvWZlEBcLPBP47qZFx6xE
	tUP+pFEtwHLy3ktNSRCWLHXjuA89Ue1Dx/nyleEY+ywoAShSKA355jb3EkJ2EkafTUkIxWQ0ZRhNJ
	xS3NaTOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQtOd-000000053JQ-1mvQ;
	Tue, 10 Nov 2026 21:28:51 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQtOW-000000053Hr-43yw
	for barebox@lists.infradead.org;
	Tue, 10 Nov 2026 21:28:47 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.18.1/8.18.1/Debian-6) with ESMTP id 6AALSh9I029734;
	Tue, 10 Nov 2026 21:28:43 GMT
Received: (from akurz@localhost)
	by blala.de (8.18.1/8.18.1/Submit) id 6AALShPg029733;
	Tue, 10 Nov 2026 21:28:43 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Subject: [PATCH v2 0/2] Kindle maintenance
Date: Tue, 10 Nov 2026 21:28:40 +0000
Message-ID: <20261110212842.29724-1-akurz@blala.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_132845_327484_D0EF7CCD 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Changed to v1: exended the bootm -c patch also an the iMX6sl-variant.
    Alexander Kurz (2): ARM: boards: kindle mx50/mx6sl: remove bootm -c option
    ARM: i.MX: do kindle-mx50 defconfig maintenance .../defaultenv-kindle-mx50/boot/mmc_kernel
    | 2 +- .../defaultenv-kindle-mx6sl/boot/mmc_kernel | 2 +- arch/arm/configs/kindle-mx50_defconfig
    | 13 +++++-------- 3 files changed, 7 insertions(+), 10 del [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[blala.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7C531202C27
X-Stat-Signature: g78983pnh4353nbez5mhp6oqe1ponjd4
X-Rspamd-Action: no action

Changed to v1: exended the bootm -c patch also an the iMX6sl-variant.

Alexander Kurz (2):
  ARM: boards: kindle mx50/mx6sl: remove bootm -c option
  ARM: i.MX: do kindle-mx50 defconfig maintenance

 .../defaultenv-kindle-mx50/boot/mmc_kernel          |  2 +-
 .../defaultenv-kindle-mx6sl/boot/mmc_kernel         |  2 +-
 arch/arm/configs/kindle-mx50_defconfig              | 13 +++++--------
 3 files changed, 7 insertions(+), 10 deletions(-)

-- 
2.39.5



