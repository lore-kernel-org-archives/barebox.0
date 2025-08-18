Delivery-date: Mon, 18 Aug 2025 19:31:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo3hU-001xR6-0n
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 19:31:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo3hT-0000fv-35
	for lore@pengutronix.de; Mon, 18 Aug 2025 19:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PfSnB9aBOcxvVNDN9xAW27oVFC7B0ttWM4hDgAYn+qE=; b=yQ56miwzejn4uDh0ypV4N0osMP
	Mt9aJijSoOgNGZQK+8o5n0OgZQonneyRxzx8RNfGjFkKMYJ0+k3u0x3nJs1o0j3dW3hroDW0Yzr06
	Lp5zRJdDnO7SW/kRdpplEuHhr9Qr3SsRNyhGpenCEQxSbyjrmpN3lrWjq58xM+2PxltzzGZEes5Cr
	odh9jDphuxaF8wvK36C1B0XkCl19nLu7h/RoYokix/dYwNlaoXX4PBPGu2lyjVEKtKnhwiCijhwzx
	HI4VaUm/coPMXn12ZCoOWG5GmvwDoPZsA7MNtbRYpIEjCLOlNW2qIAbGGkI4zs5c/BITIXLS2Mb4n
	ORk722EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3h9-000000088US-3BRY;
	Mon, 18 Aug 2025 17:30:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo0X9-00000007hHR-2DAZ
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 14:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PfSnB9aBOcxvVNDN9xAW27oVFC7B0ttWM4hDgAYn+qE=; b=APjAz2yOZU8X05hPHzbeqVId84
	Zc9Wj5laj0mK96jw1WRMyAdBU0P+ucLsiKcjLmKQsAMaWrDAy1L2IVG6pdPsMAGY2VGPnMNu6vzbe
	B6A2TKSx2hplSIMycdFFe14fieUrn5Y5+2wgW34xS2PJplpb5wwGZv3TBicGoWeD/Pd6AtH/zCNLv
	kJcHruvCaMztkE8p9dr3KcXTV0FnX8p+Lo4QyCOKxXKiYyJd55030pL8cnuh4l23aCV/3K3PMiFG7
	ZI5FhgOWqg5/CaoR9IJMtb9xMag7BLJZu8wa1X2WnsiUQZ5+SBB7CRyFHFFbracuMgnZR7t+/2f1a
	08zvJCLg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo0X6-0000000HOtJ-1l2B
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 14:08:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uo0X5-0007sB-Dl; Mon, 18 Aug 2025 16:08:19 +0200
Message-ID: <cd0df5cd-36e2-445c-bf80-445dd4884833@pengutronix.de>
Date: Mon, 18 Aug 2025 16:08:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
 <20250814130702.4039241-5-a.fatoum@pengutronix.de>
 <aKMqjrAy6kJLoJof@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aKMqjrAy6kJLoJof@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_150820_602744_79FDEB7F 
X-CRM114-Status: GOOD (  15.08  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 04/17] Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 8/18/25 15:28, Sascha Hauer wrote:
> On Thu, Aug 14, 2025 at 03:06:49PM +0200, Ahmad Fatoum wrote:
>> +if SECURITY_POLICY
>> +
>> +config SECURITY_POLICY_INIT
>> +	string
>> +	prompt "Initial security policy"
>> +	help
>> +	  The policy named here will be automatically selected the first
>> +	  time a security policy is to be consulted.
>> +	  It's recommended to use a restrictive policy here and remove
>> +	  the restrictions if needed instead of the other way round.
>> +
>> +choice
>> +	prompt "Initial Security Policy"
>> +	default SECURITY_POLICY_DEFAULT_PERMISSIVE
> 
> This ends up showing:
> 
> 	(lockdown) Initial security policy
> 	Initial Security Policy (Panic)
> 
> How about "Missing security policy behaviour" instead for the choice
> description?

Yes, will adapt for v2.

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



