Delivery-date: Sat, 09 Apr 2022 18:05:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndDaS-00DHk5-8Z
	for lore@lore.pengutronix.de; Sat, 09 Apr 2022 18:05:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndDaP-0005kW-BJ
	for lore@pengutronix.de; Sat, 09 Apr 2022 18:05:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQc9ftJ6eSJU22/Ay08bc8fwdivL2z4Da3uHcTMIs+A=; b=p7wzTnz7xforYm
	M8MvzBcuCdc1pbfxHpsCD+2pzgldHmtYWr+Nesg/GY/XGbTq/2NUqqnCFFMLskfW9pvphrZyiMt71
	acqAGCJUI/VXI4COVyad8Rq+BI2epU36+vv4itjJK3jTVsfXP38Dgaj5KYHFlf/BZg5YF7nUj61eV
	H6APPq6hr88D8WM4P73AKhmBhEej/KkDOGU6ZfucQLQD4L/znq2f0iU0LsdzUQYCJwo+HnPaRAarT
	YYEuos9raU/JCDmzpqfJqR2Owc8X6CzCjuFom2h+a8kxcrPmxA3KdWweBAWGegCiN6WSZuHcjbkA/
	1FQ6/R7Suv55srhUwOqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndDWg-003SoA-SW; Sat, 09 Apr 2022 16:01:27 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndDWZ-003SnP-0m
 for barebox@lists.infradead.org; Sat, 09 Apr 2022 16:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649520075;
 bh=QDeDL7y4Kbj17A77Qzq6jynD2RQRjhPT7oI7K44pD1o=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=bXSaofyESUCoGDBi3zuPYLwoKWH+GF5ebkENyBVQ/Xk69H/pf9y9qRv3KFbtXH5BE
 GlucHOvuKyayjwGYY/GFWHYdi5YREQIC/Ih9ibV5vrVhVEIAUv6dsNOuWDwIFCTyDW
 SRzKb58AUgoGcmewBpGjw4l9uba+XzXCfN8KXQjE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MDQeU-1nnd7t0rkk-00AVpa; Sat, 09
 Apr 2022 18:01:15 +0200
Message-ID: <1b2a8dc2-629d-6c76-207b-d1d78de4c458@rempel-privat.de>
Date: Sat, 9 Apr 2022 18:01:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
 <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
 <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
X-Provags-ID: V03:K1:Mzj1o6rSbHPiibMNkkGxTAoyfiDhik/vz4deOXf+CMTM7jeYThC
 t3hueJwoaLswaVF/KIibidKO65DqPtB2INsAcZgUhJduU1rVF96/NpURRvHA8Q2haVPpcqz
 KvXpMdHBdZXlJ0fXS0jULReGt5S9RtR6LlPZpsmQ6UBzcyDceIgin1Sxa/t5vGcLmxLpWOJ
 LdXkOW1bWmyj09R/ezsHw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:IAmmFDYdvu0=:5y36ql0YTnXy5c2JmYc7mG
 R7FF7FFjt5MOSDd7hjwRdaeiDfmbw8dlMDhmzVLUBif12BTVloZiMtIizMPCrVROzquGRy40U
 A+wNZadKvflcbv7Fi6mzdjZOYfN4YBbb+f988BuZYUjYz7I5VwTW4KG46JZJcMam4UKxUekSt
 jpvMMxBm36bmmxUSYLL9tbaBB62CCwJMelCr39N7ssm6MjwJo5L0o0WeYS7rgr2TXA91CYxUC
 q5KcKMmW0LHh1sy5TxKuIZ/XubPoYMEya7nrZtCgzhNOpcHGqN2OA7/nFnTP0jtzWny26aQqc
 09CPaPqBSfhQCz3MB7ClKlpr88E2OUPCyW+k2UwAkLpws0O5T8UJHl0xYrvnmvSTAk6i7rbhM
 w1m51kr2h3n5srXP5/VpIG4edC8sVvsuh8tN/Gq87lO3ixVwSefTgSifdPo6P/ycgEVyvuE8l
 jucEII1lEUzyQ5lf0O15KlZxOPZ4cE9iQp57HVugpKbshgK86Wm/XNhGtU1MP+R9IbzIxv5xs
 SFY4b0MF8T5fO5rzd45PaQbzR0jxZkAHqyCiI9lf8Gima1Dk8/SflcPmF7y/4IzZAtSYG9lEO
 HPiX5h6R9E/vaCHXrTf4QxWM6pLq+DNvgBD2BpOdjmDgfuVamBAlQVuSDva4HAB2AFbAcrw+7
 KDd+nvDUkXd6LLfrXaC2Yo9DUx2m0ywsnX7eEyFAYKeDHz56Vofi8yfNqcoBrD3qqA+2pV6RN
 n8nGP2YqyGrjwptnDg+ZfW9/lVtdLHvpf6+prKtS01x7k8ZUrRHqvDVasCGyJVdciVURbjNUB
 h9hcfyTrRsYwnQAKHduhIFtFWPIc03Th+li4Gh55g7taJqHhR55MRTPPMq/jOKraiwjoNutqf
 Wxv2nHwUwgIiav0Z2WKS55MhcR9ApYdcEaYBrkI7dNnmPfBLBvUnf9QOJW2oW+g+UW58BCyr5
 f4B65XsXmICSY01gviD/s6IHlxbyt9bjTs5YGfAFiMYg4L5LS2rA43UuODEvaUE2P5E1qg8+2
 cPFt6Q86DgYQXyvl1nZ05bScXlAoCUeoUQO2VlqRj/FpHYGro6QDaD5hvSrrGNHmHHXI0R3KV
 3fiNLGoYadrDbs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_090119_399701_DBBC171D 
