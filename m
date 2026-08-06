Delivery-date: Thu, 06 Aug 2026 17:40:24 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ws0Cm-000Dwm-0G
	for lore@lore.pengutronix.de;
	Thu, 06 Aug 2026 17:40:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 883AE201FA9
	for <lore@pengutronix.de>; Thu, 06 Aug 2026 17:40:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4RSKr6Ql;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+wYXyiowSD/6EneiNMxnuZE/ECgfmawLvuhVQERUAK0=; b=4RSKr6QlGAFH5yH6D6LVGXdU3V
	gf4m9sXiDW2RWaOTVT0P+9Z3RJg6aJ1vJ++2MEcjSsD7ZATSKrqDb4wqe6rhe327jBaEOQO3Pw3QY
	wRQzFBjj1dRa7xFtotYr+eKSR3kKttXryTbMNX7UbJTW8V8gpjD9Yvr5E+XW33ohilG04mmU0ADDF
	EaRXXkg4tQV1hbnJG8K9YnrMpskzpj2wkVWf1gx+cwxWn8YbxQY1mNilAPTtvECqicaFcV7YYVUw0
	JBYhLKN5MYhoJxeSZajcNNVodwdxC3Zw2b2VGS13LKsGIZbfA4TuAe8ZAA2sbWAe8IPg5yEJEzbfU
	7qVq55Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0BK-000000067MX-0hRI;
	Thu, 06 Aug 2026 15:38:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0BG-000000067KT-1vJW
	for barebox@lists.infradead.org;
	Thu, 06 Aug 2026 15:38:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ws0BC-0004r2-9E; Thu, 06 Aug 2026 17:38:46 +0200
Message-ID: <8cd20484-53e9-42c7-b22f-98ec6008a28f@pengutronix.de>
Date: Thu, 6 Aug 2026 17:38:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] fixup! sandbox: enable keytoc in hosttools_defconfig
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>
References: <20260805142055.3844660-1-a.fatoum@pengutronix.de>
 <178602149493.2137018.3077110729485180750.b4-ty@pengutronix.de>
 <DKHY283ZF4K3.2VAB9S9SYRY0I@bootlin.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DKHY283ZF4K3.2VAB9S9SYRY0I@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_083850_499709_45FEB1C3 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Thomas, On 8/6/26 16:52, Thomas Bonnefille wrote: >
   Hello, thank you very much for this fix ! > > On Thu Aug 6, 2026 at 3:04 PM
    CEST, Sascha Hauer wrote: >> >> On Wed, 05 Aug 2026 16:20:02 +0200, Ahmad
    Fatoum [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 883AE201FA9
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action
X-Stat-Signature: fkxwdh5mx38awg6bzqqb4s6tg31c8z9k
X-Rspamd-Server: mx1

Hello Thomas,

On 8/6/26 16:52, Thomas Bonnefille wrote:
> Hello, thank you very much for this fix !
> 
> On Thu Aug 6, 2026 at 3:04 PM CEST, Sascha Hauer wrote:
>>
>> On Wed, 05 Aug 2026 16:20:02 +0200, Ahmad Fatoum wrote:
>>> ci: musl-tools: disable KEYTOC as it depends on OpenSSL
>>>
>>> The OpenSSL we ship in the CI container is built against glibc and so
>>> compiling keytoc against musl in it is currently not possible.
>>>
>>> Fix the CI breakage by disable KEYTOC, but only for the Github workflow.
> 
> I’ve successfully compiled OpenSSL against musl in a modified version of
> the barebox-ci container and can now compile keytoc in it. This approach
> would help detect build errors for keytoc + musl earlier. 
> 
> Would this be acceptable for Barebox?

Sure, that would be even better!

Thanks,
Ahmad

> 
>> [...]
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


