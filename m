Delivery-date: Tue, 25 Aug 2026 12:10:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyo6X-00729a-0p
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 12:10:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D007C200062
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 12:10:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lwlOZB7S;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sDpNM4lXALWYDnzNOKDvbfi09I87M56oK1rEvJkSh98=; b=lwlOZB7SQPbvWsR+5h+5IhZC41
	snc7I4zABlx5vhv6tku5YtF11TkwBu5ULgq1wyF96O3hI3+JynFG2pt3WBAkvmF9WrwMx3J08g6+t
	zDRMPbqgcFRXBApC5ERY0QULmBZDnquTLZuikAcPLlehPQinO7PCKWkAlun4+o1hytIuT6yDeVdIB
	uvfYdrzuR7BZBBle0xBTWNEwM5hgZ4irKdp0cNutCi/6rx6WZbMVc3AhlnF23K3aNkzsJBtkWhxgv
	jyqA923mqzAKYT3nHIgvGDqNDCY0Dnutb8sAGg5DaUGGDXQ8lLVCjpAejmsvE+Ed2+xCNHjF+f3fh
	3GjhtL0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo5M-00000000YIq-040h;
	Tue, 25 Aug 2026 10:08:52 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo5I-00000000YIC-1mts
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 10:08:50 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CE77C2016A0;
	Tue, 25 Aug 2026 12:08:45 +0200 (CEST)
Message-ID: <2d747fac-3c27-45d1-9f6c-95e8579c75a2@pengutronix.de>
Date: Tue, 25 Aug 2026 12:08:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Driver placement for a new STUSB4500 USB-C PD sink controller
To: rossi@amelchem.com, barebox@lists.infradead.org
References: <561b94b11b45ec960fbbc060d8db8f292e2446e4.camel@amelchem.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <561b94b11b45ec960fbbc060d8db8f292e2446e4.camel@amelchem.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_030848_655545_99B9D5C3 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Giandomenico, On 8/25/26 11:38 AM, Giandomenico Rossi
    wrote: > Hi, > > I'm writing a Barebox driver for the STMicroelectronics
   STUSB4500, an > autonomous USB Type-C Power Delivery sink controller (I2C).
    > It can tr [...] 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: bh15mhxto7pptni8sjw6m46i54t3abpu
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:rossi@amelchem.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D007C200062

Hello Giandomenico,

On 8/25/26 11:38 AM, Giandomenico Rossi wrote:
> Hi,
> 
> I'm writing a Barebox driver for the STMicroelectronics STUSB4500, an
> autonomous USB Type-C Power Delivery sink controller (I2C). 
> It can trigger a renegotiation, and reports the resulting contract.
> Target platform is an STM32MP151-based board.

Cool. What information should this driver make available?

> I'd like to agree on where the files should live, so I don't have to
> reshuffle everything later.
> 
> Driver source: at the moment I have the driver under drivers/usb/misc/,
> but since it's a USB Type-C PD sink controller it might fit better
> under drivers/usb/typec/ (which Barebox doesn't have yet, so it would
> mean creating it). Would you prefer that, or somewhere else?

We have had a drivers/usb/typec directory since v2023.07.0.
If you missed it you may also want to check the basic USB Type-C
framework that was added there and see how well it fits your driver.

> DT binding: I've written the binding as a YAML schema
> (st,stusb4500.yaml), matching the Linux dt-schema format and reusing
> the common usb-connector.yaml for the connector sub-node. 
> Where should it go in the Barebox tree?

I am unsure why you need a custom schema if there's already one
upstream? Anyways, barebox-specific schemas are collected in
Documentation/devicetree/bindings/. Upstream bindings are imported to
dts/Bindings/

Cheers,
Ahmad

> 
> Regards,
> Giandomenico Rossi
> Amel s.r.l.
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



