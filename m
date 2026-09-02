Delivery-date: Wed, 02 Sep 2026 10:41:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gXM-009wjM-2x
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:41:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 84C8A201865
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:41:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kZDpJ85+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pp5hPK5Kft57ZFXj3Ku8EZ2S9tAbiKXV/rWeG2hkEfk=; b=kZDpJ85+sEC1rwaElffRg1C6yt
	kd7R7AFIN5nqwD1RbIUoVx3NiXqlXn8hm4O94oGvlGr7YEH9BFUtr1AbHW2PFbZXPBHmR6L1249wx
	GeUgJXt6uGVbdYH3fhYrIFo3RRtg1qJIchnTHNwxTn5XT0MQc/wTS86A7c9i6pWTyfLJSIryk7PqJ
	Snh+aC+HcRreTfBM00NENhwFgr8d3WaG2a7dA7uQZO13qUFL3IKoONRVowCzo1J7wT8LV1n9PS2A1
	NsTjiHNxazqej1XEzJxI1EYIel7w5aJO66Ql3ht4WqIzTVSeF21n8jr183zTB0D+gjXF6UBWwo4Bc
	IJyAlp4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gWL-0000000E7UL-0QaK;
	Wed, 02 Sep 2026 08:40:37 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gWG-0000000E7Sh-2bkR
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:40:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B8B23201865;
	Wed, 02 Sep 2026 10:40:29 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gWD-004Ytr-29;
	Wed, 02 Sep 2026 10:40:29 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gWD-0000000F42I-2X55;
	Wed, 02 Sep 2026 10:40:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
References: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/8] clk: stm32f4: allow building under COMPILE_TEST
 and fix the build
Message-Id: <178833842960.3589732.7910041382933679663.b4-ty@pengutronix.de>
Date: Wed, 02 Sep 2026 10:40:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_014032_816174_5B643059 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 31 Aug 2026 21:35:48 +0200, Ahmad Fatoum wrote: >
    No in-tree defconfig combines ARCH_STM32 with this driver, so it has > never
    been compiled and doesn't build: > > clk-stm32f4.c:1665:20: erro [...] 
 
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
X-Rspamd-Queue-Id: 84C8A201865
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: uw4xb43bejgs5uirh8b6iks3xqwrie37
X-Rspamd-Server: mx1


On Mon, 31 Aug 2026 21:35:48 +0200, Ahmad Fatoum wrote:
> No in-tree defconfig combines ARCH_STM32 with this driver, so it has
> never been compiled and doesn't build:
> 
>   clk-stm32f4.c:1665:20: error: 'struct clk_mux' has no member named 'width'
> 
> barebox' struct clk_mux carries a mask like Linux', so assign it
> verbatim as upstream does; the tables already hold unshifted masks.
> 
> [...]

Applied, thanks!

[1/8] clk: stm32f4: allow building under COMPILE_TEST and fix the build
      https://git.pengutronix.de/cgit/barebox/commit/?id=0095afed758a (link may not be stable)
[2/8] clk: at91: sam9x60-pll: allow building under COMPILE_TEST and fix the build
      https://git.pengutronix.de/cgit/barebox/commit/?id=28713701e33b (link may not be stable)
[3/8] clk: composite: return ERR_PTR on registration failure
      https://git.pengutronix.de/cgit/barebox/commit/?id=db7edab4a57e (link may not be stable)
[4/8] clk: fixed-factor: use 64-bit arithmetic in recalc_rate
      https://git.pengutronix.de/cgit/barebox/commit/?id=9398f8d6aee5 (link may not be stable)
[5/8] clk: imx: pllv3: use 64-bit arithmetic in fractional PLL recalc_rate
      https://git.pengutronix.de/cgit/barebox/commit/?id=153ce01c4156 (link may not be stable)
[6/8] clk: divider: use 64-bit division in _div_round_up and divider_get_val
      https://git.pengutronix.de/cgit/barebox/commit/?id=95ccfc4e30ac (link may not be stable)
[7/8] clk: divider: round up when searching for the best divider
      https://git.pengutronix.de/cgit/barebox/commit/?id=041910e67955 (link may not be stable)
[8/8] clk: divider: fix calculation of maximal parent rate for a given divider
      https://git.pengutronix.de/cgit/barebox/commit/?id=683819ecd972 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



