Delivery-date: Fri, 28 Aug 2026 12:46:01 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzu5w-0087za-0n
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 12:46:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CCF2E201D34
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 12:46:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I6j8vhFK;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5zHenKEq7Zkh5IsSi2Kv167s1KgnL82sukNmr5YSf28=; b=I6j8vhFKIYnMiK97fny0/j6YE+
	YxPEnirYzcNBW4tlV8Qq3tlAzSsB+m8vfEiFdMIcTyqME0qLYaDOJijq9vA9QPJMP4fAact1ZMjHa
	WB49OuOKpvNc/OKYmEdzMRtVbkV+iu3zphZ2WDpl67zbCOgYQ/DWX1LYq0IEnGXrrJ0BLrpXptxOr
	BAf/AoJJqRFSTCt8wkZGS6in8gqYCatHBqiZ6jBnkY/kAwYRe7YjPpydHSjGTfp0+s+kjCbdb7fuw
	5OWeBKowjC0/UavS6UMpGyfVsbiJKB/Sllzp6flCNdfWa/UNa7GxsLaGzHuvOvvnT5VtJFnx7NOx6
	3SNiRZvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzu4i-00000005bP1-3Wwo;
	Fri, 28 Aug 2026 10:44:44 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzu4g-00000005bOC-1Apv
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 10:44:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1F789200700;
	Fri, 28 Aug 2026 12:44:40 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzu4e-003kv9-0A;
	Fri, 28 Aug 2026 12:44:40 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzu4d-00000001TtN-489V;
	Fri, 28 Aug 2026 12:44:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stephano Cetola <stephano@cetola.net>
In-Reply-To: <20260825-send-extlinux-abs-path-v1-1-910bf0a3dad1@cetola.net>
References: <20260825-send-extlinux-abs-path-v1-1-910bf0a3dad1@cetola.net>
Subject: Re: [PATCH] extlinux: resolve absolute paths against the partition
 root
Message-Id: <178791387997.353148.12067803861235796356.b4-ty@pengutronix.de>
Date: Fri, 28 Aug 2026 12:44:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_034442_479613_7F802DFE 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 25 Aug 2026 17:38:43 -0700, Stephano Cetola wrote:
    > extlinux_boot() always joined a path with '/' against rootpath, which >
    holds the config file's own directory, not the partition root. A > [...] 
 
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
X-Stat-Signature: fmjpz6t33tntozbpwa81x83afdejfygw
X-Rspamd-Queue-Id: CCF2E201D34


On Tue, 25 Aug 2026 17:38:43 -0700, Stephano Cetola wrote:
> extlinux_boot() always joined a path with '/' against rootpath, which
> holds the config file's own directory, not the partition root. A
> KERNEL/INITRD/FDT value starting with '/', the normal syslinux way to
> name a path from the partition root, got treated as relative instead.
> The extlinux.conf file itself can live in a different directory than
> the partition root (extlinux_scan_directory() looks in both
> boot/extlinux/ and extlinux/), so this produced a wrong, nonexistent
> path whenever a config used an absolute KERNEL/INITRD/FDT entry.
> 
> [...]

Applied, thanks!

[1/1] extlinux: resolve absolute paths against the partition root
      https://git.pengutronix.de/cgit/barebox/commit/?id=1cbbf0e06cf2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



