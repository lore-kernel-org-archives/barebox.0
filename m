Delivery-date: Tue, 25 Aug 2026 15:50:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyrXi-0075Vg-31
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 15:50:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 68D3C202495
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 15:50:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TQRxNi4x;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lprl/FaVDM0cmJzSO5TrifWD4+rHRjp3rOSBmZKnqeU=; b=TQRxNi4x+JbTymihOT6ACnRf+6
	4bAUVsS9IY/qPX/4rol3E1BhxuVt/q8DYdM4lMTXuJ5JFeUkDA/Sxpcf5Q3/bHuNw+mcpELhZ3EYw
	cgrFty0ZrWdRK780KZJppzhkYg/PXqC/xklSvPVCNN9e6JTxHdV9bZx55p0IIeKaFXYBxfESmx9Pk
	aEQ7iHn9n6mG1lWZfUtYMW1kUxtRfZWVcPh9YOuTlKEKPhn96FjFdoRTUtcZylC0A0SY+5LCCnH0e
	R1TokUaQ98MaIxqZ9hsKeYdhWfOPkNXD83awUHgf8gP5zIM1JMbyEw6RgLa2DHldXn92f989fKfoJ
	4hoPv1eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyrWp-00000000txc-1CCk;
	Tue, 25 Aug 2026 13:49:27 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyrWl-00000000twb-1sUa
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 13:49:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 99F7F202454;
	Tue, 25 Aug 2026 15:49:17 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyrWf-003HbY-1j;
	Tue, 25 Aug 2026 15:49:17 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyrWf-00000002qCo-1zEX;
	Tue, 25 Aug 2026 15:49:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stephano Cetola <stephano@cetola.net>
In-Reply-To: <20260824-send-spi-rockchip-busnum-v3-1-96ef89a157f7@cetola.net>
References: <20260824-send-spi-rockchip-busnum-v3-1-96ef89a157f7@cetola.net>
Subject: Re: [PATCH v3] spi: rockchip: initialize bus_num to -1
Message-Id: <178766575747.677163.14367284476409610691.b4-ty@pengutronix.de>
Date: Tue, 25 Aug 2026 15:49:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_064923_642654_82B4888C 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 24 Aug 2026 18:21:05 -0700, Stephano Cetola wrote:
    > spi_register_controller() only runs the OF alias lookup when > ctrl->bus_num
    is negative. This driver's kzalloc'd ctlr leaves > bus_num at [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 68D3C202495
X-Spamd-Result: default: False [-57.71 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: iw3wpqiq93inozdymozxdtqejswh1tit


On Mon, 24 Aug 2026 18:21:05 -0700, Stephano Cetola wrote:
> spi_register_controller() only runs the OF alias lookup when
> ctrl->bus_num is negative. This driver's kzalloc'd ctlr leaves
> bus_num at 0. The lookup gets skipped. Every Rockchip SPI controller
> ends up on bus 0.
> 
> Any board that enables two Rockchip SPI controllers at once hits this
> bug. Both end up on bus 0. Looking one up by bus number can then
> return the wrong controller.
> 
> [...]

Applied, thanks!

[1/1] spi: rockchip: initialize bus_num to -1
      https://git.pengutronix.de/cgit/barebox/commit/?id=df1055a2e0dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



