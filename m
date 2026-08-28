Delivery-date: Fri, 28 Aug 2026 12:11:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wztYu-0087W0-00
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 12:11:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 537DC200571
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 12:11:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AKCLAFcP;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YEqN7cLKZ9kmWkvbLhQ55BhohpcJXEvJ7z5HmNvZzBY=; b=AKCLAFcPoZYQVvfPIIUnyodOYh
	Ao23VcEw++CHKkOCmNHDzSyXZzW/mBxIdgHoXzxq5R5W5/EeiTwBW49yVNfVZy/JQc7Vy3HRo5ivQ
	iUCn7SCMX+BX+OsRfGL6qZg5SK/So4MN+6ajL/1LbGcnTta9T881naGL5Su/4pedbQKhfEsC+MN/K
	oONn/imHDC753GCu84rAde04AFmqWjORGTiiQy8U4ZUx+QdZJ/0owcHI1FrvIzyjkH65KWYifwHdA
	2Ya5KeyL7yV+NGbWqdQ4CkTVlYa8fvDZiELR8+nSrwk/D7u1FEnwd+Uf/zdogKzwmhXTfT/UIxcXr
	JOP0Esrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztXQ-00000005Xuy-2JyL;
	Fri, 28 Aug 2026 10:10:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wztXM-00000005XuD-1izd
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 10:10:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B4EB3200F4F;
	Fri, 28 Aug 2026 12:10:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wztXG-003kV6-20;
	Fri, 28 Aug 2026 12:10:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wztXG-00000001S7c-2IyB;
	Fri, 28 Aug 2026 12:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stephano Cetola <stephano@cetola.net>
In-Reply-To: <20260825-send-extlinux-linux-keyword-v1-1-e2d0b9f291d4@cetola.net>
References: <20260825-send-extlinux-linux-keyword-v1-1-e2d0b9f291d4@cetola.net>
Subject: Re: [PATCH] extlinux: recognize LINUX as an alias for KERNEL
Message-Id: <178791181054.346347.8452841642601650837.b4-ty@pengutronix.de>
Date: Fri, 28 Aug 2026 12:10:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_031016_599586_1B62312F 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 25 Aug 2026 17:38:33 -0700, Stephano Cetola wrote:
    > Syslinux configs commonly use LINUX instead of KERNEL to name the > kernel
    image. parse_extlinux_conf() only checked for KERNEL, so a > LA [...] 
 
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
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cbwb1s7xa376rgtajxoxaj9nsc8mi3j6
X-Rspamd-Queue-Id: 537DC200571


On Tue, 25 Aug 2026 17:38:33 -0700, Stephano Cetola wrote:
> Syslinux configs commonly use LINUX instead of KERNEL to name the
> kernel image. parse_extlinux_conf() only checked for KERNEL, so a
> LABEL block using LINUX left entry->kernel unset. parse_extlinux_conf()
> requires a kernel path to accept an entry, so the whole extlinux.conf
> was rejected instead of just the one line being ignored.
> 
> 
> [...]

Applied, thanks!

[1/1] extlinux: recognize LINUX as an alias for KERNEL
      https://git.pengutronix.de/cgit/barebox/commit/?id=172f8c1d0fbf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



