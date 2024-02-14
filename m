Delivery-date: Wed, 14 Feb 2024 14:56:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raFjz-006DVe-11
	for lore@lore.pengutronix.de;
	Wed, 14 Feb 2024 14:56:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raFjy-0008OP-OH
	for lore@pengutronix.de; Wed, 14 Feb 2024 14:55:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/i66VCaP0W7XWH32SWYv24NfCmIQBGzGi3kgN5ng0D8=; b=SJCnk8tnkBi6vtrfxIS26470s3
	5NMjgeN5pyXQkTPBrum4BWQCKNpAS9RS8Q2Skin49HtEgROO0hA+zGFpavAnNPjv0NQxu0CYLLasz
	NgHtsLWGFcSDQawgumHk/K9CKrL6nXTPP81CGtQv2Zr1sqSD7Og2HEc/R4WKxfmpYgpIexFJdw3G1
	eNgA/W4bmwOVFqvjji6AtBdfkEDPQmfWfRZKXQcM19SGjm84eSwaybWpMe2ARipec/3SNyhtWW/Rv
	zIQwnYgM2/OyD0vUCmLuFx8QCNNSIkzFD4KEGaNLnHtwlWijVvQLjT9llhD4FJTLzeS2W4Kuk9SZP
	/Yiw6slw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raFj4-0000000D5PB-0xdZ;
	Wed, 14 Feb 2024 13:55:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raFj0-0000000D5O8-1qZe
	for barebox@lists.infradead.org;
	Wed, 14 Feb 2024 13:54:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raFiw-0008DB-Aw; Wed, 14 Feb 2024 14:54:54 +0100
Message-ID: <a5a7596a-e9ed-42cf-9f5b-16a68235509a@pengutronix.de>
Date: Wed, 14 Feb 2024 14:54:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Cedric Blancher <cedric.blancher@gmail.com>, barebox@lists.infradead.org
References: <CALXu0UeQAXPGuuEqT-buX5o_H7YbSdUYqkpyP7i1d5yc55xcfQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Dan Shelton <dan.f.shelton@gmail.com>
In-Reply-To: <CALXu0UeQAXPGuuEqT-buX5o_H7YbSdUYqkpyP7i1d5yc55xcfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_055458_512325_A6C17630 
X-CRM114-Status: GOOD (  12.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Booting from NFSv4 file system?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ced,

On 13.02.24 08:51, Cedric Blancher wrote:
> Good morning!
> 
> Does Barebox support booting from a NFSv4 file system? Explicitly
> neither NFSv2 or NFSv3 will work in our case, as both protocol
> versions are no longer allowed by our IT department.

It's a funny coincidence that the same question was asked just a few
days earlier:

 https://lore.barebox.org/barebox/CAAvCNcByUskEuqLMPmO6mbCOZHhYNx_OXZKYO+HKyz_=Cs2RCQ@mail.gmail.com/T/#t

Do you and Dan both perhaps use the same Enterprise Linux that now ships without
UDP support in the kernel NFS server?

To sum up the other thread: We don't have a TCP stack in barebox, but that's a
hard requirement to do NFSv4. There's AFAIK no one currently working on this.

The immediate options are either using TFTP to download the kernel and then
use NFS for mounting the rootfs within the kernel or to use a userspace NFS
server. I am using NFS Ganesha at home for this.

Cheers,
Ahmad

> 
> Ced

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



