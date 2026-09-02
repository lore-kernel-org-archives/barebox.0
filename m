Delivery-date: Wed, 02 Sep 2026 10:26:40 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gIq-009wWM-00
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:26:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 90B4820585C
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:26:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RNOntGq6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O88JIZ1VGZEjEuX8J3p/cftkm+lpw1g3Pnr3142Dnyo=; b=RNOntGq6mgnLMJQYLE2mY8mxvA
	7fqjK6u4zDDb1E7rMMSfIrxepkMNtqtUPkqAI6NB4BBjYHEH2VU4lLZ2LoqzTcBT0AXkZOuvDF5ht
	E8gWHw+SbwV/61Ey9kgTnKR+xKueRW6LKeIY0CS1Eb/Wgrj2uH9ADBj9p5ml2pJOwMXqnGK/gKm4O
	9tG5/boX2SsbiRVwrxXsU2rjZuWF7s0kd/kAjHCgAJb7AbOX6iAuWTfnCRTCbhyyGgZQ5rx72PBSN
	QAZBNmtfmKK+BdgCnW0oqXD72Ef+8AoS29aAKvKBNQqGdUSOjDpCX6w/Cvw84dRqHgB6drmrXPcfB
	UyZHRhIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gHl-0000000E5Uu-181v;
	Wed, 02 Sep 2026 08:25:33 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gHh-0000000E5Sy-17Xy
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:25:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 022FB201BCA;
	Wed, 02 Sep 2026 10:25:27 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gHe-004YnD-2z;
	Wed, 02 Sep 2026 10:25:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gHe-0000000ClIV-3df7;
	Wed, 02 Sep 2026 10:25:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260831132456.730833-1-a.fatoum@pengutronix.de>
References: <20260831132456.730833-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/4] common: boards: qemu: read the command line
 from the cmdline fw_cfg key
Message-Id: <178833752686.3041200.8010114679910080336.b4-ty@pengutronix.de>
Date: Wed, 02 Sep 2026 10:25:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_012529_465474_31BD6471 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 31 Aug 2026 15:24:51 +0200, Ahmad Fatoum wrote: >
    The /boot/qemu_fw_cfg script has a guard for /dev/fw_cfg.cmdline but reads
    > /dev/fw_cfg.initrd, so global.linux.bootargs.dyn.qemu ends up ho [...] 
 
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
X-Rspamd-Queue-Id: 90B4820585C
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ppbzkwku93owtocntxz7z4nkospyaprk
X-Rspamd-Server: mx1


On Mon, 31 Aug 2026 15:24:51 +0200, Ahmad Fatoum wrote:
> The /boot/qemu_fw_cfg script has a guard for /dev/fw_cfg.cmdline but reads
> /dev/fw_cfg.initrd, so global.linux.bootargs.dyn.qemu ends up holding
> initrd contents instead of the -append string.
> 
> 

Applied, thanks!

[1/4] common: boards: qemu: read the command line from the cmdline fw_cfg key
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb389727a6d6 (link may not be stable)
[2/4] efi: loader: fix EFI_EXIT2 tracing an uninitialized status
      https://git.pengutronix.de/cgit/barebox/commit/?id=9517f3e5ae01 (link may not be stable)
[3/4] fs: efivarfs: initialize dummy data written on variable creation
      https://git.pengutronix.de/cgit/barebox/commit/?id=fcbe297b3755 (link may not be stable)
[4/4] sandbox: actually build the assembly setjmp/longjmp/initjmp
      https://git.pengutronix.de/cgit/barebox/commit/?id=a74f7d7f00a1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



