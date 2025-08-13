Delivery-date: Wed, 13 Aug 2025 10:19:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6hd-0007GV-2j
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 10:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6hc-0003Wb-M8
	for lore@pengutronix.de; Wed, 13 Aug 2025 10:19:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lVyz5/T6ok04Bilx3PrBzAg0qYFRMUn9YH0uz60CPtc=; b=lb/hCHsDB5NefdEtxzC9FKvnmB
	KMluOls94PPKVAEpHMy852bc49aisO288KjKXcXAUbNNN5ZI2jj/l16zJb9Qf8bspY1kvoM/QfyiN
	icROR67u2FEWfNNJ/X0onYiDWKErXS1s7BS/mPnzfk+8JrrwgzI/HfJdwh2UEH1a7EQzef2VYgpOd
	RbWvUtL87bM3j+0KB1v9gxO99zHA6/3V1cR8MMiQp24lamn492UsXLIR0ez2Y4wOgXY/SSrHhdl6v
	21oNCdQuW0b62mFTuKb6czDD9RdfVJXJ7PDLdcGiOGX06O0tmZ/MtAqwLAgUb+FaZSiN6usvnmkEI
	opmnbBcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6hD-0000000D4YQ-3ut1;
	Wed, 13 Aug 2025 08:18:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6fa-0000000D41A-0J68
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 08:17:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1um6fX-0002yq-Iv; Wed, 13 Aug 2025 10:17:11 +0200
Message-ID: <3f1fab4b-f8c1-4408-a5d9-a624d5a76491@pengutronix.de>
Date: Wed, 13 Aug 2025 10:17:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Jander <david@protonic.nl>, barebox@lists.infradead.org
References: <20250813070149.855341-1-david@protonic.nl>
 <20250813092805.52885156@erd003.prtnl>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250813092805.52885156@erd003.prtnl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_011714_114133_DFD145B7 
X-CRM114-Status: GOOD (  15.66  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: boards: Add support for Protonic PRTPUK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello David,

On 13.08.25 09:28, David Jander wrote:
> On Wed, 13 Aug 2025 09:01:49 +0200
> David Jander <david@protonic.nl> wrote:
> 
>> PRTPUK is a credit-card sized ISOBUS virtual terminal, based on the
>> Rockchip RK3576 SoC, that features a CAN interface and a 100/1000Base-T1
>> interface for HS-ISOBUS (HSI), as well as a USB-C port for connecting to a
>> touch-screen monitor.
> 
> Note: This code should apply to next as of today, but next doesn't compile
> right now. On v2025.07.0 it depends on the RK3576 support patches, but will
> build (and run) fine when both are applied.

Firstly, thanks for your patches!

I'd like to more prominently advertise new hardware support in the future and
I am happy about screenshots of new hardware running bfetch[1] or other eye candy
to be posted (or reposted if you have a Mastodon account) on @barebox@fosstodon.org.

Just saying. :-)

[1]: b4 shazam https://lore.barebox.org/barebox/5e2ad1d8-6049-409c-b048-99d58452747a@pengutronix.de

Cheers,
Ahmad


> 
> Best regards,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


