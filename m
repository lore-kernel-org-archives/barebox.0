Delivery-date: Thu, 04 Sep 2025 08:56:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3tR-007wPj-2U
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 08:56:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3tQ-0004vp-LH
	for lore@pengutronix.de; Thu, 04 Sep 2025 08:56:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BE+Yx5ccPfiiDv+NN6WvSQhfA976QK1BcuBceCflJMI=; b=npalp3FbViQQsafWHqnTK5nHdo
	4NeW5PVyQNF39Z6mwuLwvmAXpaG7w3vMIMGxKLQhEB/ZjuJ1OkCtuhXW0QQ17iF798/2U3nPqtN0j
	qPkAqeqWTWxhYN1IonG0CEpzWLlmMqYjFmUAkCx7PNEbCy+99qaSqm2k0k8Ry/+WsWfCX8AjhVucb
	SrVZEkeAxMGKeX6ZQ7zbY233UWbug4m8JWPukfbdKn412IrboEy8pqdOpmybLFSSMTBtnIUII02wX
	LyeClFfrTk9TwwLmbEhjhRgxRnH3/ySOJ54Pr2ueVHM6V3lxX6+onUG1UobNruxF2CtU91X+BTPCa
	pswJo8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3sz-00000009g6d-2Jno;
	Thu, 04 Sep 2025 06:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3sw-00000009g5T-2JUP
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 06:55:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu3sv-0004mw-9e; Thu, 04 Sep 2025 08:55:53 +0200
Message-ID: <170fca94-fe84-42aa-b760-6745c86c94c9@pengutronix.de>
Date: Thu, 4 Sep 2025 08:55:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, anis chali <chalianis1@gmail.com>
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-6-chalianis1@gmail.com>
 <aLfqB0Ma_UTaGKpG@pengutronix.de>
 <CAL+1fyD6Jevxx_wP00caRoXe0yRmM6uScJN8W3fkRVNVfLRj1Q@mail.gmail.com>
 <aLksEfZ3-YiEL-xN@pengutronix.de>
 <CAL+1fyA5FtjLfRDbF-dpxr=T6kL=hrF8pr6wJk5aR1X=5CEFUg@mail.gmail.com>
 <aLk2OXrt357LdhkT@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aLk2OXrt357LdhkT@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235554_585733_B0121953 
X-CRM114-Status: GOOD (  14.23  )
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
Subject: Re: [PATCH 6/7] efi: payload: add support for efi stub boot and fit
 image.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 04.09.25 08:48, Sascha Hauer wrote:
> On Thu, Sep 04, 2025 at 02:20:59AM -0400, anis chali wrote:
>>    For now I submitted with 128KB.
>>    > No. I don't do EFI very much and I currently don't have a setup for
>>    > testing this. Ahmad is more experienced with EFI than me.
>>    Ok, I can maybe share my scripts, they are not clean at all with many
>>    repos.  if I have time
>>    I will do some clean up and share them (there scripts to generate
>>    fitImage, linux, dts, optee, TF-A, UKI, edk2, custom qemu ...).
>>    Thanks.
> 
> Great, looking forward to it.

That would be very useful. I already started setting up a Yocto BSP, which
generates some of this components (OP-TEE, TF-A and kernel for 32-bit ARM
so far) for eventual use by CI and development.

Your scripts would help in fleshing it out.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


