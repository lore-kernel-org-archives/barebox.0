Delivery-date: Wed, 19 Feb 2025 17:49:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknGF-004NnS-2e
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:49:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tknGE-0005k9-Ja
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:49:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SxKqieJnc163grWWKEbh+Tb+DkAGWQdRswewDVKJFd8=; b=pbUqhzXBpJ7eP8lc/m/QnCBCLJ
	ju8+5JRSDdv382PGFLoHy/JXtVxR35xvZgVm9GCNj4cFqIXYTuo/Rbflzw/jxQhYdJwrzapANKS4r
	6iv/VJ2n6AKjh3V20qJCBLpw2my69qY7/tlmcGkGU6C2b0R1TouGBJT5xV5Fu+0RpiQKGGeVOnCMO
	FofqjZKTDRaoo4S0KtrjETzqKYYQITR7saFNK2XnD319h/aL9EMVyMNYxxfTrJL4I7VxALC1tTrus
	GZWwqj5LIXoEq++Ygwy/6fGvZAIS9DO0PfHFMkE4QQQcECwmrM4jBv8LpKK6Ph9mMsOzeof8NBuam
	GAQvhV4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tknFo-0000000DvSS-1Daq;
	Wed, 19 Feb 2025 16:48:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tknEb-0000000DuuD-1MNC
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 16:47:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tknEZ-0005QF-Cy; Wed, 19 Feb 2025 17:47:39 +0100
Message-ID: <5aad1a19-e9d7-47b8-a096-1122ae3a1256@pengutronix.de>
Date: Wed, 19 Feb 2025 17:47:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_084741_375438_8D1219C2 
X-CRM114-Status: GOOD (  22.40  )
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
Subject: Re: [PATCH 0/5] Filesystem memory corruption fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 19.02.25 15:18, Sascha Hauer wrote:
> These are some fixes for memory corruptions that can occur on corrupted
> or manipulated filesystems.
> 
> In case you use one of the affected filesystems in a secure boot chain
> you should apply these patches.
> 
> Normally you shouldn't use a barebox filesystem in a secure boot chain,
> but instead use FIT images on a raw partition. We never made this explicit
> though. Ahmad has done this recently:
> 
> https://lore.kernel.org/barebox/20250217180949.3961860-3-a.fatoum@pengutronix.de/T/#u
> 
> I digged through the U-Boot code and there are a few CVE fixes in the
> ext4 code that we'll likely need as well. But even with these applied
> we don't consider the barebox filesystems as suitable for secure boot.
> 
> For those curious we consider adding support for dm-verity at some
> point. This would allow us to remove the attack surface from the
> filesystem implementations and we could also use bootspec rather than
> signed FIT images.
> 
> Sascha
> 
> Sascha Hauer (5):
>   CVE-2025-26722: fs: squashfs: Ensure positive inode length
>   CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer
>     overflow issues
>   CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overflow
>     issues
>   CVE-2025-26725: fs: jffs2: fix malloc(size + constant) buffer overflow
>     issues
>   CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer
>     overflow issues

I think the CVE id should better go into the commit message body, (maybe
with a Fixes: before it) and not into the title.


Thanks,
Ahmad

> 
>  fs/cramfs/cramfs.c    | 2 +-
>  fs/ext4/ext_barebox.c | 2 +-
>  fs/jffs2/malloc.c     | 4 ++--
>  fs/jffs2/nodelist.h   | 2 +-
>  fs/jffs2/readinode.c  | 2 +-
>  fs/pstore/fs.c        | 2 +-
>  fs/squashfs/symlink.c | 8 ++++++--
>  7 files changed, 13 insertions(+), 9 deletions(-)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


