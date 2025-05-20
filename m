Delivery-date: Tue, 20 May 2025 12:06:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHJrd-000njh-0N
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 12:06:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHJrc-0002Gk-Ef
	for lore@pengutronix.de; Tue, 20 May 2025 12:06:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UZiStcbWgJLG5qNs81N5yGzhcLIxDJP3dMYieQHq39E=; b=wn40cJmJLtSiAvD/eHL1CjJln8
	j2s3WTHnY6V9C1xIeep9OXjM6yDYKWcj5pwYYUfEpt/C0ox2ek1QJnKilQ/7/F3IVAOL0zfEZMlMI
	ZM4oZZLLBbDkpRGGH9cfU6IkP5zt2Dm2f9BpEBl4UzUUG+6Uh3H5tF8xkaQ0bEaqe/SAkxe42TvCw
	sCCUL8BN7pHYpnM4hmAMXW2lxiVEe3/1qPn8wn/HjCc4CTg1CA05PeXK6D7mApO3USIVrPnG7BY4U
	tNhH8KFV9vw2jRPQwfjxqa5A2d63GL2yKHey/0N3Xt5+7rrM+B5TcxWaiXTEwNnnDxIDyCV2ieIS7
	r3zEf/6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHJr2-0000000CHg7-3ETH;
	Tue, 20 May 2025 10:05:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHJQj-0000000CDhz-275N
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 09:38:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHJQg-0004f3-VQ; Tue, 20 May 2025 11:38:35 +0200
Message-ID: <db1c3bad-a144-42ef-8d12-e8e9428182b2@pengutronix.de>
Date: Tue, 20 May 2025 11:38:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 barebox@lists.infradead.org
References: <20250520091228.119392-1-s.pueschel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250520091228.119392-1-s.pueschel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_023837_542089_79CEE2D3 
X-CRM114-Status: GOOD (  24.74  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/make_fit: move the dtbs to the start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.05.25 11:12, Sven Püschel wrote:
> Move the dtbs to the start of the fit image to avoid u-boot overwriting
> the dtb while relocating the kernel image.
> 
> Using a current u-boot master eeb5ff1a468b ("Merge tag
> 'efi-2025-07-rc3-2' of https://source.denx.de/u-boot/custodians/u-boot-efi")
> failed to load a barebox fit image on a Pine64 Rock64 board:
> 
> => bootm $loadaddr#conf-rk3328-rock64.dtb
>    Using 'conf-rk3328-rock64.dtb' configuration
>    Verifying Hash Integrity ... OK
>    Trying 'kernel' kernel subimage
>      Description:  barebox-2025.04.0-00231-g00fd6bfa3088-dirty
>      Type:         Kernel Image (no loading done)
>      Compression:  uncompressed
>      Data Start:   0x00800968
>      Data Size:    737350 Bytes = 720.1 KiB
>    Verifying Hash Integrity ... OK
>    Using 'conf-rk3328-rock64.dtb' configuration
>    Verifying Hash Integrity ... OK
>    Trying 'fdt-1' fdt subimage
>      Description:  rk3328-rock64.dtb
>      Type:         Flat Device Tree
>      Compression:  uncompressed
>      Data Start:   0x008b4a48
>      Data Size:    37415 Bytes = 36.5 KiB
>      Architecture: AArch64
>    Verifying Hash Integrity ... OK
>    Booting using the fdt blob at 0x8b4a48
> Working FDT set to 8b4a48
>    XIP Kernel Image (no loading done) to 800968
> Moving Image from 0x800968 to 0x880000, end=0x934048
> ERROR: image is not a fdt - must RESET the board to recover.
> FDT creation failed!
> resetting ...
> 
> The culprint was the fact that u-boot relocated the barebox image to
> match the alignment requirements from the Linux kernel. But the
> relocation did overwrite the devicetree and therefore failed to boot it.
> 
> To prevent this error from happening, move the dtbs in the generated
> barebox fit image to the start, so u-boot cannot overwrite these when
> moving the kernel image to a higher address.
> 
> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>

The point of the FIT image is to make it easier to boot barebox from
existing bootloaders, so a workaround sounds sensible, even if U-Boot
should be ultimately fixed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Sascha, can this go into master? Thanks.

Ahmad

> ---
>  scripts/make_fit.py | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/scripts/make_fit.py b/scripts/make_fit.py
> index 2190da4c00..4253b07e5f 100755
> --- a/scripts/make_fit.py
> +++ b/scripts/make_fit.py
> @@ -267,12 +267,6 @@ def build_fit(args):
>      dtbs_seen = set()
>      fdts = {}
>  
> -    # Handle the kernel
> -    with open(args.kernel, 'rb') as inf:
> -        comp_data = compress_data(inf, 'none')
> -    size += os.path.getsize(args.kernel)
> -    write_kernel(fsw, comp_data, args)
> -
>      for fname in args.dtbs:
>          # Ignore non-DTB (*.dtb) files
>          if os.path.splitext(fname)[1] != '.dtb':
> @@ -297,6 +291,12 @@ def build_fit(args):
>  
>          entries.append([dtbname, model, compat, files_seq])
>  
> +    # Handle the kernel
> +    with open(args.kernel, 'rb') as inf:
> +        comp_data = compress_data(inf, 'none')
> +    size += os.path.getsize(args.kernel)
> +    write_kernel(fsw, comp_data, args)
> +
>      finish_fit(fsw, entries)
>  
>      # Include the kernel itself in the returned file count


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


