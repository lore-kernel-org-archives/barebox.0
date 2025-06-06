Delivery-date: Fri, 06 Jun 2025 13:13:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNV1B-004MMP-0Z
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 13:13:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNV1A-0000I7-KX
	for lore@pengutronix.de; Fri, 06 Jun 2025 13:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/R8lhmBqSQ/lw5cqvACO5Ry36eS+sccyxWwObg3K/8=; b=zvC14YugN9cCpxaT8Sj7qnjDIz
	p8Rq77MO3zafrn0mHnaRkj5TDKyK+CxB4WJCw7d74yD3tzO0M8iBy8k96C+7v5CrhkKZ0yJHmjoJM
	DGsacw59yWpkcRHgU1BoDrX4a9he33d65PCUEw0r+GacNhF3zhxxtU3PEue2HkK17g4KA7LcpPntP
	mbYJwuvPahIc9nXeBvCNnSKOH+j4jIeZBdyHKbxdp5D/rUp/6qVPBbUdJk6oTjzmyqgPln521w+e4
	ww7siIi5XUdX5hKiEE+WoYHsAlYGtUuAyPyj6+SbpCrFInDyLnHNjiMcHA5GdJF1tOTary4JfwXSV
	0hB6IB8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNV0f-000000007el-1dCy;
	Fri, 06 Jun 2025 11:13:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNV0c-000000007eL-3HnH
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 11:13:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uNV0b-0008MG-EK; Fri, 06 Jun 2025 13:13:13 +0200
Message-ID: <5a2cfb65-579a-4f18-b0cf-e0b226e94e64@pengutronix.de>
Date: Fri, 6 Jun 2025 13:13:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, barebox@lists.infradead.org
References: <6e00946c-aeec-4f27-b4fc-a81920f79752@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <6e00946c-aeec-4f27-b4fc-a81920f79752@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_041314_827165_E87CABF7 
X-CRM114-Status: GOOD (  13.42  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: bbremote: Is it deprecated?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jonas,

On 6/6/25 12:44, Jonas Rebmann wrote:
> Hi,
> 
> As bbremote seemed very well documented at
> https://www.barebox.org/doc/latest/user/remote-control.html
> today I wanted to try it but it seems incompatible with python 3.13.3:

[snip]

> $ scripts/bbremote --port /dev/ttyUSB0 --export '' ping
> does "pong" but I'm giving up on trying to use or fix bbremote for now.
> 
> Is the perspective to deprecate bbremote (in favor of what?) or to port
> it to current versions of python?

Can't comment on that, RATP precedes my involvement.

> I would like to update either the script or the documentation.

I thought it were already Python 3.0 compatible after the fixes in:

https://lore.barebox.org/barebox/20220908093005.3035259-1-s.hauer@pengutronix.de/
https://lore.barebox.org/barebox/20230207162055.10050-1-jmaselbas@kalray.eu/
https://lore.barebox.org/barebox/20241212071928.2466094-2-a.fatoum@pengutronix.de/

Any remaining incompatibilities are bugs IMO and need to be fixed, yes.

Cheers,
Ahmad


> 
> Regards,
> Jonas
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



