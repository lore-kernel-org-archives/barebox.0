Delivery-date: Fri, 11 Feb 2022 12:16:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITuy-00Cm0V-O2
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 12:16:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITux-0005E9-Gn
	for lore@pengutronix.de; Fri, 11 Feb 2022 12:16:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djO79JUJajh69zYuC8Zg6mtBcVQYg6irqNp7qEyfOqY=; b=OhXLsvlfp/pst9
	ExQnk8tvwxNWy5HrRSo/j1hjxb2u2j5Si9TXt0zzZ9dDDUo+xV18A6uLHs6XLxZMjopK2mnVXojd8
	BsOQ1JtKQBEjcLDKeB3Q5VNYkmIo9pVNjhXEdLS7R8WKnSpW1OmF/e4PWisjk4pU25XQ1M6S+s5a4
	yI9GwJpfYXTZ8hH3zqUcwNttNiK/y8qO+ULit9qvwophVYXZPsCTG/zVXxLUTdWywgqIbRIPH/lQE
	8LOp/i6oBJaZHZnN727cc+Js7rfy2ljlBQYddkhwM1y0jALFBL4mvnsNGvzVGgE8slrbEL+BB3A1i
	ToexdwHYwvOMR0hGO3+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nITtY-006qdX-MB; Fri, 11 Feb 2022 11:15:20 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nITtS-006qc4-Ha
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 11:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644578101;
 bh=HR6zQNdDkd+vj6ynusAC66GGlAC6vrVFAsmv9ALTK+o=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=F86063/YGAwLY1Ka3X549uTZWwNl3tmsQ4zpVbo1lcVM4ApLq7eA+AS6L8sT+M3mz
 6nUFuz9PFUuTf7/TKHzYJTTHTYgxbhW2UpuCCJRYzqOhZ26UoZ6ubHWPq8KlSQhZ6a
 BIprGBCUzmZPIT510S/8CQstBAfWMHhKPSaOOg1U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([217.61.154.74]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M1Ycl-1nKPpm2NmV-0033VS; Fri, 11
 Feb 2022 12:15:01 +0100
Date: Fri, 11 Feb 2022 12:14:56 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20220211104344.GG18637@pengutronix.de>
References: <20220211091114.11220-1-linux@fw-web.de>
 <20220211104344.GG18637@pengutronix.de>
MIME-Version: 1.0
To: Sascha Hauer <sha@pengutronix.de>,Frank Wunderlich <linux@fw-web.de>
CC: barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <7F60960B-A04B-4B82-BB44-43EC6EC7DCD1@public-files.de>
X-Provags-ID: V03:K1:OX3H7KUR9PfFZ772Doi4AdxsRAnt+WBaRCDkyuSDqyfFi6jPg6T
 e1+YhFIdoPK/yihjVh99bDEXRrLrM6NdqRTf3OLuEafv+RebaTr/Z3tRNnLAYwMlW/wihav
 riNP8La28ikSf/xVBK+TK1iAs2thRFnibwvqgTkFCMnmsjXtSlYh0nXyrV3BKzz2XralTal
 5zoZHcsqmYBBrwt3XZW7w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:YBgYkfNBSt0=:3ipk/rDelJOPbRNGthjsfl
 TdNGS1MPiuZYxjJWN6i1sMUeD4iFkzokUFX93PY6uWzA1D1htiKa6RdI9gMdeY0y180vNDzvj
 5M3EAa5Z4soSdPVmSwz7XXG1Xf4SFKr2svbbpXHopEamEFGdZ6j2T7NAA2W92Ws+XjyFaDnUQ
 87BOBlq11fmWoD7DkinHcyz+z/oEkCL3Bu2e7lRG6tarGbzMndJA8MqcffOoVME8Nkz66uJKy
 8nKiSkQhso1uM0LO+aMgjVUDSTI9MicPttQwKieF611JfMSPOQpH8hseZrJJMwx3uvT8zlycF
 fjjL4V/Vq9jQYt0NypHUBrd9TzSQwrZAhp6n4nTf8lXgkHTTQjeKUXaMA8kGv7j/GQ7V5Y6HS
 SbRAAj1covXOZm9rPjgGpcOemVy0pP7a1hIk73lS4wMBSfu5YOIO9DJ+geSW/sLuoidf9jmF+
 2pFKBZ6Pmnr3sb2iRMy9Nvtt4e6w6FTPwGu0afSTi5tSScdRLgivjGw9zWOZ2+yu9iJR9B58Q
 sKJalhYCw6LFoLJfU+MRIGXzNugDYQ89kOloxpFbn94ROUiDS7fHPEZk56nTVIuM1WrgKBVuN
 I9x3W2XjfInVGDrXH+hxd1ldmyZshez24Adf+rKIMmjLK2qBBKpIH78uAo0dQyYLpaXghvL0C
 TobDWIRD5LkmXWeWkxn33SAWzanDc/WDD09zi0tlPSh1Kk6CFHpVdJI1ffHBRmoJ8HfIzju5I
 RhxrRo/F0g6QwafI2hBa3W4/W7cBSMsFS7dKr3PwyxnaCrzGFeZUVa9LNBomVyRjPoI6X3Fx5
 FDg76PCe/UsRCmGMeoDjmLyZfxgg0rTdDrtxfRMWF7JRrtxiyfaOB1Gx4GfAHMV4anvWA8KYR
 SAu0yB6SOeEIGhpvAbunbtVf6peWpFqt0lsf8R/ay4v1E3CfpsU/yXHuwO2aWz5CSAJgVpmwS
 +F2bryI1Fzmnrdd75WJgnbSJlgEfuXIGh/vS35p++E4ROH3ANISvHukR3fjb9dAjDq8L8l4qC
 ADT2UUfJcdbsX4Um7fkgrZQbLghXC5NO3DLP++LTGqMsSqDuI3q4QjESFFgwDrJCsAF4ykMfK
 3F+vI7+HYLBiXc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_031514_957891_DF8D7EDF 
X-CRM114-Status: GOOD (  14.01  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip: rk3568: add tsadc and spi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 11. Februar 2022 11:43:44 MEZ schrieb Sascha Hauer <sha@pengutronix.de>:
>Hi Frank,
>
>On Fri, Feb 11, 2022 at 10:11:14AM +0100, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>
>> 
>> Add tsadc and spi node from linux.
>> 
>> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>> ---
>>  arch/arm/dts/rk3568-pinctrl.dtsi |  9 ++++++++
>>  arch/arm/dts/rk3568.dtsi         | 35
>++++++++++++++++++++++++++++++++
>>  2 files changed, 44 insertions(+)
>> 
>> diff --git a/arch/arm/dts/rk3568-pinctrl.dtsi
>b/arch/arm/dts/rk3568-pinctrl.dtsi
>> index a588ca95ace2..8f90c66dd9e9 100644
>> --- a/arch/arm/dts/rk3568-pinctrl.dtsi
>> +++ b/arch/arm/dts/rk3568-pinctrl.dtsi
>> @@ -3108,4 +3108,13 @@
>>  				<4 RK_PA0 3 &pcfg_pull_none_drv_level_2>;
>>  		};
>>  	};
>> +
>> +	tsadc {
>> +		/omit-if-no-ref/
>> +		tsadc_pin: tsadc-pin {
>> +			rockchip,pins =
>> +				/* tsadc_pin */
>> +				<0 RK_PA1 0 &pcfg_pull_none>;
>> +		};
>> +	};
>>  };
>> diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
>> index 0f19d3f0c0c3..6afd95b01c0c 100644
>> --- a/arch/arm/dts/rk3568.dtsi
>> +++ b/arch/arm/dts/rk3568.dtsi
>> @@ -772,6 +772,21 @@
>>  		clock-names = "tclk", "pclk";
>>  	};
>>  
>> +	spi3: spi@fe640000 {
>> +		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
>> +		reg = <0x0 0xfe640000 0x0 0x1000>;
>> +		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
>> +		clock-names = "spiclk", "apb_pclk";
>> +		dmas = <&dmac0 26>, <&dmac0 27>;
>> +		dma-names = "tx", "rx";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins>;
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +		status = "disabled";
>> +	};
>
>When you asked me if you should keep tsadc/spi3 in your board dts I
>didn't understand that these are missing in rk3568.dtsi.
>Adding these nodes when barebox doesn't use them has no gain for us. I
>won't take this patch and removed references to spi3/tsadc from your
>board patch while applying.
>
>Sascha

Hi,

I understood it,that when you take the mainline-linux dts it will not find spi3 and tsadc in rk3568.dtsi. Or do you plan to sync this too?
regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

