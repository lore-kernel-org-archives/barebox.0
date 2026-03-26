Delivery-date: Thu, 26 Mar 2026 15:08:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5lO6-005NV5-1z
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 15:08:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5lO4-0002bv-Jg
	for lore@pengutronix.de; Thu, 26 Mar 2026 15:08:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cwaVMXHbi1BWZ96rZwjOpsLxF3KsOE69wmzV5t8HHvc=; b=LKWNM0a2cxvun0fpWTnoCpEExI
	ZD69boKTtdOJDLtNGiAeuvdfgbNPGwV4+XMvkf6GfVPSTrrjXHJZTXwp+x30pd7I0Cj7iQiay/0J2
	olYk5+dE5GZI2KDh0MUDiybz/xuuGF0/4OZmN67KbZ9V6ykujN/q5lTJ6x7JA6eca8NibggQXuRSj
	FILIzu4hvZzw05Sfgg9AfkBwuJuAUYfchGALtlYNNOx0SXW6kA0yIcBrgHtNk9JYq2IUuMlK51nwa
	LY+6zjR6z1t9C305yxzesOEer/0mpdyh/aEtCytdRfPx1VmJB4LKL9PZVcdlclL9CTyME9p+ABZcX
	4L+pPTuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5lN2-00000005bx4-1lHp;
	Thu, 26 Mar 2026 14:07:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5lMw-00000005bwM-3TyB
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 14:07:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5lMu-0002ID-2E; Thu, 26 Mar 2026 15:07:28 +0100
Message-ID: <85359e8c-33a0-46d4-8f3c-df0250af1e9e@pengutronix.de>
Date: Thu, 26 Mar 2026 15:07:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: =?UTF-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com>
 <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de>
 <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com>
 <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de>
 <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_070730_872419_EBE4EA33 
X-CRM114-Status: GOOD (  34.64  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts
 upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michał,

On 3/26/26 11:35 AM, Michał Kruszewski wrote:
>> A zynq_defconfig build will report at the end the generated images:
>>
>> images built:
>> barebox-avnet-zedboard.img
>> barebox-dt-2nd.img
>> Is images/barebox-avnet-zedboard.img the image you used?
> 
> All I did was:
>   make zynq_defconfig
>   make
> 
> I used neither images/barebox-avnet-zedboard.img nor images/barebox-dt-2nd.img.
> I used barebox file.
> Why?
> Because I use Vivado bootbin progam to generate the boot.bin file.
> bootbin requires that the second stage bootloader is provided in the ELF format.

The images meant for end user use are printed at the end of the
make invocation.

> When I use u-boot.elf everything works correctly.

The "barebox" file is not even stripped. It's not meant for direct use,
it's just an intermediary step before being linked into the PBL or for
use with gdb.

That said, we can have barebox generate a stripped ELF suitable for
use by Vivado bootbin if needed, once we know what's needed.

>> This is the line that does it for the Zynq Zedboard:
> 
>> barebox_arm_entry(0, SZ_512M, __dtb_z_zynq_zed_start);
> 
>> This function takes care to extract barebox and invoke it
>> with these arguments.
> 
> So the compiled device tree is placed into the final image, isn't it?

Yes, the compiled device tree is shipped as part of the prebootloader.

>> barebox generates bootloader images for boards, so you must have
>> either used an image for an existing board or some intermediate build
>> artifact, hence my question above.
> 
> What is an "intermediate build artifact"?

Roughly, the build system does something like this:

common/version.c -> common/version.o -> common/built-in.a
	-> barebox -> vmbarebox -> build/images/start_avnet_zedboard.pbl
	-> build/images/start_avnet_zedboard.pblb
	-> barebox-avnet-zedboard.img


Everything except the first source file and the final image are
intermediate artifacts that are not meant to be used directly.

> How to use it instead a board image?

Try using build/images/start_avnet_zedboard.pbl
and if that works, we can have barebox generate a proper
stripped ELF with a normal name (e.g. barebox-avnet-zedboard.elf).

>> I am asking to clarify what you did. Your original email didn't
>> elaborate what you did, only what you thought was the problem.
> 
> All I did was:
>   make zynq_defconfig
>   make
> I used the generated barebox elf file for Vivado bootbin.
> I replaced u-boot.elf with barebox.
> I did not expect the Linux to start.
> However, I did expect the barebox to start.

For ARM, the images in images/ are what actually should be used.

>> Yes, of course. Just add a new ENTRY_FUNCTION(_WITHSTACK) that does
>> only the parts you are interested in and reference it in
>> images/Makefile.zynq.
> 
> Is there any tutorial/documentation on that?

https://www.barebox.org/doc/latest/devel/porting.html#porting-to-a-new-board

> I thought that maybe there is a simple CONFIG for that.

I got this feedback three times in the last few months and I agree we
should do something about this.

The usual model so far could be summarized as:

- barebox has one or more DTs embedded and you have some early low level
init that's board-specific anyway (e.g. RAM settings), so you wouldn't
change one of the DTs to something completely different anyway

- You have a bootloader that can boot Linux directly and want it to
start barebox, so you use the barebox-dt-2nd.img which accept an
external device tree

- If you have a UEFI already there, you can boot barebox-dt-2nd.img also
via EFI without a device tree if you enable the correct options in Kconfig


Your use case is in the middle, the device tree might be the only
thing you need to change, but it still needs to be linked into barebox
and there's no easy way for doing it from outside (yet).

Once you have something that works, I am sure we can find some way to
make it easier to extend to arbitrary device trees.

Cheers,
Ahmad

> 
> 
> Regards,
> Michał Kruszewski
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



