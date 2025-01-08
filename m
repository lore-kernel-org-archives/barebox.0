Delivery-date: Wed, 08 Jan 2025 16:20:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXr1-000n29-0C
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:20:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXr1-0003De-0s
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:20:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qPtbnGe6zBuhJzbFJdnN1ek1+fig/zBUr7ulPzV/Bwc=; b=RA7t2UqCoSSt40wXk9BxINnto0
	puT2dtLbfQ8yET7lkl3kTaiQbKzBf464bjphRVtCUC+4pPisxXCC88g8+6Hd138hYSM1OIsgKXehz
	3sWP4Up9RyAzrTGGDU5scSY4pMbqXcON1fSnN9cbcVo2cAiTCSnTN/2zn09CVq9Dm/N91ReFk9PBX
	bUq1JkpxFuvULvpsETcp9su1yKS/SUconziyymyuSkJ2JLTT1+/RGXc24x/bDVkR6epmmwsqbEuKl
	Nv+MwQcml9gFuNWH6+9c22IJR8jyJz5GBKXjBS84LC/lJ5IG1a9wkVKpycdFcKMT56zw8KJHvNWmf
	4pJIINCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXqd-00000008wQ8-0I40;
	Wed, 08 Jan 2025 15:19:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXqZ-00000008wPZ-1wTq
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:19:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVXqY-00035I-5Z; Wed, 08 Jan 2025 16:19:50 +0100
Message-ID: <63ac6399-be23-40c5-a2d4-d995999b5d7a@pengutronix.de>
Date: Wed, 8 Jan 2025 16:19:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <Z31B5rxOomVzKR_1@hephaistos> <Z36MZJtzptPAdmsI@pengutronix.de>
 <Z36WZYxab1bAEzFG@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z36WZYxab1bAEzFG@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_071951_506376_0908C432 
X-CRM114-Status: GOOD (  16.50  )
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
Subject: Re: [PATCH] ARM: beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.01.25 16:14, Konstantin Kletschke wrote:
> Hello Sascha,
> 
> On Wed, Jan 08, 2025 at 03:32:04PM +0100, Sascha Hauer wrote:
> 
>> Calling udelay(1000) and adding a comment saying it delays 1.8ms looks
>> inconsistent. Maybe better count up to 2 in __udelay() above which makes
> 
> I completely agree somehow since the time is not even constant and depends on
> the PLL settings just done before.
> 
> I suggest the following:
> 
> Removing the "* 3" fancy thingy in the function's loop, calling the
> function with 3000 instead of 1000, changing comment to "needed on some
> Beaglebone Black for warm start after reset".
> 
> That would be as simple as possible.

It would be nice to have the comment more verbose. e.g. that this issue
was observed on new Seeed-produced BBBs is an intersting info IMO.

> 
> Regards
> Konsti
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


