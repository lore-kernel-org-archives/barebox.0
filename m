Delivery-date: Mon, 17 Feb 2025 20:58:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk7Fv-003c2F-1V
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 20:58:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk7Fu-0001I7-5q
	for lore@pengutronix.de; Mon, 17 Feb 2025 20:58:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X5jdoOBLwS3xy1d1UB1CHsHDlG1aNswfcl6oOjfWG30=; b=jP8DqANluxH+fwC5qeCfCppJfG
	JOOOkDmKXnhpSvklP7uaLUsEkiN0NO2OKkOutq4SGm2Lk8qG1YTxefCJReeZREBcMirVvL3y/GbvK
	Blp8fdjh4iIuuOuVEgJCEp5tWSRHEYVjeYGoG0KCTanmRtUSSa+rQZmgeBAj+DcZyibBTv+2sIWdd
	yp8YS4Kg1nedVVBAZnJg0GMz68GKVgqYFiIky4c59lRX23kXLsN/hF+pph88xd591LdhX5JzqIusD
	fkltYSNN4dA1fCST4IQklh9vxdugInxeRNAkAR48Jo0EB9iyUefRzb1alBVQXstJxBhxcvu/noHEH
	qf+W/Fig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk7F9-00000005oPs-12xn;
	Mon, 17 Feb 2025 19:57:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk7F6-00000005oPV-3V5m
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 19:57:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk7F5-00017e-Ew; Mon, 17 Feb 2025 20:57:23 +0100
Message-ID: <87a7379e-8b95-4639-a100-8efe2e070fba@pengutronix.de>
Date: Mon, 17 Feb 2025 20:57:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
 <20250217192523.crgvcg2phxhce46d@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250217192523.crgvcg2phxhce46d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_115724_877228_C1CA4BF8 
X-CRM114-Status: GOOD (  24.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] of: partition: add Linux
 CONFIG_OF_PARTITION-compatible adaptive fixup mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 17.02.25 20:25, Marco Felsch wrote:
> Hi Ahmad,
> 
> thanks for working on this!
> 
> On 25-02-17, Ahmad Fatoum wrote:
>> barebox has for many years supported a superset of the upstream OF
>> partitions binding by parsing partitions out of SD/eMMC and EEPROM
>> in addition to MTD.
>>
>> Unfortunately, we didn't upstream our binding and a different binding
>> went upstream into Linux v6.13-rc1 along with Linux commit
>> 2e3a191e89f9 ("block: add support for partition table defined in OF").
>>
>> Since then, if CONFIG_OF_PARTITION, which is disabled by default, is
>> enabled, Linux will ignore any GPT/MBR if an SD/eMMC node has a
>> fixed-partitions compatible subnode.
>>
>> This is different from the barebox behavior, which allows both OF
>> partitions and GPT/MBR to co-exist as long as they don't conflict.
>>
>> As many barebox boards:
>>
>>   - Place the environment in non-partitioned space prior to the first
>>     partition
>>
>>   - Fixup all fixed-partitions into the kernel device tree by default
> 
> Could we add a warning/notice that the board should be converted to make
> use of the barebox GPT parttype-uuid? It's 2025 and IMHO there is no
> reason for not using the GPT with the barebox state part-type UUID in
> place. This is of course not related to this patchset.

