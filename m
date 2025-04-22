Delivery-date: Tue, 22 Apr 2025 12:28:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arf-0040v3-0X
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Are-0001oC-HD
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WlrS7zUn4i82RdJHdY4Wid/qc0NWn9VikyW+JoqdLJw=; b=FuUzbFuf9kEjA51I3QS4utzrm6
	QCHZcjmy40x0l9sGTmOeZcFvNIyM7Ulr2zLyq7oVWEzxsRPSYkYbRAqEpzavgXEiKvvkuXShUhJqv
	ahp46anlIlhWSzFOZDt5GnVOIUKQ/S4+Tzy0jI/wt04R5fNdKRn/3DNP/JqMz5p99iC5lcA3ekwde
	wNMeKR0J1KnWElv+gFmuN9hdkGW6Wh/fgCIAnenFZ6Oq40yO+isrc8QPIamUmn99t2U0X6YYmtdyC
	pqOrXP7suKKkSercu9rl+2gd/cc0ATmC61vhBWvaaDj9D0fT6j1DW41xVjfo253HwcC/mfj6nGaOx
	o2itjVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArC-00000006ktx-2SMj;
	Tue, 22 Apr 2025 10:28:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79lT-00000006Wxo-2q3G
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:18:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79lS-0004Ai-3q; Tue, 22 Apr 2025 11:18:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79lR-001Wm4-2z;
	Tue, 22 Apr 2025 11:18:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u79lR-00CdkP-2m;
	Tue, 22 Apr 2025 11:18:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
Message-Id: <174531348185.3012682.916205580272654840.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:18:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_021803_740472_EF1F88FE 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/7] clk: add compatibility for
 prepare/unprepare/is_prepared
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 09:56:31 +0200, Ahmad Fatoum wrote:
> Instead of having to mechanically rename prepare/unprepare operations to
> enable/disable, let's just alias them in a union.
> 
> This risks code porters missing to merge both operations when they
> exist, but this can be fixed via enforcing -Woverride-init as default
> warning, which will be added separately.
> 
> [...]

Applied, thanks!

[1/7] clk: add compatibility for prepare/unprepare/is_prepared
      https://git.pengutronix.de/cgit/barebox/commit/?id=6fea0ca457aa (link may not be stable)
[2/7] clk: mux: replace width member with mask as in Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=6f5ac1a7d794 (link may not be stable)
[3/7] clk: mux: fix mask/width confusion in clk_hw_register_mux
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d649ed18181 (link may not be stable)
[4/7] clk: gate: underscore-prefix barebox-specific parent member
      https://git.pengutronix.de/cgit/barebox/commit/?id=76d9b8462bba (link may not be stable)
[5/7] clk: gate: add bit_idx member as in Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=8a8c08dd1d30 (link may not be stable)
[6/7] clk: composite: change mux/rate/gate members to clk_hw
      https://git.pengutronix.de/cgit/barebox/commit/?id=88c47e010a65 (link may not be stable)
[7/7] clk: move struct clk_composite definition to header
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7fe93bd5fe2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



