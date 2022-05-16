Delivery-date: Mon, 16 May 2022 17:48:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqcxg-00Fju5-2x
	for lore@lore.pengutronix.de; Mon, 16 May 2022 17:48:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqcxe-00029I-DQ
	for lore@pengutronix.de; Mon, 16 May 2022 17:48:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTnEldI0BMmU3miFUGpqnlM/AmfKhPYvSLDXwPk4K3M=; b=ntHRNK5jC9klAc
	97t/SzQ5ZD3Lk6XgoD+WqjjwjIh76b8jRaJJGi5LiRf5MYKloHOnvo3m2ht85gHDCVCvSYV4YEelG
	vdvWrUGp5FU7r6b7QSfAVXQ22m1XIBIC4gyajobsks3vFh0zoy0fORWBHUSBpQ+79F7XTCAW/aH2X
	aiY+q6lajsP7N9nhb6AVeHkSnapsAMmcy079a/vBvw4nP86//F8D1/57I7L1qFfp7b7AWtTomkIsL
	X1hooMjRSBWtB9/jOKVZVmiZc6Mh2dv9fNVs4lPHrn+OIT24otsr9l8GfEWAR7YGbm8FT29hNfPtp
	OVo007Iix9uDXkMxeS8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqcwJ-008jdF-Dq; Mon, 16 May 2022 15:47:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqcwE-008jcF-EN
 for barebox@lists.infradead.org; Mon, 16 May 2022 15:47:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nqcwC-0001wE-TP; Mon, 16 May 2022 17:47:12 +0200
Message-ID: <cfc4c6db-5656-bad5-485b-ace003ffefb5@pengutronix.de>
Date: Mon, 16 May 2022 17:47:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <20220515193807.354903-1-sam@ravnborg.org>
 <20220515193807.354903-9-sam@ravnborg.org>
 <8453b93e-905d-3df5-88f1-53eb4d4679f4@pengutronix.de>
 <YoJttiCoFb5Ohq07@ravnborg.org>
 <07b356d5-fc92-30f3-d59d-65456188e465@pengutronix.de>
In-Reply-To: <07b356d5-fc92-30f3-d59d-65456188e465@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_084714_531579_7B91DBE7 
X-CRM114-Status: GOOD (  13.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 8/8] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 16.05.22 17:35, Ahmad Fatoum wrote:
>> I will try to find a nice way to tell that we shall go for a non-high
>> capacity in the first place.
>> And then I will dig into the sector versus byte thing afterwards.
> 
> It's probably best we move this setting into the _bio_init functions,
> so callers are aware of the limitation and can e.g. for the 9263
> always hardcode it as false. Heuristic would be nice to have,
> but apparently it's not required for your use case.

Of course, I mean *out* of the _bio_init functions. Perhaps as a function
you can call *_bio_set_highcapacity(false);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

