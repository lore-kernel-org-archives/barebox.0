Delivery-date: Mon, 24 Aug 2026 09:38:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyPGE-006coa-1I
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:38:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EBBE22010D6
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:38:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JkW1k64S;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pwZIMPN7O6GmHMvDEmIebn9OfwVeI87LEoJD2DEsC0U=; b=JkW1k64SdrmDbV+Q3dUd/2FgA4
	uKLlFWdfI4nVzVIVcY14IVb8WLbkqjtiduYzIMFkwVphPNGTuVAJVtbX3Db+93863UNL7HycT+2f4
	/pWyyog4z/0bDpBZOujW2u8Ji/ZOChIS4g75TA+F3gzUR+pMiW/cgUt8nHmddbuYfc2oYNu1IxOwO
	PT0abjDV3Tf2hUlLJfHejpvpGwNkqFolJp2mFUvk/GeyTFxoodn0MlAgLs86r8S64WF1JlxrOOg2e
	A/bVPoMNhyQ3biL6m6YGQLgzMR1QAEv/IxoucAiaUJ5ruCqEhbEzNBQTiQ67qHutpjJ29b+ZIeUVh
	SzwfKJFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPF8-0000000G6Pc-03yH;
	Mon, 24 Aug 2026 07:37:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPF4-0000000G6Op-1i4H
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 07:37:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2044120190E;
	Mon, 24 Aug 2026 09:37:12 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyPF2-0034C0-0B;
	Mon, 24 Aug 2026 09:37:12 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyPF1-0000000DFCM-4AnN;
	Mon, 24 Aug 2026 09:37:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20260823221329.513717-1-chalianis1@gmail.com>
References: <20260823221329.513717-1-chalianis1@gmail.com>
Subject: Re: [PATCH] bcm283x: debug_ll: add RaspberryPi 4 PL011 UART
 support
Message-Id: <178755703199.3156679.6509685840858989179.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 09:37:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_003714_605349_7C385C3A 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 24 Aug 2026 00:13:29 +0200, chalianis1@gmail.com
   wrote: > Add a DEBUG_RPI4_UART choice for low-level debugging on RaspberryPi
    4 > and CM4 boards via the PL011 UART (uart0), for setups where t [...] 
 
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
X-Stat-Signature: pyqrfkcee3f1yjdd7c671qrg1qbsaqi6
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chalianis1@gmail.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: EBBE22010D6


On Mon, 24 Aug 2026 00:13:29 +0200, chalianis1@gmail.com wrote:
> Add a DEBUG_RPI4_UART choice for low-level debugging on RaspberryPi 4
> and CM4 boards via the PL011 UART (uart0), for setups where the
> disable-bt overlay routes it onto the GPIO header pins instead of the
> mini UART. Mirrors the existing RPi1/RPi2-3 PL011 debug_ll support:
> firmware configures the UART, so debug_ll_init() is a no-op.
> 
> 
> [...]

Applied, thanks!

[1/1] bcm283x: debug_ll: add RaspberryPi 4 PL011 UART support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4836941756bb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



