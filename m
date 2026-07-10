Delivery-date: Fri, 10 Jul 2026 17:24:52 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiD5w-002IS9-0o
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 17:24:52 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0EFF3202020
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 17:24:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=enoU1ccF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eU79LpTQ6tE9pPIFbtCmXLxADl0lT3XYJfFPS1gs0To=; b=enoU1ccFywspf1jkxD3eyx4GJ8
	Ncq1ZYK8aa/MDHGuuJsfpAQ2642YjX1gxHk5S+rFFxabMlZn1A5oH3R9ZXe+KaLU7rHqINHU22vPg
	Ci4CwABZ4cOboZeoHpUTK0w4zBBLlEbt3ZEmRA0b2bXTxDf3LfNImTS0J+kTM8O13RbfrS0SFOLXk
	xyY2vpHkgmOl8fXpbXZXc34UUQ9R+6W7ulmtqTEz4l/trkaOFJ1yXWbKJojh5Zf921h0BdHh2c/V/
	mOWeZTweI65jCwFVp3tQZeK4by9VPeH0P4huo4sGSgrpgQzC0vP5d0E1QDqaV73ULLscV0grwB88O
	ubjbjIgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiD4h-00000005B8U-2PSu;
	Fri, 10 Jul 2026 15:23:35 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiD4e-00000005B86-2q8C
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 15:23:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9A85F202021;
	Fri, 10 Jul 2026 17:23:30 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wiD4c-0016Lg-1m;
	Fri, 10 Jul 2026 17:23:30 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wiD4c-0000000GEU0-1tN7;
	Fri, 10 Jul 2026 17:23:30 +0200
Date: Fri, 10 Jul 2026 17:23:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Subject: Re: [PATCH] ARM: i.MX: fix fast auth wrong CSF file
Message-ID: <qma5zzasw64ehywoulxuwc3nkza7pnw7rjedpr27nsspcuc7c2@wuq35rsctrzo>
References: <20260710-fpf-fast-auth-v1-1-5a2709d29ea4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260710-fpf-fast-auth-v1-1-5a2709d29ea4@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_082332_889573_6D1CF0FD 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-07-10, Fabian Pfitzner wrote: > The commit [1], which
    integrates fast authentication support on > i.MX8 SoCs does not work as expected.
    The resulting CSF cannot be > verified correctly by the bo [...] 
 
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0EFF3202020
X-Stat-Signature: qts36mcxuqee36z8uosaxfyq1rmx3p3s

On 26-07-10, Fabian Pfitzner wrote:
> The commit [1], which integrates fast authentication support on
> i.MX8 SoCs does not work as expected. The resulting CSF cannot be
> verified correctly by the boot rom, leading to an invalid signature.
> 
> The CST user guide documentation states in `Table 10. Authenticate Data arguments`,
> that the `Verification Index` must also be set to 0 when we use fast
> auth. This commit fixes that.
> 
> With this change, the bootrom seems to validate the signature properly
> now.
> 
> [1] 086d01264d ("ARM: i.MX: add support for fast authentication")
> 
> ---
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>

Two nits:

- your s-o-b is below the '---' and therefore cut while applying
- You should metion the broken commit by a fixes tag:

Fixes: 086d01264d ("ARM: i.MX: add support for fast authentication")

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


