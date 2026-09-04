Delivery-date: Fri, 04 Sep 2026 13:06:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2Rko-00Ai6Z-0d
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 13:06:42 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Mmjrp/d7";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C5CC0202454
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 13:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AOsubGH7CG+KMFMmu2uTjHt0ECINptI9T2PQxlmK85E=; b=Mmjrp/d7dg+phNioiqemgMotih
	7wwWPqgsyLAb8T+oJEehjjgzQ7QoC6YmODONC0hmnC6dJ2Xsz9T0xSuVN9+gO4ldZO71hpAB6KydA
	uGslXVVXNplJLDBupUtzTawen7oUxUoRmCwuUhblFKBxLt99bj1u6a7r/Cb1rSuI8IRh2GHkudf5S
	AZKfTD/SX5w6VPtMTPXZVFYJ9Qca1u+vp8KvqHZqKO3jFx7mXqujiJhQOy4xb3P8uH8Bo+p4bBu0W
	7kjnAHGJFHwgI4DRh9LFN5yRVqmIpK6ObOrHvgrnCDvttI1kIjZ3b9ztUzF+BKR6FjCT8woJ6FfbR
	JCcLHldw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RkI-00000001lv4-2bQJ;
	Fri, 04 Sep 2026 11:06:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2RkE-00000001luU-463x
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 11:06:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 93C042058ED;
	Fri, 04 Sep 2026 13:06:03 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2RkB-004ub5-1e;
	Fri, 04 Sep 2026 13:06:03 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2RkB-0000000FviR-1qiX;
	Fri, 04 Sep 2026 13:06:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Andrei Lalaev <andrey.lalaev@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
Subject: Re: [RFC PATCH 0/6] Add Raspberry Pi 5 initial support
Message-Id: <178851996343.3796718.12668635898613045355.b4-ty@pengutronix.de>
Date: Fri, 04 Sep 2026 13:06:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_040608_396538_37A61822 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 01 Sep 2026 17:12:55 +0200, Andrei Lalaev wrote:
   > This patchseries adds initial support of Raspberry Pi 5. > Since the most
    peripheral is routed though RP1 south bridge, > only debug UART an [...] 
 
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
X-Stat-Signature: t6zrd4csjyzwuon5imhn1c3gt1ga8w7n
X-Rspamd-Queue-Id: C5CC0202454
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]


On Tue, 01 Sep 2026 17:12:55 +0200, Andrei Lalaev wrote:
> This patchseries adds initial support of Raspberry Pi 5.
> Since the most peripheral is routed though RP1 south bridge,
> only debug UART and SD card are supported.
> 
> Boot log:
>   NOTICE:  BL31: v2.6(release):v2.6-240-gfc45bc492
>   NOTICE:  BL31: Built : 12:55:13, Dec  4 2024
> 
> [...]

Applied, thanks!

[1/6] mci: add driver for Broadcom SDHCI
      https://git.pengutronix.de/cgit/barebox/commit/?id=ee8c18d01137 (link may not be stable)
[2/6] ARM: rpi: add Raspberry Pi 5 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=85f4aea77e4b (link may not be stable)
[3/6] Documentation: bcm283x: add Raspberry Pi 5 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=025110663eab (link may not be stable)
[4/6] arm: dts: bcm2712-rpi: specify clock frequency for uart
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c5250c1d2a7 (link may not be stable)
[5/6] arm: dts: bcm2712-rpi: disable wifi SDIO
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a4e8f8e9afd (link may not be stable)
[6/6] bcm283x: debug_ll: add Raspberry Pi 5 UART support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e086e1f1623 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



