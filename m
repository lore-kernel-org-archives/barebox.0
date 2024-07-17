Delivery-date: Wed, 17 Jul 2024 09:37:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTzEJ-0006Wh-30
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 09:37:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTzEJ-0007w1-AL
	for lore@pengutronix.de; Wed, 17 Jul 2024 09:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=81pRmDIr8VPNO1scivZrLeg7MkPEKLxfuG7kKkzwx0A=; b=uVgnon0+++h+zPnFNYO2LcTRHa
	D950E6W+BZAxsry2/aDzQIlVH5qCJDfUWJ9A4dD7V81kWDcWHdX3auxl8mCJAvs3/dEQCWa5JsnrC
	Xo7WJIxKeR+NlnROrn+BJy4nksmn0ThqkVFaMFRHaCSqAMqedEFiDKORYuojEUCcsKpEH2aDqaZcz
	Vfhg6J+zl0xRB6oXEInxa1SywcKWimirF4Xtio0mM5ibG0iOqHuIHbg3Cp6zEmABzXZizpA5vKQn4
	+hFCw3tomR1c3jo10dknUEnwE2r2cBvjcbMAikZK03SEXoieFi4TQXBoc5Xg2kPFTdpYwjgg2/sJC
	qjJhRsuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTzDr-0000000CzyE-2UEB;
	Wed, 17 Jul 2024 07:37:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTzDe-0000000Czx0-1Zs7
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 07:37:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTzDd-0007sY-5R; Wed, 17 Jul 2024 09:36:57 +0200
Message-ID: <03970a3a-e589-4a73-ba94-f2dfc7257502@pengutronix.de>
Date: Wed, 17 Jul 2024 09:36:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Richard Weinberger <richard@sigma-star.at>, barebox@lists.infradead.org
References: <2572594.vzjCzTo3RI@somecomputer>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <2572594.vzjCzTo3RI@somecomputer>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_003658_472388_12D77309 
X-CRM114-Status: GOOD (  15.39  )
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
Subject: Re: Various Squashfs Issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Richard,

On 16.07.24 17:49, Richard Weinberger wrote:
> Hi!
> 
> While inspecting the squashfs implementation of Barebox I noticed
> some issues and was able trigger heap corruptions using crafted filesystems.

Thanks for sharing your results. By the way I had started a libfuzzer integration
for barebox a while back that I just pushed here:

  https://github.com/a3f/barebox/tree/libfuzzer

It still needs some love to make it upstream, but it's already usable and can find
issues, but it still suffers from depleting memory after a while. I need to fix
those memory leaks and clean it up when I find the time, so we can start more heavily
fuzzing a base set of functionality that's needed for secure boot (mainly partition
tables, file type detection and FIT image parser).

> e.g.

[snip]

> While implementing fixes for them I realized that these are all known
> and fixed in Linux.
> 
> I suggest backporting at least these Linux fixes for squashfs:
> 
> 01cfb7937a9af ("squashfs: be more careful about metadata corruption")
> d512584780d3e ("squashfs: more metadata hardening")
> cdbb65c4c7ead ("squashfs metadata 2: electric boogaloo")
> 71755ee5350b6 ("squashfs: more metadata hardening")
> a3f94cb99a854 ("Squashfs: Compute expected length from inode size rather than block length")

Backported in https://lore.barebox.org/barebox/20240717063328.2810835-1-a.fatoum@pengutronix.de/

Cheers,
Ahmad


> 
> Thanks,
> //richard
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



