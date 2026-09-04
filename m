Delivery-date: Fri, 04 Sep 2026 11:32:21 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2QHV-00Ag4K-07
	for lore@lore.pengutronix.de;
	Fri, 04 Sep 2026 11:32:21 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=N7bU5hGB;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9DA322058BB
	for <lore@pengutronix.de>; Fri, 04 Sep 2026 11:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aSGUYiHjiVGWoKr8XTGNsBMteTpuPCxZQ3sgtE+SNxg=; b=N7bU5hGBOCZB8fb2n+Wp6PKXm+
	K0yCfRmnf9jXVLCibMTgIopXx8UP5dfZgVx5rZrj9IGbR1U6ep39XPCTgwkx8Fwbz5aFFJiyUzSvJ
	96JvSUdswM3ChdpX43Jb7I0sWwlMUxV7ePzThHCTGBcEbJn608YR3L9/nb8J5HNIWIUEaBc25AAwB
	8Luq6f3vuE6aG27ezbBvWFuPzAywWCirc0XIUSKMj0t+ER9Ln1Krv2He9INkrKhPjCz7kbnY7JRsk
	hh83kguLMIJNMTQGeudvifXuIJf0ITg0wrLb/gJmvtjqaBCyoAwTi+fwnMchaa0MT7VoVkyt5PGPc
	3anR0e8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QGP-00000001Xd6-1aTP;
	Fri, 04 Sep 2026 09:31:13 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2QGK-00000001XcD-422F
	for barebox@lists.infradead.org;
	Fri, 04 Sep 2026 09:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 14925202887;
	Fri, 04 Sep 2026 11:31:07 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2QGI-004tTZ-3D;
	Fri, 04 Sep 2026 11:31:07 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x2QGI-0000000Fd4P-3uzz;
	Fri, 04 Sep 2026 11:31:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
References: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
Subject: Re: [PATCH 0/4] arm: socfpga: iossm: cleanup and fix SDRAM setup
Message-Id: <178851426693.3725039.9720997157059545216.b4-ty@pengutronix.de>
Date: Fri, 04 Sep 2026 11:31:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_023109_152757_B655EFE4 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 03 Sep 2026 18:12:41 +0200, Michael Tretter wrote:
    > barebox needs to wait for PLL lock before starting the SDRAM calibration
    > in the EMIF. > > A developer can configure the PLLs that are us [...] 
 
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
X-Stat-Signature: g4wo8zqbknc5fudh879xcxncf5but15n
X-Rspamd-Queue-Id: 9DA322058BB
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[]


On Thu, 03 Sep 2026 18:12:41 +0200, Michael Tretter wrote:
> barebox needs to wait for PLL lock before starting the SDRAM calibration
> in the EMIF.
> 
> A developer can configure the PLLs that are used for the EMIF at device
> configuration time. The SDM firmware writes the configured PLLs into the
> handoff data.
> 
> [...]

Applied, thanks!

[1/4] arm: socfpga: iossm: remove unused num_port
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ca865edd2a1 (link may not be stable)
[2/4] arm: socfpga: iossm: fix macro
      https://git.pengutronix.de/cgit/barebox/commit/?id=566ce1d63e32 (link may not be stable)
[3/4] arm: socfpga: iossm: refactor register access
      https://git.pengutronix.de/cgit/barebox/commit/?id=a99ea763fb4d (link may not be stable)
[4/4] arm: socfpga: iossm: wait for PLL lock from handoff table
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbac8f42939c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



