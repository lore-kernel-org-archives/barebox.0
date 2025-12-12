Delivery-date: Fri, 12 Dec 2025 15:07:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3nW-00AgsC-1R
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 15:07:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU3nV-000526-T2
	for lore@pengutronix.de; Fri, 12 Dec 2025 15:07:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AHtDGLFUtI603LqtAQ1Gy5E6wSVrjXvwN4Z1lT5eSk0=; b=iwSIx3hIK8hiVwKX5TFUSOnoM3
	VSbzRPytWONVtddyo3Gxrvej/6ihhs8nmrKBu55oElo1+GgeY+ckZ0XB4DUMwViH3TnBRF1KSiwqe
	8tSTXV1Rvt5Q9eUIIWpUG/wSqljwr4ciH1EiqDuitkROtlvPOB3cdG7yWAJ7khelfzDsoz+TAspfd
	zBgSSWP1CfGsWfIU6rIBMoYFGGEUSZO9h26aCm4FWS0IavSmKpmnstUvJZnBNwzdYLBAtgqN1Kq7j
	wqSvGS06lp00try7zfn5K+V5ekrjZrf4p08a65M6+JgUx/tJQxWqjrKulNyvrIn6vgEq1f0ic/FPF
	6/sCdBEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3n9-00000000bbR-3tuL;
	Fri, 12 Dec 2025 14:06:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU3n6-00000000bb0-2l0j
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 14:06:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU3n4-0004xE-On; Fri, 12 Dec 2025 15:06:38 +0100
Message-ID: <49d8c5cf-360d-4fa1-87fc-cde4765e3808@pengutronix.de>
Date: Fri, 12 Dec 2025 15:06:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20251212050824.1273837-1-chalianis1@gmail.com>
 <20251212050824.1273837-5-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251212050824.1273837-5-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_060640_701244_F163BB50 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/5] doc: efi: add efi armv8 documentaion.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/12/25 6:08 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Just a comment below:

> -name it ``BOOTx64.EFI`` on 64bit architectures and ``BOOTIA32.EFI`` on 32bit
> -architectures. Switching to USB boot in the BIOS should then be enough to
> +name it, for x86 ``BOOTx64.EFI`` or ``BOOTIA32.EFI`` on 64bit or 32bit 
> +architectures recpectivly, for armv8 ``BOOTAA64.EFI``. 

Maybe mention CONFIG_EFI_PAYLOAD_DEFAULT_PATH, which will have the name
depending on architecture?

> +Switching to USB boot in the BIOS should then be enough to
>  start barebox via USB. Some BIOSes allow to specify a path to a binary to
>  be executed, others have a "start UEFI shell" entry which executes
>  EFI/Shellx64.efi on the :term:`ESP`. This can be a barebox binary as well.
> @@ -87,9 +96,13 @@ necessary to make a copy first.
>  To start it create a USB memory stick like above and execute:
>  
>  .. code-block:: sh
> -
> +  
> +  # On x86
>    qemu-system-x86_64 -pflash OVMF.fd -nographic /dev/sdx
>  
> +  # On armv8
> +  qemu-system-aarch64 -L /usr/share/qemu-efi-aarch64 -bios QEMU_EFI.fd -nographic /dev/sdx
> +
>  A plain VFAT image will work aswell, but in this case the UEFI BIOS won't
>  recognize it as ESP and ``/boot`` won't be mounted.
>  
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