There's no partition type UUID solution for barebox on EFI systems yet
and for many systems in the field, switching to partition type UUID
would mean a migration step, where a rollback to a system with an old
barebox-state version is not possible...

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>> this can result in breakage if a newer kernel is booted with
>> CONFIG_OF_PARTITION enabled.
>>
>> To resolve this, this series introduces the barebox,fixed-partitions
>> compatible and uses that in Linux device tree fixups for SD/eMMC
>> by default.
>>
>> Ahmad Fatoum (6):
>>   of: factor out of_node_is_fixed_partitions check
>>   of: of_path: support barebox,fixed-partitions
>>   ARM: IMX8MP: var-dart-dt8mcustomboard.dts: use new-style partition
>>     binding
>>   ARM: dts: prefix all non-MTD fixed-partitions with barebox,
>>   of: partition: refactor of_partition_binding checks into switch
>>   of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup
>>     mode
>>
>>  .../devicetree/bindings/mtd/partition.rst     | 27 +++++++-
>>  Documentation/user/state.rst                  |  4 +-
>>  arch/arm/dts/am335x-phytec-state.dtsi         |  2 +-
>>  .../dts/fsl-ls1046a-tqmls1046a-mbls10xxa.dts  |  2 +-
>>  arch/arm/dts/imx50-kindle-common.dtsi         |  2 +-
>>  arch/arm/dts/imx51-zii-rdu1.dts               |  2 +-
>>  arch/arm/dts/imx6dl-colibri-iris.dts          |  2 +-
>>  arch/arm/dts/imx6qdl-phytec-mira.dtsi         |  2 +-
>>  arch/arm/dts/imx6qdl-phytec-phycard-som.dtsi  |  2 +-
>>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  |  2 +-
>>  arch/arm/dts/imx6qdl-phytec-state.dtsi        |  2 +-
>>  arch/arm/dts/imx6qdl-zii-rdu2.dtsi            |  2 +-
>>  arch/arm/dts/imx6ul-liteboard.dts             |  4 +-
>>  arch/arm/dts/imx6ul-phytec-state.dtsi         |  2 +-
>>  arch/arm/dts/imx6ul-tqma6ul-common.dtsi       |  4 +-
>>  arch/arm/dts/imx6ul-webasto-ccbv2.dts         |  2 +-
>>  arch/arm/dts/imx6ul-webasto-marvel.dts        |  2 +-
>>  arch/arm/dts/imx7d-ac-sxb.dtsi                |  4 +-
>>  arch/arm/dts/imx7d-flex-concentrator-mfg.dts  |  2 +-
>>  arch/arm/dts/imx7d-gome-e143_01.dts           |  2 +-
>>  arch/arm/dts/imx7d-phyboard-zeta.dts          |  2 +-
>>  arch/arm/dts/imx7s-warp.dts                   |  2 +-
>>  arch/arm/dts/imx8mm-innocomm-wb15-evk.dts     |  4 +-
>>  arch/arm/dts/imx8mm-phyboard-polis-rdk.dts    |  4 +-
>>  arch/arm/dts/imx8mp-debix-model-a.dts         |  4 +-
>>  arch/arm/dts/imx8mp-debix-som-a-bmb-08.dts    |  4 +-
>>  arch/arm/dts/imx8mp-karo-qsxp-ml81.dtsi       |  2 +-
>>  .../dts/imx8mp-var-dart-dt8mcustomboard.dts   | 25 ++++----
>>  arch/arm/dts/rk3566-cm3-io.dts                |  4 +-
>>  arch/arm/dts/rk3566-pinetab2.dtsi             |  4 +-
>>  arch/arm/dts/rk3568-bpi-r2-pro.dts            |  4 +-
>>  arch/arm/dts/rk3568-evb1-v10.dts              |  4 +-
>>  arch/arm/dts/rk3568-mecsbc.dts                |  4 +-
>>  arch/arm/dts/rk3568-rock-3a.dts               |  4 +-
>>  arch/arm/dts/rk3568-wolfvision-pf5.dts        |  2 +-
>>  arch/arm/dts/rk3588-orangepi-5-plus.dts       |  4 +-
>>  arch/arm/dts/rk3588-rock-5b.dts               |  4 +-
>>  arch/arm/dts/socfpga_arria10_achilles.dts     |  2 +-
>>  arch/arm/dts/socfpga_arria10_mercury_aa1.dts  |  2 +-
>>  arch/arm/dts/state-example.dtsi               |  4 +-
>>  drivers/of/base.c                             |  6 +-
>>  drivers/of/of_path.c                          |  9 ++-
>>  drivers/of/partition.c                        | 62 ++++++++++++-------
>>  include/of.h                                  |  6 ++
>>  44 files changed, 149 insertions(+), 96 deletions(-)
>>
>> -- 
>> 2.39.5
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


