Delivery-date: Wed, 04 Jan 2023 13:13:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD2ec-001R4E-Ok
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 13:13:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pD2ea-0003Cc-FU
	for lore@pengutronix.de; Wed, 04 Jan 2023 13:13:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+g8O/dJ8IzEKWjOZhgdEpKnmOUdQUAdZOqCofnD0bJg=; b=jnxexOcQQFF7q6xIvRKGfjztcZ
	1ENyFkDSX+DzE7/IucuSipEZ1VfGqN/+ICta6DtTRuIMGKJBuGJOA5Woso6GHZePpON2HHBTwxHo5
	988xdiUIlr6XPCdvuAmUD5LcV8NuI/7U+pzDFPLckAdfBzE29shc6vtkwX1JXfrKO4+WmTwLCayln
	Xd3TAsLA500TghSazNFLWSi8cD/2QZnlMTMiR1KVpMMKnNd1dkuyv1UDCz/RBOsMph09PMU7l8kE6
	4ODLXzUlwqn0a35AD3A1Kym0wKy9icAR8jtSTNpsNQeMnmQi00sKQPwRMcTlTXW+92sL0YLDrJNnN
	oPplOWUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD2dA-008yzx-J4; Wed, 04 Jan 2023 12:12:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD2W0-008xKw-06
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 12:05:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pD2Vx-0001rA-Sw; Wed, 04 Jan 2023 13:05:02 +0100
Message-ID: <f996bb72-f0a5-7219-c3bc-60a94aace222@pengutronix.de>
Date: Wed, 4 Jan 2023 13:04:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org,
 Leif Middelschulte <leif.middelschulte@klsmartin.com>, uol@pengutronix.de,
 ore@pengutronix.de, =?UTF-8?Q?S=c3=b8ren_Andersen?= <san@skov.dk>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
 <20221222141201.3087192-7-a.fatoum@pengutronix.de>
 <20221223091048.faug35rhc3zkujc6@pengutronix.de>
 <20230104120119.GT11668@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230104120119.GT11668@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_040504_147731_08365B47 
X-CRM114-Status: GOOD (  20.08  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 6/6] ARM: configs: imx_v7_defconfig: enable some useful
 options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 04.01.23 13:01, Sascha Hauer wrote:
> On Fri, Dec 23, 2022 at 10:10:48AM +0100, Marco Felsch wrote:
>> Hi Ahmad,
>>
>> On 22-12-22, Ahmad Fatoum wrote:
>>> Give the defconfig some color by enabling console colors during startup,
>>> i.MX6 parallel LCD driver, backlight and some more options that were
>>> noticed missing during debugging a skov-imx6 issue.
>>
>> I'm okay with enabling a few command and the colored console per default
>> but the video-output use-case isn't really common and just increases the
>> size of the barebox image.
> 
> This patch indeed increases the binary size, like for example
> barebox-zii-vf610-dev.img from 743788 bytes to 790858 bytes.
> However, the enabled video options are only responsible for a small
> fraction of it. With disabling the video options again the image
> size shrinks to 788738 bytes.
> 
> I've always seen the imx_*_defconfig files as mostly full featured
> configs to get good compile coverage and a barebox that just works
> for as many cases as possible. From that perspective I think it's ok
> to add more options.

Feel free to pick 1-4/6 and I'll look again into 5-6 and resend
as appropriate.

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



