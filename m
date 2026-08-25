Delivery-date: Tue, 25 Aug 2026 19:11:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyugo-0078sP-0U
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 19:11:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AB251204AFA
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 19:11:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FSCL+FUF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P3ctpE6SZ0OPXRPygY/Tef9ysiULpCy/t8iM7BmkXX4=; b=FSCL+FUFDTLvr6jn60gY4fAndK
	Q9heVDAyi+/QRZk2rkx4Ds6/N+yfYrY6MPeD7nSuwciWa8esPltEfpM3uIGAgjAftRlC2ElZGQDQj
	wsbz1kmXA7zLGOTzwHl5LA4Y24EIymYgIyQ7IqoFVEG1V+K0ozHcIKiB1G6BlrttbtCYYK6qvWM33
	pPB35mM87k+bzWqNl8thvCvi3sd5NduJXOayDYxC9+gSpIQ/ZtthW72aFy9i1JllEebXA7TYxzq6V
	4bcUHxi+fMIuC2HibGyRCTBUaEzl0t4zrmq2NiLCSjbygli4G3SKusojX/dsQRoxStMqXGXG4pxIF
	V8zOTB+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyufV-00000001AuR-0NfE;
	Tue, 25 Aug 2026 17:10:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyufR-00000001Au6-04hW
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 17:10:35 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DE6FD203301;
	Tue, 25 Aug 2026 19:10:26 +0200 (CEST)
Message-ID: <b51c5e54-7ce7-40f5-b65d-1d8ef7a07be6@pengutronix.de>
Date: Tue, 25 Aug 2026 19:10:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] state: generic devicetree-overlay based state node
 injection
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260825030548.473672-1-chalianis1@gmail.com>
 <4462a622-9768-41d9-ad5c-2614954a9aa5@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <4462a622-9768-41d9-ad5c-2614954a9aa5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_101033_213691_B3343E2E 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/25/26 5:02 PM, Ahmad Fatoum wrote: > On 8/25/26 5:05
    AM, chalianis1@gmail.com wrote: >> so a real state.dtb collides with whatever
    root the EFI >> payload already registered at boot and is reject [...] 
 
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
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: AB251204AFA
X-Rspamd-Server: mx1
X-Stat-Signature: y4kki1bw9cp6wmnerm31nxuyer1gyjrx

Hi,

On 8/25/26 5:02 PM, Ahmad Fatoum wrote:
> On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
>> so a real state.dtb collides with whatever root the EFI
>> payload already registered at boot and is rejected with -EBUSY, and a
>> rejected tree's /aliases entries never reach the global alias cache
>> of_alias_get() relies on either.
> 
> This argumentation follows from a bug, so it doesn't say anything to the
> merit of this new feature.

I have now read through the series and my thoughts are that applying
overlays to the barebox live tree from outside can be useful (I wouldn't
limit it to state), but:

- it needs better argumentation what it allows that is not feasible with
fragments
- it needs some way to account for multi-image

I am going to send out my EFI-payload-state-via-fragment series soon and
I am interested to hear your thoughts on it.

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



