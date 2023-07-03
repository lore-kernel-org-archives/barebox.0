Delivery-date: Mon, 03 Jul 2023 10:46:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFCh-00DHrN-7n
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 10:46:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGFCe-0008Mv-DZ
	for lore@pengutronix.de; Mon, 03 Jul 2023 10:46:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rY5MGkAPuYJYahPxyCV0VuvX4wV1e+cQOYSAszwXIQk=; b=tWVy5phhyJ44QrXHcWQK0Agy0m
	2NVvtXx3UyoYQxkNyDYMNqIeSignyJml8/qrTkQOI1YX1yBp48azSjPHaPEv3KQhLKkKs1BfFmjDk
	HWKJ7/+l0763BjqzwIqITKntNuc4E51ds2neXfbX2cicjAsxo8ZXMDJsHXGQtU1egr82NvABNToBY
	ccX6fkD/KiRr0kFeI64EXT+E/DD3NqyJXXt22YNxQL0EWmYy3SgCpL4PfPuQCy03y+tNY8sG86nY0
	8B7jsKsXFW0zOPqvmfEJ8inGmHCMfBXAln38rKi6JNLRZHYf8JjSxJZFkFhBzC54naDYiF0A+zKv9
	pDG8wMTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFBW-009nKu-2U;
	Mon, 03 Jul 2023 08:45:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGFBT-009nK3-0S
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 08:45:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qGFBQ-0007yp-DT; Mon, 03 Jul 2023 10:45:20 +0200
Message-ID: <d8d0a454-353a-c778-1c6a-fb53147b7c14@pengutronix.de>
Date: Mon, 3 Jul 2023 10:45:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
 <20230626153335.3592017-4-a.fatoum@pengutronix.de>
 <20230703062510.6gqvkta3mhkd4qnd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230703062510.6gqvkta3mhkd4qnd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_014523_359777_181ED717 
X-CRM114-Status: GOOD (  35.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v1 3/6] firmware: optionally turn missing firmware
 errors into warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 03.07.23 08:25, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-06-26, Ahmad Fatoum wrote:
>> Previous commit turned compile-time errors into link-time errors.
>> This commit goes a step further and allows the link to succeed
>> unconditionally for build coverage and then dependent on the newly
>> introduced CONFIG_MISSING_FIRMWARE_ERROR option abort the build with an
>> error code and a listing of missing firmware printed to stderr.
>>
>> In any case, barebox images which contain firmware in their PBL
>> that's not available will be marked specially to reduce the risk
>> of accidentally putting them to use:
>>
>>   * They're truncated to zero size
>>
>>   * The final "images built:" section marks them as having firmware
>>     missing
>>
>>   * They are omitted from the listing in the barebox-flash-images file
>>
>>   * Each barebox-broken.img is accompanied with a
>>     barebox-broken.img.missing-firmware containing a newline delimited
>>     list of missing firmware images
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  firmware/Kconfig     | 14 ++++++++++++++
>>  firmware/Makefile    |  5 +++++
>>  images/Makefile      | 21 ++++++++++++++++-----
>>  scripts/Makefile.lib |  3 +++
>>  4 files changed, 38 insertions(+), 5 deletions(-)
>>
>> diff --git a/firmware/Kconfig b/firmware/Kconfig
>> index 56ced00bc430..56d6d0d6c030 100644
>> --- a/firmware/Kconfig
>> +++ b/firmware/Kconfig
>> @@ -6,6 +6,20 @@ config EXTRA_FIRMWARE_DIR
>>  	string "Firmware blobs root directory"
>>  	default "firmware"
>>  
>> +config MISSING_FIRMWARE_ERROR
>> +	bool "Fail the build when required firmware is missing"
>> +	default y
> 
> Do we need to make this default y? IMHO multi_v8_defconfig will set this
> to 'n' anyway and so the 'n' will become the de-facto default.

Existing users will get the new default. Users that build in a BSP
will want y too as they may not see warnings. It doesn't help people
copying the multi defconfig and not changing it, but that's not a reason
for having existing configs to not fail when they lack firmware.

