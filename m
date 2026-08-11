Delivery-date: Tue, 11 Aug 2026 12:14:38 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtjVG-001whD-0a
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 12:14:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C4C5C2006B4
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 12:14:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lkxzK+mb;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fBfKpw3nYtKjpmijoUf5UA2BN4QLTKNVtLnq9kopEcY=; b=lkxzK+mbj5c4b3
	CV5xmh67HnefmXFoHGP3medwjWCeXdN5TiRtgw7cLXwLRK9Wsvlq80bcoXFsMZ0F5flFREPhbffQ9
	EZSDq+I95Jjo78V0CcYxLFFArrUFVlI+XvhtKj6IrRZnADE2lsUyu8HwiwkRhuIbGe0BSqHCXnLKa
	luQ8F8O0RrTJsv149+IIkcufS3d8dTxrRqhDIJ6A0NxvskQ0KxGdK3hjD+L8dcC7FLVA8RBGtcliL
	u1C6PS+eeWGr2VkkrY/jQQDw/SfhiPUhHX/CeFvQKBPhqmaQyU+stTsgPmF4r0/rAw8VELKnSGyra
	7GVrYhODbNEX8X0BlJKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjTt-0000000Dp6V-31kM;
	Tue, 11 Aug 2026 10:13:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtjTq-0000000Dp4Z-0lzo
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 10:13:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 27F752006B4;
	Tue, 11 Aug 2026 12:13:06 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wtjTm-000vvr-0A;
	Tue, 11 Aug 2026 12:13:06 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wtjTl-00000004RKN-49P6;
	Tue, 11 Aug 2026 12:13:05 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH v2 0/3] PBL: enable timeouts in read_poll_timeout macros
Date: Tue, 11 Aug 2026 12:13:04 +0200
Message-Id: <20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALD1emoC/4WNTQ6CMBBGr0Jm7Rha/oor72FYIB3KJFpIWwiG9
 O5WLuDyveR73wGeHJOHW3aAo409zzaBvGQwTL01hKwTg8xllQspcKQ+rI5web7QUMDAb0LrsdY
 tKdWUulIS0npxNPJ+lh9d4ol9mN3nPNrEz/5vbgJzHApdtkXRNqqs7wtZswY3W96vmqCLMX4Bs
 xuuh8MAAAA=
X-Change-ID: 20250121-feature-pbl-get-time-ns-6d9e8874d582
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_031310_379359_3A385865 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Without a time source the read_poll_timeout functions will
    deadlock in the PBL if the break condition is never met. This series introduces
    the necessary timing functions in the PBL for ARMv7 and ARMv8 [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 4eg791nytu47um4qpwczr1rbeg17rj8b
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: C4C5C2006B4

Without a time source the read_poll_timeout functions will deadlock in the PBL
if the break condition is never met. This series introduces the necessary
timing functions in the PBL for ARMv7 and ARMv8 based on the ARM architected
timer and enable their usage if available.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- Strictly guard the pbl timer support on 32bit ARM for ARMv7 only builds
- Link to v1: https://lore.kernel.org/r/20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de

To: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>

---
Stefan Kerkmann (3):
      ARM64: lib64: pbl: implement get_time_ns and is_timeout
      ARM: lib32: pbl: implement get_time_ns and is_timeout
      pbl: introduce HAS_PBL_CLOCKSOURCE marker

 arch/arm/cpu/Kconfig                   |  2 ++
 arch/arm/lib32/Makefile                |  2 +-
 arch/arm/lib32/arm_architected_timer.c | 15 ++++++++++++++-
 arch/arm/lib64/delay.c                 | 17 +++++++++++++++--
 include/linux/iopoll.h                 |  2 +-
 pbl/Kconfig                            |  3 +++
 6 files changed, 36 insertions(+), 5 deletions(-)
---
base-commit: 4705656eeeaba0dd3617b69172328daf4dbf9060
change-id: 20250121-feature-pbl-get-time-ns-6d9e8874d582

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



