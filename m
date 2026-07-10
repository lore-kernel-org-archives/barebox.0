Delivery-date: Fri, 10 Jul 2026 23:43:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wiJ0Z-002Nuh-1K
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 23:43:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 37B4120202F
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 23:43:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="tp97hKJ/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lf2P+WQH+VNt5/annDfwAdw7P9AAD5arniHr/xd5LWU=; b=tp97hKJ/UkywKqrAtOmw0fkdsp
	rTeiUYTbNa9hDzc9oRcID4D1DmHQXE6NJvjuuYrJaXnSn3GQauHCD/hHWxyXOnKWnqBg2VpL+QCyv
	VA95KwD/Rr/X7WkTMawNupPQkkR5ehkAaypee32Y0aklJwT6msWz1MPY/nplCHHZGu9m8ZmmaomgX
	eJlTr7oED+6LCmxUMvHFZNBohNfYZdDDvHex8mxn7H08QY6bH5aEB4wub+D6TmXzl7HGiO9EqlnYf
	Sxu5Kj9XIEy+qqeTPuS5GyNkjO2GzA9eHkIbZN49kz1I6yMUu3Xn0jF4toPUUH8W0FLWMUCDVBsUI
	EyKJSaFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIzW-00000005sM4-0yeh;
	Fri, 10 Jul 2026 21:42:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIzS-00000005sKv-2LtM
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 21:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9FC69200668;
	Fri, 10 Jul 2026 23:42:32 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wiIzQ-0018r3-1r;
	Fri, 10 Jul 2026 23:42:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wiIzQ-0000000Erke-2AJO;
	Fri, 10 Jul 2026 23:42:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260709073316.522048-1-a.fatoum@barebox.org>
References: <20260709073316.522048-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] partitions: efi: validate complete GPT entry array
Message-Id: <178371975251.3543177.9333629623864855495.b4-ty@pengutronix.de>
Date: Fri, 10 Jul 2026 23:42:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_144234_765976_742C1F24 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 09 Jul 2026 09:33:14 +0200, Ahmad Fatoum wrote: >
    The Fedora-Workstation-Live-44-1.7.aarch64.iso image advertises 248 > slots,
    which exceeds the 128 partition limit that the barebox EFI > par [...] 
 
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 37B4120202F
X-Stat-Signature: 89ritbkurtx5rtb18y9egjsibkqc6x1y


On Thu, 09 Jul 2026 09:33:14 +0200, Ahmad Fatoum wrote:
> The Fedora-Workstation-Live-44-1.7.aarch64.iso image advertises 248
> slots, which exceeds the 128 partition limit that the barebox EFI
> partition parser enforced because of the MAX_PARTITION macro.
> 
> The enforcement is not only for creating actual partitions, but also
> for computing the CRC, so valid GPTs with a larger entry array are
> rejected, even though they have fewer actual partitions.
> 
> [...]

Applied, thanks!

[1/1] partitions: efi: validate complete GPT entry array
      https://git.pengutronix.de/cgit/barebox/commit/?id=9317ffc12b61 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