> 
>> +	help
>> +	  In-tree Defconfigs that enable multiple boards with different firmware
>> +	  binary requirements would say y here, so you don't need unrelated firmware
>> +	  for the build to succeed.
>> +
>> +	  Defconfigs custom-tailored to products would say n here as all boards
>> +	  being built should be functional and have their firmware available.
>> +
>> +	  If in doubt, say Y and refer to the documentation on where to acquire the
>> +	  needed firmware.
>> +
>>  config HAVE_FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>>  	bool
>>  	default y
>> diff --git a/firmware/Makefile b/firmware/Makefile
>> index c66d19c677e8..f9490a8e7a15 100644
>> --- a/firmware/Makefile
>> +++ b/firmware/Makefile
>> @@ -58,6 +58,11 @@ filechk_fwbin = { \
>>  	echo "\#endif"						;\
>>  	echo ".global _fw_$(FWSTR)_end"				;\
>>  	echo "_fw_$(FWSTR)_end:"				;\
>> +	echo "\#ifdef __PBL__"					;\
>> +	echo "    .section .missing_fw,\"a\""			;\
>> +	echo "_fwname_$(FWSTR):"				;\
>> +	echo ".ascii \"firmware/$(FWNAME)\\n\""			;\
>> +	echo "\#endif" 						;\
> 
> Shouldn't this be part of the #ifdef no-firmware? This way we do add the
> .missing_fw section always which shouldn't be the case, right?

It doesn't matter much. Linker will garbage collect the unused section.

> 
>>  }
>>  
>>  __fwbin_sha = { \
>> diff --git a/images/Makefile b/images/Makefile
>> index c93f9e268978..16d86a5a5da4 100644
>> --- a/images/Makefile
>> +++ b/images/Makefile
>> @@ -72,6 +72,8 @@ $(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FOR
>>  
>>  $(obj)/%.pblb: $(obj)/%.pbl FORCE
>>  	$(call if_changed,objcopy_bin,$(*F))
>> +	$(Q)$(OBJCOPY) -O binary --only-section=.missing_fw $< $@.missing-firmware
>> +	$(Q)[ -s $@.missing-firmware ] || rm -f $@.missing-firmware
>>  	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
>>  
>>  #
>> @@ -127,10 +129,14 @@ $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
>>  
>>  # %.img - create a copy from another file
>>  # ----------------------------------------------------------------
>> +
>> +missing_fw = $(strip $(wildcard $(obj)/$(FILE_$(@F)).missing-firmware $(basename $(obj)/$(FILE_$(@F))).missing-firmware))
>> +
>>  .SECONDEXPANSION:
>>  $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
>>  	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
>> -	$(call if_changed,shipped)
>> +	$(Q)$(if $(missing_fw),cat $(missing_fw) >$@.missing-firmware,rm -f $@.missing-firmware)
> 
> Okay, since we always add the missing-firmware section we need to clean
> it up here, right? Isn't it easier to add the missing-firmware section
> only if detected? If this is possible.

It's possible and I don't feel strong one way or the other.

> 
>> +	$(call if_changed,$(if $(missing_fw),0size,shipped))
>>  
>>  board = $(srctree)/arch/$(SRCARCH)/boards
>>  objboard = $(objtree)/arch/$(SRCARCH)/boards
>> @@ -194,10 +200,15 @@ multi-image-build:
>>  
>>  images: $(image-y-path) $(flash-link) $(flash-list) FORCE
>>  	@echo "images built:"
>> -	@for i in $(image-y); do echo $$i; done
>> +	@for i in $(image-y); do \
>> +	  if [ -s $(obj)/$$i ]; then echo $$i; \
>> +	  else >&2 echo "** firmware missing for $$i **"; \
> 
> Not sure if we should print an error if the user set
> CONFIG_MISSING_FIRMWARE_ERROR to n.

We need to alert the user somehow that the image is missing/non-functional.
It's just a warning message.

> 
> Regards,
>   Marco
> 
>> +	  $(if $(CONFIG_MISSING_FIRMWARE_ERROR), >&2 sed 's/^/\t/' <$(obj)/$${i}.missing-firmware; missing=1;) \
>> +	  fi; done; test -n "$$missing" && \
>> +	echo >&2 "Firmware missing in CONFIG_MISSING_FIRMWARE_ERROR=y build" && false
>>  
>>  __images_install: images
>> -	@for i in $(image-y-path); do install -t "$(INSTALL_PATH)" $$i; done
>> +	@for i in $(image-y-path); do if [ -s $$i ]; then install -t "$(INSTALL_PATH)" $$i; fi; done
>>  
>>  PHONY += __images_install
>>  
>> @@ -205,10 +216,10 @@ $(flash-link): $(link-dest) FORCE
>>  	$(call if_changed,ln)
>>  
>>  $(flash-list): $(image-y-path)
>> -	@for i in $^; do echo $$i; done > $@
>> +	@for i in $^; do if [ -s $$i ]; then echo $$i; fi; done > $@
>>  
>>  clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
>>  	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
>>  	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
>> -	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped
>> +	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped *.missing-firmware
>>  clean-files += pbl.lds
>> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
>> index 42ee27499561..b8fb2684421e 100644
>> --- a/scripts/Makefile.lib
>> +++ b/scripts/Makefile.lib
>> @@ -236,6 +236,9 @@ endef
>>  # Shipped files
>>  # ===========================================================================
>>  
>> +quiet_cmd_0size = 0SIZE $@
>> +cmd_0size = : > $@
>> +
>>  quiet_cmd_shipped = SHIPPED $@
>>  cmd_shipped = cat $< > $@
>>  
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



