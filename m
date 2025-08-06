Delivery-date: Wed, 06 Aug 2025 18:33:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujh4x-007hPz-0W
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 18:33:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujh4w-0006Dm-Jy
	for lore@pengutronix.de; Wed, 06 Aug 2025 18:33:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6PYADp2pWwpIw/U+i8ozTObV4UfarTotuX1AmerazEA=; b=cIXZJYMZwcNcxCxElYhxxT19MX
	9wcrxrVgTgUZY+yhxKD8cbWEGZue3oVI31Ku46kQ/Ubq43CsW3y8Xhh65pogKrDD2vmWiTM8EVgZQ
	vYn0FYLkiGVUKAaXoZV6Ja5PsOOBIyV4BQdtEjnzAUW3P2rRzpa+N1xLn4HPTZNi/2Z64S+RCC3iT
	SJYgs3NQPXN7gjnWKKvhzM+yxER7Th76L05zSzfj+ZUyJzm2NaHg9UPZ0gaWTIGhq7lmIvFw3bw3y
	f6UVonT6zVTb/wOzK5wiinELTTbNeVqfqsOu61jkGFXhvBWHme1k/bvyq0jXhCAfrVSiioi2ckwj5
	UQ3qDVmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujh4Y-0000000Flpa-1BVm;
	Wed, 06 Aug 2025 16:33:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujh4V-0000000Floc-2q0U
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 16:33:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh4U-00067m-B5; Wed, 06 Aug 2025 18:32:58 +0200
Message-ID: <7eaf6bd4-5161-4caa-9d5f-29b36d2c2325@pengutronix.de>
Date: Wed, 6 Aug 2025 18:32:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250806163034.3231943-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250806163034.3231943-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_093259_717743_0811EDF4 
X-CRM114-Status: GOOD (  18.07  )
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
Subject: Re: [PATCH] fixup! test: add --bootarg option when running under QEMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Please dismiss this one. Fixup is for wrong commit.
Correct one just sent out.

On 8/6/25 18:30, Ahmad Fatoum wrote:
> test: qemu: pass -nographic in the default case.
> 
> Otherwise, we end up with an error message if the default is to use a
> graphic backend.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  conftest.py | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/conftest.py b/conftest.py
> index 45e8835924b3..e8de5952efb4 100644
> --- a/conftest.py
> +++ b/conftest.py
> @@ -116,9 +116,10 @@ def strategy(request, target, pytestconfig):
>          else:
>              pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
>  
> -    graphics = None
> -    if pytestconfig.option.qemu_graphics:
> -        if qemu_bin == "qemu-system-x86_64":
> +    if qemu_bin is not None:
> +        if not pytestconfig.option.qemu_graphics:
> +            graphics = '-nographic'
> +        elif qemu_bin == "qemu-system-x86_64":
>              graphics = '-device isa-vga'
>          elif 'pci' in features:
>              graphics = '-device VGA'

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