X-CRM114-Status: GOOD (  23.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 09.04.22 um 10:35 schrieb Frank Wunderlich:
>
>> Gesendet: Samstag, 09. April 2022 um 10:04 Uhr
>> Von: "Oleksij Rempel" <linux@rempel-privat.de>
>> An: frank-w@public-files.de, "Ahmad Fatoum" <a.fatoum@pengutronix.de>
>> Cc: barebox@lists.infradead.org
>> Betreff: Re: change r2pro dts to public hw version (was "Board code with 2 dts" )
>>
>> Am 08.04.22 um 19:19 schrieb Frank Wunderlich:
>>> Am 8. April 2022 19:00:03 MESZ schrieb Oleksij Rempel <linux@rempel-privat.de>:
>>>> Hi Frank
>>>>
>>>> Am 08.04.22 um 13:03 schrieb Frank Wunderlich:
...
>>> Thanks for first lookup.
>>>
>>> Imho delays are read here,so source supports these properties:
>>>
>>> https://git.pengutronix.de/cgit/barebox/tree/drivers/net/designware_rockchip.c#n272
>>
>> ack
>>
>>> And default values are different too. Have not compared source with linux,but there it works with this values....
>>> If understand you right,the rgmii should be possible with the delays.
>>
>> rgmii can't work properly without correctly configured delays.
>> IMO, the best way is to disable delays on the MAC side and let configure proper delays by PHY, by
>> setting phy-mode = "rgmii-id"
>
> tried this but same result
>
> +++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
> @@ -165,8 +165,8 @@
>          /* Reset time is 20ms, 100ms for rtl8211f */
>          snps,reset-delays-us = <0 20000 100000>;
>
> -       tx_delay = <0x3c>;
> -       rx_delay = <0x2f>;
> +       //tx_delay = <0x3c>;
> +       //rx_delay = <0x2f>;

In this case driver will set some default values:
priv->tx_delay = 0x30;
priv->rx_delay = 0x10;

No idea what this values mean.

>          status = "okay";
>   };
> @@ -400,6 +400,7 @@
>          rgmii_phy1: ethernet-phy@0 {
>                  compatible = "ethernet-phy-ieee802.3-c22";
>                  reg = <0x0>;
> +               phy-mode = "rgmii-id";
>          };
>   };
>
> barebox@BPI R2PRO:/ dhcp eth1
> eth1: 1000Mbps full duplex link detected
> WARNING: eth1: No MAC address set. Using random address 72:a4:02:4a:e9:38
> T T T T T T T T T T eth1: link down
> eth1: 1000Mbps full duplex link detected
> T T T T T T T T T T dhcp: Connection timed out
>
> also tried to set the phy-mode on gmac instead of phy
>
>          phy-handle = <&rgmii_phy1>;
> -       phy-mode = "rgmii";
> +       phy-mode = "rgmii-id";
>          pinctrl-names = "default";
>
> same result ;(

Except of clk delay, there can be wrong clk direction and/or frequency. Or pinctrl, or clk driver issue.

>>>
>>> Is there any way to debug this (or try different values)? Just to get which value is wrong.
>>
>> By this way of testing, you will get range of values which would work good enough with some random
>> packet drops. It is better to measure it.
>
> if i get it working this way, how to read out the delays?

in this case I would try to do a register dump

>>> The only way i'm thinking about is creating different dtbs and loading then for testing from uboot. But which values to try...i don't know which direction is broken and can try only some "random" values.
>>
>> I would suggest to take an oscilloscope and measure rgmii clk and data lines. Make sure it is using
>> correct frequency and the clock skew (delay between clk and data)
>
> have no oscilloscope here as i'm a private person and do this as hobby

i have private oscilloscope, no idea what to answer :)

>>> I hope this is not the problem that i load barebox from uboot.
>>> regards Frank
>>
>> u-boot can affect inital configuration. Most drivers are developed with clean HW in mind, not
>> preconfigured by other system. In the best case, the driver will do some kind of soft reset.
>
> currently uboot does not support rk3568 ethernet, so i guess it should not affect.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

