Delivery-date: Thu, 26 Mar 2026 10:28:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5h1G-005InU-0B
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 10:28:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5h1F-0006TX-C9
	for lore@pengutronix.de; Thu, 26 Mar 2026 10:28:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+AMk6ZSFBUb5YYIbvGXvvB1Xk2NzzKhb14SCWvUOyow=; b=UPq6A2eO5ZAzU9iJd/ocdmFx+7
	9lkQSWYGTy4euPYUsBu/30xSataHBBhtVPd1yxTs6OwEdDkJcDVWnu/D5e9PNFnMJUpWq9zB8EWNm
	8Ya2FT8zYPHnQCf3xgwBZA/1iJ0/Fcyqugk/+o8y2KzDvBk4rxOh8HxOg1WaMFD0YMTAXkKiecaIf
	Hqq1OQ+kW/m4sEi+J/2EwaUhD5vDj5n4rcYufvd/AEtOCSnY0gi2afZtudYDCr25DmEoTVHJXAp8s
	qI/AXaeob42JUGamgsUnxeg8GvpJq7x0kOlB/wyI/vW9nZS3RA/IUqpMvYTEOEkSHOvLlf0ODnD2i
	AgRBWHFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5h0l-000000059at-1xoP;
	Thu, 26 Mar 2026 09:28:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5h0j-000000059Yw-0DVf
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 09:28:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5h0h-0006ME-AG; Thu, 26 Mar 2026 10:28:15 +0100
Message-ID: <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de>
Date: Thu, 26 Mar 2026 10:28:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com>
 <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de>
 <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_022817_091634_63B8CF15 
X-CRM114-Status: GOOD (  32.99  )
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

Hello,

On 3/26/26 10:06 AM, Michał Kruszewski wrote:
>> Do you use upstream or a fork? There seems to be no Z-turn board support upstream.
> 
> Upstream, release 2026.03.1.
> 
> 
>> barebox can generate multiple images in a build, which image did you use?
> 
> I think I don't understand the question.

A zynq_defconfig build will report at the end the generated images:

images built:
barebox-avnet-zedboard.img
barebox-dt-2nd.img

Is images/barebox-avnet-zedboard.img the image you used?

>> Every barebox image on ARM has a prebootloader prepended that:
>>
>>   - decompresses barebox proper
>>   - loads it and configures the MMU
>>   - executes it while passing a device tree
> 
> How Does PBL pass a device tree to the barebox?

This is the line that does it for the Zynq Zedboard:

barebox_arm_entry(0, SZ_512M, __dtb_z_zynq_zed_start);

This function takes care to extract barebox and invoke it
with these arguments.

>> I am looking at start_avnet_zedboard() and at the start of
>> avnet_zedboard_ps7_init(), it skips the low level init if started
>> second stage, which is what you seem to be after?
> 
> This is true.
> However, I don't use the avnet zedboard board.
> I don't want any code realted to some other board to be executed.

barebox generates bootloader images for boards, so you must have
either used an image for an existing board or some intermediate build
artifact, hence my question above.

> What is the point of this?

I am asking to clarify what you did. Your original email didn't
elaborate what you did, only what you thought was the problem.

> The FSBL has already configured everything at this stage.
> If PBL is required, I just want minimal PBL that only does whatever is required to start barebox.
> Is it possible to configure PBL in such a way?

Yes, of course. Just add a new ENTRY_FUNCTION(_WITHSTACK) that does
only the parts you are interested in and reference it in
images/Makefile.zynq.

The skipping logic should still work though.

>> For quick testing, you can replace in arch/arm/dts/zynq-zed.dts
>>
>> #include <arm/xilinx/zynq-zed.dts>
>>
>> with your own board. Check that the stdout-path is correct.
> 
> If I do so, the dtb compilation fails with:
>   FATAL ERROR: Couldn't open "zynq-zturn-common.dtsi": No such file or directory
> 'zynq-zturn-common.dtsi' is included in 'dts/src/arm/xilinx/zynq-zturn-v5.dts'.
> Is is placed in the same directory as 'zynq-zturn-v5.dts' ('dts/src/arm/xilinx/').
> If I replace
>   /include/ "zynq-zturn-common.dtsi"
> with
>   /include/ "arm/xilinx/zynq-zturn-common.dtsi"
> the dtc still can't find the file:
>   FATAL ERROR: Couldn't open "arm/xilinx/zynq-zturn-common.dtsi": No such file or directory

Argh, I thought /include/ was something that only old PowerPC device
trees still had..

You can replace do

-#include <arm/xilinx/zynq-zed.dts>
+/include/ "../../../dts/src/arm/xilinx/zynq-zturn-v5.dts"

instead for now. Needs some more thought put into it how to do this
in a cleaner manner.

>> dts/ are just the device trees as they are in Linux. You can only build
>> device tree in arch/${ARCH/dts/.
>>
>> You can read more about barebox device tree handling at:
>>
>> https://www.barebox.org/doc/latest/devicetree/index.html
> 
> So the help message of the Makefile in the dts directory is misleading.

If you really want, you can build it if you use the correct Makefile:

make -C dts src/arm/xilinx/zynq-zturn-v5.dtb

But it doesn't make barebox magically use that DT, so not sure why
you want to.

> Is is simply copied from the Linux?

Here's the upstream:
https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/

But yes, these DTs are 1:1 from Linux. If you want to make use of them,
a device tree in arch/${ARCH}/dts/ needs to include them.

Cheers,
Ahmad



> 
> 
> Regards,
> Michał Kruszewski
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



