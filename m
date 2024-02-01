Delivery-date: Thu, 01 Feb 2024 14:42:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVXKT-00Fhjc-0d
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 14:42:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVXKT-0007R0-TQ
	for lore@pengutronix.de; Thu, 01 Feb 2024 14:42:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0zzFPPVffPq8HJfXJGXmdjhMDT73D8afjtaeqTo8eIY=; b=XRzSP+82MDUIiTucMKri57lWNz
	NdfFSOOpe/YI9Ba5GTAmAh3fn+X7UPZUqs8JQbzI/trlymzVpH99kdIzkj82yDoAWMCjhCWxbLs5O
	untyalifhPFZLT7onAR4LwaDSxCK3GisuKhB+w/e4/W8VGs/PKKJahbg60SaUE4twmIXON8TQK7ia
	6p3cl02E8vNmzagpEJ/56djmVtahsASUbokoQi7Gs0fGfBuVc4Z7BIBVHs05hnLLAHm38KJA6P1nX
	gblfdfUxqB/o/cDZY6rjKufKZ5F7Dilm5aliTR3o5bpbe9/bnuVGkxOPWvpqrXIqXqKMafx+0bMIy
	aZT1PXXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVXJw-0000000899A-3jvn;
	Thu, 01 Feb 2024 13:41:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVXIS-000000088X5-0bM9
	for barebox@lists.infradead.org;
	Thu, 01 Feb 2024 13:40:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVXIQ-0007HD-TA; Thu, 01 Feb 2024 14:40:03 +0100
Message-ID: <43c5f56d-0a51-40e8-ab70-a48d5fb9546c@pengutronix.de>
Date: Thu, 1 Feb 2024 14:40:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvS5XfXJXv0Fkg9Q=X-QL6jAn7-R7CdGhyoOzo3mbVuh3Q@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvS5XfXJXv0Fkg9Q=X-QL6jAn7-R7CdGhyoOzo3mbVuh3Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_054004_388381_FB6A8028 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Possible regression 2023.12 -> 2024.01
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 31.01.24 12:03, Alexander Shiyan wrote:
> ERROR: mmc1: Cannot read MBR/partition table: I/O error
> mmc1: registered mmc1

I observe no such issues with v2024.01.0 on the NXP i.MX8MN EVK, which
has both SD-Card and eMMC (I booted from SD-Card).

Given that you have a known good, could you run git bisect and
see what commit is reported as introducing the regression?

> The booting freezes (~5 s or so) during the mmc1 detection process.
> Also, for reasons unknown to me, the kernel now throws an error when loading:

I'd assume these are consequences of the initial EIO.
Once we have the culprit commit, we may understand better what happens.

Let me know how it goes.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



