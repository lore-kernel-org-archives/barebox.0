Delivery-date: Mon, 23 Jun 2025 13:32:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTfQ1-00AFRF-27
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 13:32:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTfQ1-0003cP-4D
	for lore@pengutronix.de; Mon, 23 Jun 2025 13:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/llg7mza2CLmUwD90DukOcJEIxSvo/ngd7D6Tdc2lIQ=; b=uyEUNrJY44VCIPWJp2j4Pxcou2
	tkmpSm8nYhZ+a+x0L2ed5ybmfAIiumTzTUL1sIDZI/QGI6moUteYEP48zhXq8bWxVViGAcDfFH5ja
	Smbi+j1FXowPzcab+qjkMjVI4RpC1GOchx3F4SYcWYkFYmO7Wy1hYPpzDk7T7NZyVmWX5bcWX3bxl
	fsFJUGPZSNi6l6mycMdD7BPoXo0aq0uejNZ0DlGjt3eyNbioLd73YoXTZP7QG06bfs5DUn3wiMwkX
	NKsimQhz37TlLvzcb/ho38KCsx95JtNan7GmHUYBJCMV9NaQaWuo/ZHu+/WoRI/g8AJLXhoK5c118
	U0lucMcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTfPP-00000002VkV-2oAz;
	Mon, 23 Jun 2025 11:32:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTeEP-00000002Jnc-0BoG
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 10:16:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTeEN-000314-Au; Mon, 23 Jun 2025 12:16:51 +0200
Message-ID: <d1c20ac9-1d97-46c0-851a-2a15fb2b79ce@pengutronix.de>
Date: Mon, 23 Jun 2025 12:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvRTbyB7NXoaLOid9-7jH5Jxfa5MB6LGVfyZYwc7y+Sq_w@mail.gmail.com>
 <aFke1jEhe1ICGEmG@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aFke1jEhe1ICGEmG@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_031653_091076_B64CD3BD 
X-CRM114-Status: GOOD (  19.63  )
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
Subject: Re: SAMA5D3-xplained board cleanup question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/23/25 11:31, Sascha Hauer wrote:
> Hi Alexander,
> 
> On Fri, Jun 20, 2025 at 03:21:56PM +0300, Alexander Shiyan wrote:
>> Hello All!
>>
>>  I would like to propose a cleanup for the SAMA5D3-xplained board support.
>> The board currently has code in board.c that configures the
>> at91sam9-smc (Static Memory Controller).
>> However, since the board uses devicetree, this configuration should be
>> handled by the MFD driver
>> that is responsible for the SMC and is devicetree-based.
>>
>> Therefore, I think we can remove the SMC configuration from the board file.
>> But I don't have a SAMA5D3-xplained board to test this change.
>>
>> Could someone who has access to this board please test the removal of
>> the SMC configuration?
> 
> It's rather unlikely that someone gives a positive answer here.
> I'd say just send the patch and add a note that it's untested.
> 
> That said, we @Pengutronix should have such a board, at least I can find
> it in our inventory list. Not sure if I can motivate someone to connect
> it for me.

I have one at home. If you send a patch, I can give it a test.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



