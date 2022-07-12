Delivery-date: Tue, 12 Jul 2022 08:30:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oB9PU-0045sh-JE
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 08:30:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oB9PS-0001wY-DZ
	for lore@pengutronix.de; Tue, 12 Jul 2022 08:30:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-reply-to:Date:Subject:Cc:To:From:References:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NvTBTwHoQBemhtcwymSiw4Cn0UBHB+iRfYvwwi2nVvQ=; b=WXbh5J1AUYpI+nK5ecN+GE039V
	VE6aKVduMV7mKE9J6aRTp9SA3ZdzykKmDfsLcf+NrlW9V3FCRNLvoF2OugvmGtKgNj0Efku1aGnYL
	gabjuLhKB6eDSXNj3ppL4jdy7Jc7Et5ZeUulAAkpWsthwFOQPa9nMnmTHzeRZ5AlgDRy1kkJSe+bK
	eqPcBJ0MZvjNzm2xFOYhXoSA5LorFMDm4CUD94wZv8WaCS7dEF0GWZShe/WsbS2tWliAwb6bPVfBt
	10yVTvVWWMe42gQR5MqZgyWIBtFtOrSCuphNONo6nYk98mkb9otQ7eL6yOmnTMvOFK8qxXIBW1CIC
	lINRGu5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB9Nq-0081HE-CV; Tue, 12 Jul 2022 06:28:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oB9Nm-0081GK-Dp
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 06:28:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0] helo=igor.pengutronix.de)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1oB9Nj-0001qh-Sh; Tue, 12 Jul 2022 08:28:27 +0200
References: <20220711075209.2377254-1-str@pengutronix.de>
 <20220711075209.2377254-5-str@pengutronix.de>
 <20220711085415.GM5208@pengutronix.de>
User-agent: mu4e 1.8.5; emacs 29.0.50
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 12 Jul 2022 07:48:04 +0200
In-reply-to: <20220711085415.GM5208@pengutronix.de>
Message-ID: <87sfn6n8ty.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_232830_489125_6B8D62C8 
X-CRM114-Status: GOOD (  22.44  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 5/6] ARM: socfpga: add support for Enclustra AA1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi!

Sascha Hauer <sha@pengutronix.de> writes:

(...)
>> +++ b/arch/arm/boards/enclustra-aa1/board.c
(...)
>> +	pbl_index = readl(0xFFD06210);
>
> This is ARRIA10_SYSMGR_ROM_INITSWLASTLD, right? Please use it.
>

Sure.

>> +
>> +	pr_debug("Current barebox instance %d\n", pbl_index);
>> +
>> +	switch (pbl_index) {
>> +	case 0:
>> +		flag_barebox1 |= BBU_HANDLER_FLAG_DEFAULT;
>> +		break;
>> +	case 1:
>> +		flag_barebox2 |= BBU_HANDLER_FLAG_DEFAULT;
>> +		break;
>> +	};
>> +
>> +	bbu_register_std_file_update("emmc-barebox1-xload", flag_barebox1,
>> +					"/dev/mmc0.barebox1-xload",
>> +					filetype_socfpga_xload);
>> +
>> +	bbu_register_std_file_update("emmc-barebox1", 0,
>> +					"/dev/mmc0.barebox1",
>> +					filetype_arm_barebox);
>> +
>> +	bbu_register_std_file_update("emmc-barebox2-xload", flag_barebox2,
>> +					"/dev/mmc0.barebox2-xload",
>> +					filetype_socfpga_xload);
>> +
>> +	bbu_register_std_file_update("emmc-barebox2", 0,
>> +					"/dev/mmc0.barebox2",
>> +					filetype_arm_barebox);
>
> Should this be turned into something more intelligent like failsafe
> update?
>

You mean like you did for rockchip? Might be a good idea.

>> +	return 0;
>> +}
>> +postcore_initcall(aa1_init);
>
> You could turn this into a postcore_platform_driver.
>
>> +#define BAREBOX_PART 0
>> +#define BITSTREAM_PART 1
>> +#define BAREBOX1_OFFSET    SZ_1M
>> +#define BAREBOX2_OFFSET    BAREBOX1_OFFSET + SZ_512K
>> +#define BAREBOX3_OFFSET    BAREBOX2_OFFSET + SZ_512K
>> +#define BAREBOX4_OFFSET    BAREBOX3_OFFSET + SZ_512K
>> +#define BITSTREAM1_OFFSET  0x0
>
> From looking into the device tree I would expect BITSTREAM1_OFFSET to be 0x700000.
>

Ack.

>> +#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M
>
> You should add braces around the macro definitions to make them safe
> to use.
>

Ack.

>> +
>> +extern char __dtb_z_socfpga_arria10_mercury_aa1_start[];
>> +
>> +#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
>> +
>> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_xload, ARRIA10_STACKTOP, r0, r1, r2)
>> +{
>> +	int pbl_index = 0;
>> +	int barebox = 0;
>> +	int bitstream = 0;
>> +
>> +	arm_cpu_lowlevel_init();
>> +
>> +	relocate_to_current_adr();
>> +
>> +	setup_c();
>> +
>> +	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
>> +
>> +	arria10_prepare_mmc(BAREBOX_PART, BITSTREAM_PART);
>> +
>> +	pbl_index = readl(ARRIA10_SYSMGR_ROM_INITSWLASTLD);
>> +
>> +	/* Allow booting from both PBL0 and PBL1 to allow atomic updates.
>> +	 * Bitstreams redundant too and expected to reside in the second
>> +	 * partition.
>> +	 * There is a fixed relation between the PBL/barebox instance and its
>> +	 * bitstream location (offset) that requires to update them together */
>> +	switch (pbl_index) {
>> +	case 0:
>> +		barebox = BAREBOX1_OFFSET;
>> +		bitstream = BITSTREAM1_OFFSET;
>> +		break;
>> +	case 1:
>> +		barebox = BAREBOX2_OFFSET;
>> +		bitstream = BITSTREAM1_OFFSET;
>> +		break;
>> +	case 2:
>> +	case 3:
>> +		/* Left blank for future extension */
>> +		break;
>
> You should either bail out or use a sane default for unhandled cases.
>

Ack.

>> diff --git a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
>> new file mode 100644
>> index 0000000000..ef3afc9b98
>> --- /dev/null
>> +&mmc {
>> +	bus-width = <8>;
>> +	non-removable;
>> +	disable-wp;
>> +	no-sd;
>> +
>> +	partitions {
>> +		compatible = "fixed-partitions";
>> +		#size-cells = <1>;
>> +		#address-cells = <1>;
>> +
>> +		barebox1_xload: partition@100000 {
>> +			label = "barebox1-xload";
>> +			reg = <0x100000 0x40000>;
>> +		};
>> +
>> +		barebox2_xload: partition@140000 {
>> +			label = "barebox2-xload";
>> +			reg = <0x140000 0x40000>;
>> +		};
>> +
>> +		barebox1: partition@200000 {
>> +			label = "barebox1";
>> +			reg = <0x200000 0x80000>;
>> +		};
>> +
>> +		barebox2: partition@280000 {
>> +			label = "barebox2";
>> +			reg = <0x280000 0x80000>;
>> +		};
>
> It might be worth increasing the size to 1MiB. It's easy to make barebox
> bigger than 512KiB.
>

Sure.


Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |


