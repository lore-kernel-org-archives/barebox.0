Delivery-date: Wed, 19 Aug 2026 09:05:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwaMY-004mXz-0G
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 09:05:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8460E20102E
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 09:05:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I2uAvsnk;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i/qFWM8zjopsYcWX0/fAdTEHoQbDfvvjWY8uzX62OZw=; b=I2uAvsnkdTptiEvdiGX89ilt4k
	Gr9tpAa2TPLAf9H6T9nEBmhT4Xw1NtCkPKrYdP8zpa7687eaXvnuUtQH0rENxSVWCaPumVw/A5zr+
	0CxNF5oK0WfxA8xfrQPuxd9hgh1WCVd8j+Lc6nY6mU9UuXt8KXTq1n7J2ui7hehuPDxo1yxYE5ch4
	F+019+NSyN85cpexj8twB6xqOQbo6OKtsZ6Xjcfy/xI3wMaqia8sIg/axvCMIRs1KdytwrZj53401
	nWWsNCJ8cB0zlFeJfWSc7Di4ZwAZg/tmO3WEo44NsxeeJGKYt0XZindX4ysoQURndmE3ZrdiyohOo
	y4ktGEoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaLE-000000099b9-20PG;
	Wed, 19 Aug 2026 07:04:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaLA-000000099aS-1VfI
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 07:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C0CC520102E;
	Wed, 19 Aug 2026 09:03:55 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wwaL5-002Fd2-2D;
	Wed, 19 Aug 2026 09:03:55 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wwaL5-00000002UzL-2X2q;
	Wed, 19 Aug 2026 09:03:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
Subject: Re: [PATCH v3 0/8] PBL: enable timeouts in read_poll_timeout
 macros
Message-Id: <178712303559.595752.17510428723333442622.b4-ty@pengutronix.de>
Date: Wed, 19 Aug 2026 09:03:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_000400_551152_C7CE3503 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 17 Aug 2026 16:01:11 +0200, Stefan Kerkmann wrote:
    > Without a time source the read_poll_timeout functions will deadlock in
   > the PBL if the break condition is never met. This series introduc [...] 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: bix98mqettzr1r9q15okm7bz1sir4ndg
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 8460E20102E


On Mon, 17 Aug 2026 16:01:11 +0200, Stefan Kerkmann wrote:
> Without a time source the read_poll_timeout functions will deadlock in
> the PBL if the break condition is never met. This series introduces the
> necessary timing functions in the PBL for arches/socs implementing
> PBL_CLOCKSOURCE, which is every ARMv8 SoC as they implement an
> architected timer and selected ARMv7 SoCs.
> 
> 
> [...]

Applied, thanks!

[1/8] RISC-V: setup_c: avoid clearing BSS twice
      https://git.pengutronix.de/cgit/barebox/commit/?id=01c4186b3ea2 (link may not be stable)
[2/8] ARM/ARM64/RISC-V: pbl: add constructor support
      https://git.pengutronix.de/cgit/barebox/commit/?id=bb07ef11d630 (link may not be stable)
[3/8] clocksource: allow re-init for same clock
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac074413caca (link may not be stable)
[4/8] drivers: arm_architected_timer: refactor for pbl compatibility
      https://git.pengutronix.de/cgit/barebox/commit/?id=863ed4398f64 (link may not be stable)
[5/8] ARM: layerscape: re-init pbl clocksource
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e1c3c77947d (link may not be stable)
[6/8] ARM: socfpga: agilex5: re-init pbl clocksource
      https://git.pengutronix.de/cgit/barebox/commit/?id=b28ad579be5a (link may not be stable)
[7/8] ARM64: enable PBL_CLOCKSOURCE compatibility
      https://git.pengutronix.de/cgit/barebox/commit/?id=da7fa356d4a2 (link may not be stable)
[8/8] linux/iopoll: enable polled timeouts for PBL_CLOCKSOURCE
      https://git.pengutronix.de/cgit/barebox/commit/?id=16e6243f96fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



