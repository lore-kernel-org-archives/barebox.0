Delivery-date: Thu, 30 Apr 2026 14:21:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIQOS-000U1Z-2u
	for lore@lore.pengutronix.de;
	Thu, 30 Apr 2026 14:21:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIQOS-0003aX-CF
	for lore@pengutronix.de; Thu, 30 Apr 2026 14:21:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y5enaOGvAJ30uHel8pC5hBiK3O9clTqGFGCOzVqTjHc=; b=cfNXPncIqFCsSYx+FtYt9Y/5bk
	T8G2Q6v0IEfmks8at13v1iUfL67/T6t1hlN/cCiEUzLi+W3CExcGir79HjqoQawy8OraS2aEce60a
	3NmRie5cW0AM+hV9hs0nSDTHpJGuOJRBfZWzMGgHFD429i9CnaflEtFYrcwVXzV+Ee9xk4n7yRnPA
	JIun18KAijfmX+e8xW8hPgbEFqN4XX3tBnVG+RUj+uulHUttd3oCzBV5wBPR6PCYW4HGtfkTH6iXd
	X0VRLqUrbZ+d8OEuWeJLR/i5cb/FtOO/DdZli2pF3GeIS3VPSfp61SI6LsXWBfpgWxearELdjQDjb
	r99xe/ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQNx-00000005RtH-3LHA;
	Thu, 30 Apr 2026 12:20:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQNw-00000005Rt7-06FK
	for barebox@bombadil.infradead.org;
	Thu, 30 Apr 2026 12:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=y5enaOGvAJ30uHel8pC5hBiK3O9clTqGFGCOzVqTjHc=; b=fOPkZG6h61ChfBcL0QMoX0ZZs8
	reSVvQT3CoI9u226hypc9u5jYBVhYmpgkUQBVwzZkw+WTPOaQQY+C7m1jRsY0BGyq+vY8YX9/6l8H
	b/rKekO7d0cCxVFhTOs6CITG7TLXT8rBsOw2w4SkXFoToPJ2RKU4ea78X4pTpcOkIKSHpsowV2lGI
	sGc2/3ts7odHqJVu3/egZXzAytYEPrmsGYEgSOToY3wc7EyKzJgQYwHpVe9Ab3+lYGysH1RAcQZpY
	uSxPcnbs1nCWFw2j3HirH0N1rQDNEmqfO/JTn/9g4vqqOMTSJyIvIzqs4Dwi9nEcb7VvCrskkkUlV
	sfvjsI3Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIQNs-00000007LTU-4Af5
	for barebox@lists.infradead.org;
	Thu, 30 Apr 2026 12:20:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wIQNr-0003DC-J2; Thu, 30 Apr 2026 14:20:47 +0200
Message-ID: <193581a7-fd26-4ac4-b6a0-b625c8090f2e@pengutronix.de>
Date: Thu, 30 Apr 2026 14:20:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260430-v2026-04-0-topic-tlv-doc-v1-1-5aa0ef602bb8@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260430-v2026-04-0-topic-tlv-doc-v1-1-5aa0ef602bb8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_132049_177721_ABC2F373 
X-CRM114-Status: GOOD (  11.50  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND] doc: tlv: add images and custom format
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On 2026-04-30 13:41, Fabian Pflug wrote:
> Improve the documentation by adding some images to make the
> interdependencies clearer and add an example on how to define custom TLV
> data format.

I'm not sure if we should track SVGs in version control if they are
machine-generated and contain big base-64 encoded binary blobs.

It can make (rip)grepping e.g. over Documentation quite a pain,
especially given tools will treat them as text files, not binary files,
and will happily dump that 25313-char wide line on the console.

Also, these SVG's aren't really the source of these diagrams. Would it
be easy for someone in the future to adapt them?

Can we turn this into ASCII-art or DOT/Graphviz or similar?

Is there anything our sphinx setup already supports to turn into SVG on
the fly?

Kind regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


