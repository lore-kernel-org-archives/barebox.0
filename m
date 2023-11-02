Delivery-date: Thu, 02 Nov 2023 09:08:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qySl3-00EyKw-IU
	for lore@lore.pengutronix.de; Thu, 02 Nov 2023 09:08:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qySky-0006dQ-ON
	for lore@pengutronix.de; Thu, 02 Nov 2023 09:08:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v0nBd47ia/EIAIBH3g+jSYroO7M6pvzDAArJ/9hkfqc=; b=cuSG0qkEwrkjM2Y4rphXzMGolu
	YRHu8+HjxhbpNT/WrCjFmVrRS/Esq3LaIQEDbmWnSOEBghTtZca0IJKGtnonLfjMNki3Ph8M6QzIM
	wbHBcQjo/V0FnOYHpY47inYjufBkeYeBEOc0r04TE7RZdkKam9CVg5f3xZkPs+B9CTTDg91tU2TOT
	GrScmg21UKZ1OM7gOcNCo6cTbRmYDEmHQnIdNWbeR5HoDKQGSlZ/0KFlikB2x68i2WaMOyG3R5juR
	yuoLYyNlxsgepUfXQjfaUcYvCvKSsSDrFgCweaLtOidaXmLbnDC1rAfSVTtL6mKVyu9Cl4UU0J/Dw
	SBs6iJ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qySjY-008wr3-32;
	Thu, 02 Nov 2023 08:07:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qySjT-008wqD-2K
	for barebox@lists.infradead.org;
	Thu, 02 Nov 2023 08:07:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qySjR-0006TE-2t; Thu, 02 Nov 2023 09:07:13 +0100
Message-ID: <8f5adf6b-72ef-16f4-0914-57b05b42109d@pengutronix.de>
Date: Thu, 2 Nov 2023 09:07:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
 <20231023143122.1760217-4-a.fatoum@pengutronix.de>
 <20231102072004.GM235829@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231102072004.GM235829@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_010715_778004_CD33E897 
X-CRM114-Status: GOOD (  15.83  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] test: self: add JSON Web Token tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.11.23 08:20, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Mon, Oct 23, 2023 at 04:31:23PM +0200, Ahmad Fatoum wrote:
>> diff --git a/test/self/Makefile b/test/self/Makefile
>> index 8168abf26278..24e78a186513 100644
>> --- a/test/self/Makefile
>> +++ b/test/self/Makefile
>> @@ -9,6 +9,7 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
>>  obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
>>  obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
>>  obj-$(CONFIG_SELFTEST_JSON) += json.o
>> +obj-$(CONFIG_SELFTEST_JWT) += jwt.o jwt_test.pem.o
>>  obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
>>  obj-$(CONFIG_SELFTEST_MMU) += mmu.o
>>  obj-$(CONFIG_SELFTEST_STRING) += string.o
>> @@ -16,5 +17,13 @@ obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
>>  obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
>>  obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
>>  
>> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
>> +ifdef REGENERATE_RSATOC
>> +
>> +$(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
>> +	$(call if_changed,rsa_keys,$(basename $(target-stem)):$<,-s)
>> +
>> +endif
>> +
>> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z *
>                                                             ^^^
> 
> This additional '*' removes parts of the source tree when doing a make
> clean. Was there any intention with this or is this just an accident?

Please revert the line, I think this used to remove an intermediary artifact
that's no longer relevant.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



