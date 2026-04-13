Delivery-date: Mon, 13 Apr 2026 17:10:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIvm-00Bl4G-33
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 17:10:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIvm-0004V5-Du
	for lore@pengutronix.de; Mon, 13 Apr 2026 17:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XoGTXKK4w5iKsQz51gtUouLW+SUAy3vggVYMbmpGu08=; b=j7eupMV3YD3pnTk8TjmJzFixy1
	RjwMTa5aOfk98bZBNBcddIfJcbERGi2aCRLkgOU2eEdpyEZSdjdqkx+Acw3v9IyKxqdniWzhXsTDD
	2uCY6FgTuXzcUmfr0N4bIMH8K0wfDfxi3amv0oB7+5lRnjrqXwJH8cywG08LDSX0rvYDq4csgdhvx
	eYs3LDEiKJw33PfhqrWdp7zYGmN2MxdcRL9+JVe80Jbj3vepYu1pK6puSQMpIUKHtp9toQwWf8Cf0
	tcR7JWTEqdsmIOwM3njyFR+xyAZR9geRRdgjV0/EfpFJYJhCHrshv90tQHKqIcc+oKUvD9d+tobfS
	Mrw1YnHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIvM-0000000Fw98-38mM;
	Mon, 13 Apr 2026 15:10:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIvK-0000000Fw8o-0UgR
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 15:10:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIvI-0004Qm-FR; Mon, 13 Apr 2026 17:10:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIvI-005C4R-0t;
	Mon, 13 Apr 2026 17:10:00 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIvI-0000000HCdz-0ud2;
	Mon, 13 Apr 2026 17:10:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
References: <20260413134422.3562639-1-a.fatoum@pengutronix.de>
Message-Id: <177609300021.4099732.15434008868743435544.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 17:10:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_081002_246971_B84FB2BD 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] environment: support DT-compatible-specific
 overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 15:43:52 +0200, Ahmad Fatoum wrote:
> Board-specific environments are registered from board code via
> defaultenv_append_directory(), but this isn't possible when using
> CONFIG_DEFAULT_ENVIRONMENT_PATH with an external environment.
> 
> Add support for a match.of_compatible/ directory convention within
> the default environment. Subdirectories named after DT root compatible
> strings are overlaid onto /env from most generic to most specific
> after the default environment is loaded. The match.of_compatible/
> directory is removed afterwards to keep /env clean.
> 
> [...]

Applied, thanks!

[1/2] environment: support DT-compatible-specific overlays
      https://git.pengutronix.de/cgit/barebox/commit/?id=29bd991c06f4 (link may not be stable)
[2/2] sandbox: add a match.of_compatible directory to exercise the feature
      https://git.pengutronix.de/cgit/barebox/commit/?id=b071c63dc663 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



