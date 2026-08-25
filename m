Delivery-date: Tue, 25 Aug 2026 19:02:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyuXJ-0078Yo-2N
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 19:02:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 50570205816
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 19:02:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kzmDnOX3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lEZbZ/9MMpaagYic+spx5sZZ9SRuA+zk7odJyvlIxVg=; b=kzmDnOX3u22sYSS9Oh+/ZavIdm
	qC4oq+UiMkbQOqYZ8PFg34xHnP1sWWAXX/yR8luH/mnhn2k1a3zaJJhbtP99SfgH8AYywtCd+uuyF
	eNQi+tBQ8Z4aoIpxk9S7eTBjRZpFn3n0weosW3EmJepZHIitFVBBY1KxQGJy/Ff9ISgiMNrraP4Hr
	j5HEp9HykFXGcW1OEHG2UgfMJhTwxmICp9sQzwCGZcQ0pBBhA+qiccSXpeefgFTw0rkvNa9OF/DWZ
	2SJEKrz1RiRhzcUHw+FOO5r2I0EhvFuwr0+dfeDn+chgzVXn90cIvZ8EYEWPLW43Wrr6ASiYG8rgX
	HOI1SAcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyuVs-00000001ARK-2qNX;
	Tue, 25 Aug 2026 17:00:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyuVq-00000001AQY-1BNw
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 17:00:40 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3D4C120581C;
	Tue, 25 Aug 2026 19:00:31 +0200 (CEST)
Message-ID: <ff91822d-aa0f-4afd-b94f-86a026ac230b@pengutronix.de>
Date: Tue, 25 Aug 2026 19:00:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] state: make of_state_fixup() usable outside
 common/state/
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260825030548.473672-1-chalianis1@gmail.com>
 <20260825030548.473672-2-chalianis1@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260825030548.473672-2-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_100038_482186_095CF2BF 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/25/26 5:05 AM, chalianis1@gmail.com wrote: > From:
    Chali Anis <chalianis1@gmail.com> > > of_state_fixup() was static, callable
    only via of_register_fixup(). > Export it so other subsystems can in [...]
    
 
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
X-Rspamd-Queue-Id: 50570205816
X-Rspamd-Server: mx1
X-Stat-Signature: uptiuoyxwm99j5b7brgzgpgud5gmik3k

Hi,

On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> of_state_fixup() was static, callable only via of_register_fixup().
> Export it so other subsystems can invoke it directly to render a
> state instance's devicetree representation on demand, without going
> through the global fixup-registration/of_fix_tree() machinery.

I guess I will see later what this is needed for.

> 
> While exporting it, teach it to resolve backend nodes that are
> top-level "barebox,fixed-partitions" subnodes carrying a partuuid
> property instead of being tied to a real, already-probed storage
> device node in the tree - the same globally-resolvable-by-UUID
> binding drivers/of/of_path.c's of_cdev_find() already supports for
> EFI, where devices aren't instantiated from devicetree. Without this,
> of_state_fixup() could only find a backend reachable by walking real
> hardware nodes already present in root, which such a partuuid-only
> declaration never is.

of_fixup_partitions() already takes care of fixing up partitions into
the kernel DT. If it doesn't work for your use case here, it should
perhaps be adapted instead.

I haven't reviewed the code, because I am unsure why this is needed and
the commit message didn't really explain.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



