Delivery-date: Tue, 07 Jul 2026 08:53:29 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wgzgP-00185A-2j
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 08:53:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A4950201CD7
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 08:53:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YBA3Tafp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZl8J9Zh/4RvOIe1laybC/3S9rvQDeCzE9ILcR5L8H4=; b=YBA3TafpWEvD3idiPGgiEQ2m7s
	3e0+/sxPNpws3px/Q/om5t5Ha1YSHM2ty9trqzYU/uoUrFuFbTXS8a0sTg3nWiYH2FOs4YPH8rgqs
	YFsRh2i2YXgm5gs0ufWxajbS+H+m1Ot8ey5lxAAdo/6ZkA2UvY18W06btSz3GuWwWj03fWCoMRMWf
	KD+dwQ1r708sqL7t9KlqWlTdVEHDcJRcHvCW9n9Cr9o7dTdissAsOShw/YqZNqHjuqYbzpeD7w52p
	LvErmesJbXI/pL1uHbCmlls59GfkTpLDIDIhdmwZE6K7OunBmyqHJbWMZNh9JHyLT0tr+V7dKBS4g
	c7HTWsaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzfO-0000000EG0i-3xKP;
	Tue, 07 Jul 2026 06:52:26 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzfL-0000000EFyz-38VY
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 06:52:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0094A201CD7;
	Tue, 07 Jul 2026 08:52:22 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wgzfJ-000Wuf-2v;
	Tue, 07 Jul 2026 08:52:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wgzfJ-0000000ETDF-3Uld;
	Tue, 07 Jul 2026 08:52:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260702103851.2391715-1-a.fatoum@pengutronix.de>
References: <20260702103851.2391715-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] optee: device: report correct command in enumeration
 error message
Message-Id: <178340714182.3448233.16608084536594491315.b4-ty@pengutronix.de>
Date: Tue, 07 Jul 2026 08:52:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_235223_948074_1E5A53D1 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 02 Jul 2026 12:38:51 +0200, Ahmad Fatoum wrote: >
    While enumeration failure always mentions "PTA_CMD_GET_DEVICES", it is >
   possible that either PTA_CMD_GET_DEVICES_SUPP or PTA_CMD_GET_DEVICES [...]
    
 
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
X-Spamd-Result: default: False [-6.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A4950201CD7
X-Stat-Signature: ohguxwbwrwre4a33n38383rz1eu343oq


On Thu, 02 Jul 2026 12:38:51 +0200, Ahmad Fatoum wrote:
> While enumeration failure always mentions "PTA_CMD_GET_DEVICES", it is
> possible that either PTA_CMD_GET_DEVICES_SUPP or PTA_CMD_GET_DEVICES_RPMB
> were the culprits.
> 
> Remove the hardcoded PTA_CMD_GET_DEVICES in the error message as it's no
> longer accurate and replace it by the actual command being sent.
> 
> [...]

Applied, thanks!

[1/1] optee: device: report correct command in enumeration error message
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f383894cb68 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



