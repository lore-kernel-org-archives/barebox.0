Delivery-date: Mon, 14 Apr 2025 11:07:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Fml-000Ztb-0r
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:07:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Fmk-0007r9-LQ
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:07:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U1VMdwJpvJbs/30jbfXAMPOxGbW1bSv1E95+TimiPiE=; b=c3h9LEuIaXto7qVH6wpLjUXh8g
	P8y2dlHJYy64H0B31BOq3SgadB4cTYuF4WANkXPIa0NuG9Q3lwdrmHOiyYFOqgcsSljMnFXDXtb5V
	A/xRO9aYyuORKwHnq5sjIO9FVTl1tj4LzlNZHHLEIkvaoSkoTXRfVgwy7ToDKLazQ3T5eYgx9e/QU
	ZQ15UYJ6H0ScERz+64GPZa+/biVTGhThJuyRc7U5XQVgv8aLHuvy9HgiwZK6VsoCJOlfX8fm1QSBM
	WVDBVLqwFoLbxPfrOh4QBK7GLGFoCBiRsfWhEyWchKNHIYaFFhvnTyqYlYvtIqZaJAguzdDvVwVCR
	c4UavsBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4FmJ-00000001DQI-32UH;
	Mon, 14 Apr 2025 09:06:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4FS8-000000019nv-1AZC
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 08:46:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4FS6-0000ZL-Up; Mon, 14 Apr 2025 10:46:03 +0200
Message-ID: <5003d208-f1c4-4cbc-88ec-aaa8c30bbd11@pengutronix.de>
Date: Mon, 14 Apr 2025 10:46:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
 <Z_zJUIijGZGEqcAu@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z_zJUIijGZGEqcAu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_014604_324662_981FFDE2 
X-CRM114-Status: GOOD (  18.75  )
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
Subject: Re: [PATCH 1/6] ARM: dts: i.MX8MP: drop now upstream
 imx8mp-nominal.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.04.25 10:37, Sascha Hauer wrote:
> On Mon, Apr 14, 2025 at 08:50:04AM +0200, Ahmad Fatoum wrote:
>> This file is now available in Linux since v6.15-rc1, so we do not need
>> to duplicate it in barebox for boards to make use of it.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/dts/imx8mp-nominal.dtsi | 49 --------------------------------
>>  1 file changed, 49 deletions(-)
>>  delete mode 100644 arch/arm/dts/imx8mp-nominal.dtsi
>>
>> diff --git a/arch/arm/dts/imx8mp-nominal.dtsi b/arch/arm/dts/imx8mp-nominal.dtsi
>> deleted file mode 100644
> 
> This is used by imx8mp-skov-reva.dtsi. Should the include be changed to
> use <> instead of "" now?

imx8mp-skov-reva.dtsi is in dts/ and there is a version of that file there.
This file here is unreferenced and the upstream version will be used
in the follow-up commit.

Thanks,
Ahmad

> 
> Sascha
> 
>> index d675d1e5486e..000000000000
>> --- a/arch/arm/dts/imx8mp-nominal.dtsi
>> +++ /dev/null
>> @@ -1,49 +0,0 @@
>> -// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> -
>> -&clk {
>> -	assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
>> -			  <&clk IMX8MP_CLK_A53_CORE>,
>> -			  <&clk IMX8MP_SYS_PLL3>,
>> -			  <&clk IMX8MP_CLK_NOC>,
>> -			  <&clk IMX8MP_CLK_NOC_IO>,
>> -			  <&clk IMX8MP_CLK_GIC>;
>> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
>> -				 <&clk IMX8MP_ARM_PLL_OUT>,
>> -				 <0>,
>> -				 <&clk IMX8MP_SYS_PLL1_800M>,
>> -				 <&clk IMX8MP_SYS_PLL3_OUT>,
>> -				 <&clk IMX8MP_SYS_PLL1_800M>;
>> -	assigned-clock-rates = <0>, <0>,
>> -			       <600000000>,
>> -			       <800000000>,
>> -			       <600000000>,
>> -			       <400000000>;
>> -};
>> -
>> -&pgc_hsiomix {
>> -	assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
>> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
>> -	assigned-clock-rates = <400000000>;
>> -};
>> -
>> -&pgc_gpumix {
>> -	assigned-clocks = <&clk IMX8MP_CLK_GPU_AXI>,
>> -			  <&clk IMX8MP_CLK_GPU_AHB>;
>> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL3_OUT>,
>> -				 <&clk IMX8MP_SYS_PLL3_OUT>;
>> -	assigned-clock-rates = <600000000>, <300000000>;
>> -};
>> -
>> -&media_blk_ctrl {
>> -	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI>,
>> -			  <&clk IMX8MP_CLK_MEDIA_APB>,
>> -			  <&clk IMX8MP_CLK_MEDIA_DISP1_PIX>,
>> -			  <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
>> -			  <&clk IMX8MP_VIDEO_PLL1>;
>> -	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
>> -				 <&clk IMX8MP_SYS_PLL1_800M>,
>> -				 <&clk IMX8MP_VIDEO_PLL1_OUT>,
>> -				 <&clk IMX8MP_VIDEO_PLL1_OUT>;
>> -	assigned-clock-rates = <400000000>, <200000000>,
>> -			       <0>, <0>, <1039500000>;
>> -};
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


