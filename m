Delivery-date: Fri, 05 Jan 2024 10:33:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLgZl-004a87-0C
	for lore@lore.pengutronix.de;
	Fri, 05 Jan 2024 10:33:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLgZk-0001kA-9l
	for lore@pengutronix.de; Fri, 05 Jan 2024 10:33:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e0dVOXuRULjdM+h7qixH5Ot6Ax/2QKxrKuI8ePm0Opk=; b=RA60MzC+2ia/PmaTWD33I+k6mq
	Dc/hVIMcD7DZUyEh39EU+ZAS7AW7r4PRvvPHwIVEN2u753Tx2X9yW+6T7dAXLlaZY7XQ8vIKq+STV
	y+Sz8hWs6+jra3J8NLIieLM1rpKDzOttv7X/vCh+wCVCwqdxoCqRLsAit4ADeXEVSdHlv5zxtNkpk
	AoByR2lZvMbgruHuiIs6imI8JGOBlnEsVdPh2hVHsL8G7/EvSWNms8EbnAg4pwgI0MQQPJ3oZuJaO
	uQJq4TIDFQKwG8681eIeKFo4SzxCzC/f1dSvXxWx80kkxlhWbHYtmKsFI83MhkZGiEnksrngKYOcP
	9mD/uNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgYe-00GOYP-1t;
	Fri, 05 Jan 2024 09:32:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgYb-00GOXS-2m
	for barebox@lists.infradead.org;
	Fri, 05 Jan 2024 09:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1rLgYZ-0001Xr-4f; Fri, 05 Jan 2024 10:31:59 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mol@pengutronix.de>)
	id 1rLgYY-000YTc-OT; Fri, 05 Jan 2024 10:31:58 +0100
Received: from mol by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mol@pengutronix.de>)
	id 1rLgYY-002SCW-2B;
	Fri, 05 Jan 2024 10:31:58 +0100
Date: Fri, 5 Jan 2024 10:31:58 +0100
From: Michael Olbrich <mol@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZZfMjhCHW7mzXCDL@pengutronix.de>
Mail-Followup-To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	barebox@lists.infradead.org
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-60-a.fatoum@pengutronix.de>
 <ZZWuTmS6DichQw5g@pengutronix.de>
 <af116cd9-ce59-4152-b19f-d654897df04c@pengutronix.de>
 <ZZb0eXfQvD8sjN5-@pengutronix.de>
 <3c4fc4ee-a4fe-44e5-a4c5-7a8f086a1124@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3c4fc4ee-a4fe-44e5-a4c5-7a8f086a1124@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_013201_919329_1ECDA910 
X-CRM114-Status: GOOD (  44.41  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 059/112] efi: payload: init: restrict barebox mem to
 first 1G only on x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Fri, Jan 05, 2024 at 10:14:33AM +0100, Ahmad Fatoum wrote:
> On 04.01.24 19:10, Michael Olbrich wrote:
> > On Thu, Jan 04, 2024 at 12:17:12PM +0100, Ahmad Fatoum wrote:
> >> On 03.01.24 19:58, Michael Olbrich wrote:
> >>> On Wed, Jan 03, 2024 at 07:12:19PM +0100, Ahmad Fatoum wrote:
> >>>> When run as EFI payload, barebox will not have full access to DRAM and will
> >>>> have to ask the EFI firmware for memory. It does so once at the beginning
> >>>> and since commit 356aaef5a37d ("efi: improve malloc pool allocation"),
> >>>> the buffer was always placed beneath the 1G boundary.
> >>>>
> >>>> Aforementioned commit didn't elaborate why a maximum of 1G in particular
> >>>> was chosen. Anyways, non-PC architectures have different memory maps, so
> >>>> a 1G limit doesn't make sense there. Therefore restrict the limit to
> >>>> ARCH_X86. On non-x86, we allow the memory pages to be located anywhere.
> >>>
> >>> The 1G is somewhat arbitrary but if you don't restrict the memory to 32bit,
> >>> then loading the kernel may fail: The addresses in "struct
> >>> linux_kernel_header" are only 32bit. So if you impose no restrictions at
> >>> all, then this memory cannot be used for the kernel and initrd.
> >>
> >> The limit for x86 remains at 1G. It's only for other architectures, that we
> >> remove the limit. I suspect that other architectures won't have this kind
> >> of problems though , because they would boot the kernel image via EFI load
> >> and start image boot services, where the EFI firmware takes care to layout
> >> the boot artifacts.
> >>
> >> Once we have that in place, we could even use it on x86 instead of
> >> using struct linux_kernel_header, but I haven't investigated this yet.
> > 
> > How do you load the initrd via EFI? As far as I know, that only works as a
> > filename in the EFI boot partition.
> 
> This seems to be relaxed in newer kernels, see
> https://lore.kernel.org/linux-efi/20200207202637.GA3464906@rani.riverdale.lan/T/

It's not quite clear to me how that works, but from what I can tell,
requires support from the firmware and barebox needs to use it. So that
does not help here.
You need to either disable the legacy handler to avoid arbitrary failures
or explicitly allocate the initrd memory from efi with the restriction to
<4G.

Michael

> > That was the reason for implementing
> > the "legacy" boot mode. And what about the device-tree?
> 
> There is an EFI config table for FDT (DEVICE_TREE_GUID in Linux code). barebox
> as EFI loader can use it to provide its own DT. I have to check what's the cleanest
> way for barebox as EFI payload to provide a different DT, but I hope there is a way
> without barebox as EFI payload having to manipulate the device tree itself.
> 
> Cheers,
> Ahmad
> 
> > 
> > Michael
> > 
> >>>> This can break PCI drivers on systems that so far assumed barebox memory
> >>>> is located in the first 4G, but that's ok. That code will need to be
> >>>> fixed eventually anyway.
> >>>>
> >>>> Cc: Michael Olbrich <m.olbrich@pengutronix.de>
> >>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>>> ---
> >>>>  efi/payload/init.c | 2 +-
> >>>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/efi/payload/init.c b/efi/payload/init.c
> >>>> index 4b612e61afb3..0c2f38e9c86a 100644
> >>>> --- a/efi/payload/init.c
> >>>> +++ b/efi/payload/init.c
> >>>> @@ -292,7 +292,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
> >>>>  		BS->handle_protocol(efi_loaded_image->device_handle,
> >>>>  				&efi_device_path_protocol_guid, (void **)&efi_device_path);
> >>>>  
> >>>> -	mem = 0x3fffffff;
> >>>> +	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
> >>>>  	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
> >>>>  		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
> >>>>  					     EFI_LOADER_DATA,
> >>>> -- 
> >>>> 2.39.2
> >>>>
> >>>>
> >>>
> >>
> >> -- 
> >> Pengutronix e.K.                           |                             |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


