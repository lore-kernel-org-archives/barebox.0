Delivery-date: Mon, 21 Oct 2024 19:15:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2w0a-00795K-1Z
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 19:15:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2w0Z-00024E-Rn
	for lore@pengutronix.de; Mon, 21 Oct 2024 19:15:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/mWx5zR8Etd8Agwnh9S/59nVyWHjKgiWYNBq4tLXl3E=; b=s+YoQyNzSrsLNAk4Uf6Fnn+sH7
	dc/QyIA+FwV2gmyLmJc5E9WvhTA+4KIFrn9BaZN224ZckX5n1C/Frw18XSOpyOKy8oITc0xfpDVZv
	lWZkQYbek5txAW4xZyVhyXrVWD4rGyK1XC0+EPatw0UvxByPfRJpDW7KWzZ8LqhjisGcOAdFs2Sqw
	0SKv2PvD6eCDzwr5y2whU0UIUxXk02y+BEZOkJwNwm6/mdvD63ORO0uoYDuSMXGV5v34F/psW0OSl
	njnm3xHLL5+aXhKABsTJfCD4PqFUkF4hzl/oqf81UTj70W6hjmOBxt9N06B43qe328nvldCq+dG9V
	TwkX5NRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2w0B-000000085U0-3kP5;
	Mon, 21 Oct 2024 17:15:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2v2r-00000007vIx-3X5v
	for barebox@bombadil.infradead.org;
	Mon, 21 Oct 2024 16:14:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=/mWx5zR8Etd8Agwnh9S/59nVyWHjKgiWYNBq4tLXl3E=; b=VbIUkaDOiFQYibwNtJYPEvjV+E
	kAtQQJPFCQE7x+ioliSj0vYmkOV548OBGR8Dl24mqgXzIN4WzwHR/MKrq7u6EhhXZGNeAbPqGyfm4
	5ru3RZWWCgIvet80Hk7gSeGcgAbLWSiIckkdR12D898WIxi0MalRCMr/gAB7ttNFo4HOwcIjrIT8B
	avwLDjiLXHO9BAmPoU8z1p5m5ZxvPu7glq5detRjOMahtVg4c/77xNVzJrvlc05yDlx5zTDuV0xkF
	mQT6N2fl7EAoLuLl3nk+VhiSTNVrNckqpvCXsUDXQsNpv8NNyiSF9IR8JS8kb+D8gZzs7wAtk3Kx1
	zjhHFjdg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2v2o-000000080vT-3BAV
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 16:14:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2v2j-0005rm-Rr; Mon, 21 Oct 2024 18:14:05 +0200
Message-ID: <19c2b9dc-827f-4dd6-8d9b-321cd36941c3@pengutronix.de>
Date: Mon, 21 Oct 2024 18:14:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: abdelrahmanyossef12@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20241021-null_der-v6-1-8dfc261cfc91@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-null_der-v6-1-8dfc261cfc91@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_171410_872331_701DE7D0 
X-CRM114-Status: GOOD (  20.50  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6] lib: fix dereferencing of a NULL pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

Why is this v6? Do you need to reset your b4 setup somehow? :-)

Tip: with b4 send --reflect and --dry-run, you can check how the patches
look like before sending them.

On 21.10.24 17:43, Abdelrahman Youssef via B4 Relay wrote:
> From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> Runtime reported by AddressSanitizer due to time a NULL pointer dereference.
> 
> This is the stack trace:
>     #0 0x5b2550e70c4b in get_param_by_name /barebox/lib/parameter.c:56:2
>     #1 0x5b2550e70c4b in __dev_add_param /barebox/lib/parameter.c:153:6
>     #2 0x5b2550e71666 in __dev_add_param_int /barebox/lib/parameter.c:471:8
>     #3 0x5b2550daece8 in dev_add_param_uint32 /barebox/include/param.h:266:1
>     #4 0x5b2550daece8 in dos_partition /barebox/common/partitions/dos.c:289:2
>     #5 0x5b2550dadc62 in fuzz_partition_table_parser /barebox/common/partitions.c:331:10
>     #6 0x5b2550dadc62 in fuzz_partition_table_parser_ramdisk /barebox/common/partitions.c:344:1
>     #7 0x5b2550ebb94d in fuzz_test_once /barebox/include/fuzz.h:68:2
>     #8 0x5b2550ebb94d in fuzz_main /barebox/lib/fuzz.c:38:3
>     #9 0x5b2550d8eb41 in start_barebox /barebox/common/startup.c:381:3
>     #10 0x5b2550f4ea6d in sandbox_main (/barebox/images/main.elf+0x411a6d) (BuildId: dfdb3401891b94e86545eddb1502f0815ffd0afb)
>     #11 0x5b2550f4f2b2 in start_barebox_coop fuzz.c
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
>  lib/parameter.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index bf9e83152b..21fa9e7e70 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -51,6 +51,9 @@ const char *get_param_type(struct param_d *param)
>  
>  struct param_d *get_param_by_name(struct device *dev, const char *name)
>  {
> +	if (!dev)
> +		return NULL;

I don't think that's the correct place to fix this. The pointer shouldn't have been
NULL in the first place. The problem seems with the fuzzing infrastructure not
allocating a device for the ramdisks.

I'll look into a fix and push it to my Github branch.

Cheers,
Ahmad

> +
>  	struct param_d *p;
>  
>  	list_for_each_entry(p, &dev->parameters, list) {
> 
> ---
> base-commit: 9d47ff66c3892c5a6ddd4704993365a797fbeb68
> change-id: 20241021-null_der-1378213f0da2
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


