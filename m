Delivery-date: Sat, 17 Feb 2024 11:19:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbHnB-009h3K-1F
	for lore@lore.pengutronix.de;
	Sat, 17 Feb 2024 11:19:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbHnA-0005o2-M8
	for lore@pengutronix.de; Sat, 17 Feb 2024 11:19:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yCUzxG0TqRWTJc/SMtjLgvZG6UcxLVX5ZJNMBR7sMA4=; b=W6XD6ydIaz8sdPWE+IAKoY8dqC
	1IJHSC5+Hj8YEFoC345eK8NgHPTAukjnYLXbEv8Gep3h294ZE3FGx1LrAT/nwyY1NyckGRgbsowbS
	wadCDKJmDm+eXN4o+bnYN3d6D1kh9UsxI0gC+w/F9W9nYZt58/T8sowbRBR5JZGf2lOrE2ft0NY+W
	FzoiNJfAlKN/9gjmG/hwDuhHsVIRxJd1x5ffj+/QwIMGKtHoK6CLVG/MayZH1LCP1+uP0QocrRwGr
	kRlTamu0CN4FpYE3rcVh0gE705wafbbSsBVWd0Kpnka8ktgihijkQoFqbuUpbUvEr+wiQTdwkKpVz
	iAypf5+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbHmc-00000005LNl-3xAK;
	Sat, 17 Feb 2024 10:18:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbGkO-000000055Db-43Id
	for barebox@bombadil.infradead.org;
	Sat, 17 Feb 2024 09:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=yCUzxG0TqRWTJc/SMtjLgvZG6UcxLVX5ZJNMBR7sMA4=; b=FnaiFrJprlpKx/EVMWdveGZToN
	p5745gwkIVHpuHQTwHtFY2G0Rm7k2tG/VH5YsL3WX89Vc2qenKruPc8GKKRwVDnVeFtyt1v6J4dIR
	NSL08A9TDy+PFaa9+Ekhuw9jDSjBmcUw0c45LxSvOCKNeYna+UVbELG86f15dBS32EQ0B2yW7juWa
	hSAVe1ltflPHhvuJin5fD/IjuMeLHUx/DZPMiBU8gRULSwyVrGCiD1nIgLXd8BMkRIjh2/xQrQXm0
	7laBUrs3vgZLO24q/KVQcFmZMfnSouX1AGSvJyPWYyJWtMGLQL7R2wKWmg+lCaZVPw3229RthwMrh
	3+rV6myQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbGkL-00000000HWx-0nyF
	for barebox@lists.infradead.org;
	Sat, 17 Feb 2024 09:12:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rbGkH-0004ae-7o; Sat, 17 Feb 2024 10:12:29 +0100
Message-ID: <6c0f2b72-4513-481a-bf1e-4ae844130f04@pengutronix.de>
Date: Sat, 17 Feb 2024 10:12:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Cedric Blancher <cedric.blancher@gmail.com>, barebox@lists.infradead.org
References: <CALXu0UeQAXPGuuEqT-buX5o_H7YbSdUYqkpyP7i1d5yc55xcfQ@mail.gmail.com>
 <a5a7596a-e9ed-42cf-9f5b-16a68235509a@pengutronix.de>
 <CALXu0Uc=pG-P7_6kaqkYLEJEWHu4zCLM9XztmH3XndDGnDS2Qg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Dan Shelton <dan.f.shelton@gmail.com>
In-Reply-To: <CALXu0Uc=pG-P7_6kaqkYLEJEWHu4zCLM9XztmH3XndDGnDS2Qg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_091233_677876_B7AC8049 
X-CRM114-Status: GOOD (  26.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Booting from NFSv4 file system?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ced,

On 17.02.24 09:01, Cedric Blancher wrote:
> On Wed, 14 Feb 2024 at 14:54, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hello Ced,
>>
>> On 13.02.24 08:51, Cedric Blancher wrote:
>>> Good morning!
>>>
>>> Does Barebox support booting from a NFSv4 file system? Explicitly
>>> neither NFSv2 or NFSv3 will work in our case, as both protocol
>>> versions are no longer allowed by our IT department.
>>
>> It's a funny coincidence that the same question was asked just a few
>> days earlier:
>>
>>  https://lore.barebox.org/barebox/CAAvCNcByUskEuqLMPmO6mbCOZHhYNx_OXZKYO+HKyz_=Cs2RCQ@mail.gmail.com/T/#t
>>
>> Do you and Dan both perhaps use the same Enterprise Linux that now ships without
>> UDP support in the kernel NFS server?
> 
> No, it's a reaction to a EOL/EOS warning that in 18 months we will not
> have NFS-over-UDP support, as UDP support in NFS is depreciated since
> YEARS, and NFSv2 and NFSv3 are being phased out in favor of NFSv4.

Who issued that particular 18-month warning?

> That aside many enterprises now started banning UDP based applications
> wherever they can, and NFS-over-UDP with its depreciation is high on
> that list. I have several customers who cannot do that anymore, and
> even in Institute Pasteur it will no longer be happening in 2025.
> 
> So we need a replacement, and we need it fast.

My impression so far was that NFS support in barebox is primarily used for development
(where the development host can be reconfigured) and to a lesser extent in the field
(where the server can also be reconfigured). Understandably, NFSv4 and NFSv3 over TCP
were thus low on the priority list.

It's good that you and Dan are reaching out, so we know which features are missed
by users.

Could you and Dan elaborate what your usual setup with NFS and barebox is?

>> To sum up the other thread: We don't have a TCP stack in barebox, but that's a
>> hard requirement to do NFSv4. There's AFAIK no one currently working on this.
> 
> So basically in 18 months the NFS support in barebox will become useless, right?

If you can't do NFS over UDP in 18 months and no one integrates a TCP-Stack into
barebox in the meantime, yes.

That said, 18 months are quite a while, so with enough interest, integration
of e.g. lwIP into barebox is certainly doable.

>> The immediate options are either using TFTP to download the kernel
> 
> But tftp requires UDP, right? There is no tftp-over-TCP, right?

TFTP-over-TCP would be normal (non-trivial FTP). I suggested TFTP without
knowing that UDP protocols are being phased out in your organization.

>> and then
>> use NFS for mounting the rootfs within the kernel or to use a userspace NFS
>> server.
> 
> But will it still be UDP?

The kernel can do NFS over TCP independently of barebox. That way you are only
left with the problem of how to load the kernel.

>> I am using NFS Ganesha at home for this.
> 
> I would prefer the JAVA NFS server from DESY, but even they no longer
> support NFSv3 via UDP, only TCP.
unfsd is another userspace server with NFSv3 over UDP support. Both nfs-ganesha
and unfsd are commonly shipped by distros.

But as I understand, your organization policy is to phase out UDP-based protocols?
Does this also extend to e.g. HTTP/3?

I think it would be most constructive to learn more about your use case and what
your constraints are.

Cheers,
Ahmad

> 
> Ced
> --
> Cedric Blancher <cedric.blancher@gmail.com>
> [https://plus.google.com/u/0/+CedricBlancher/]
> Institute Pasteur
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



