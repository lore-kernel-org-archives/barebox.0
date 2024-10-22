Delivery-date: Tue, 22 Oct 2024 10:16:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3A3c-007OKP-15
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:16:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3A3a-00035g-Qz
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:15:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hou5PlVN5QyMy0NaUOUGBvzMjJV33AOJcNEabciaiCY=; b=C898RZgN6m6corhyoB9I3vm96w
	dw/wpd4pHP3j3XvZVCWg8AeHgLwqIys6oT5uyrGi909KuEKmvFjfRDCO98EG//TmZPER/Qel/xJi3
	+/MAVWuIH3zc4ZfnasfQgXC5v5PW4FrVEN7NPsObqnyBvrJJ0P0xom2+W08ioVqsvkanwabln5tTO
	D3vZqvTww7wna9XVYm6DowcK9ZtRzPhLqAQizKkUuYyJqvW4wwCEk9fmfSolIEKstNkDveCCjnHqG
	cnoIoEBu/aKRRtwmf04v4IWLBnoi5WdaNZPQGVZewMiHFkuynGE740O0MJey96jFQEbRDcIkc8fZO
	7eweRZIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A2b-0000000A85a-29GA;
	Tue, 22 Oct 2024 08:14:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A2G-0000000A82e-2Wmt
	for barebox@bombadil.infradead.org;
	Tue, 22 Oct 2024 08:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=hou5PlVN5QyMy0NaUOUGBvzMjJV33AOJcNEabciaiCY=; b=FW+7TmyO8O/BqiF8c5VCXDFzLP
	WAuTPU7DlepZyPq3by7tMTJKrIslY1dVy4tLiuqk76ISR7+zuAZFVuN91kgFsqLZDTnTg43yfPzy0
	ysj93kg9JhNfZ5I04ZkQ0VR1C5YXzUE4Xkmpdukix/IKmV/rfKMkUCyls1QmB5UHGEut3IGeTq8kR
	M3q5ziyQg9KQzOsEH7z8dYJzijUj6zrU97ABjxFlxrmFwRy/L5/UwKxPLP4gcZwXZfhjw/Ywet2tv
	EbYohA0Zi/kyyYvP1ar9C6dI5T+aylaASHC9Qu4J+P/43DbHatFCFCvfbpgT3yQT4JM5Tiy4MYMZi
	BjO9jzfA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A2B-000000089pT-3sL4
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t3A29-0002Hq-U5; Tue, 22 Oct 2024 10:14:29 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t3A29-000pef-0D;
	Tue, 22 Oct 2024 10:14:29 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t3A28-007WOY-39;
	Tue, 22 Oct 2024 10:14:28 +0200
Date: Tue, 22 Oct 2024 10:14:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Message-ID: <Zxde5EJFGvyYV3FT@pengutronix.de>
References: <20241021-null_der-v6-1-8dfc261cfc91@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021-null_der-v6-1-8dfc261cfc91@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_091432_876816_CC11165E 
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
Subject: Re: [PATCH v6] lib: fix dereferencing of a NULL pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

When sending a new series you have to start over b4 with

b4 prep -n <topic> -f master

As your old series (which went up to v5) was applied you can delete the
branch.

That said, no need to resend just for this.

Sascha

On Mon, Oct 21, 2024 at 06:43:03PM +0300, Abdelrahman Youssef via B4 Relay wrote:
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
> -- 
> Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


