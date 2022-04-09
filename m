Delivery-date: Sat, 09 Apr 2022 10:07:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nd67q-00Cvdc-RV
	for lore@lore.pengutronix.de; Sat, 09 Apr 2022 10:07:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nd67n-00023t-Rv
	for lore@pengutronix.de; Sat, 09 Apr 2022 10:07:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBxIJl/62pEAUDb1qqacYbvqzBM+0Hh0gdjVeP50wJo=; b=dXsjMT/nASCCVc
	Kr2Jzr9DxjzGpd9qSkCGQet0E5C82SBuXc9cK1AiPkYhTaRNMNMzKg0dV1jXjWJgErE340yEzictf
	mamFZBPxqi8EaV/rRdRA9B/kO0CJjsFwIOft3n6w6rwc7SI/DLQEb0RmJv6g61TZZMrN8fBM9aNsk
	Bk/gi2MXws7270Pk2iZzJyqkShSq1ZDSdKqbsoX9Lb2oJ1otFcHRNnal7SUKyyvSwvf6KFlQnfqeL
	9zYeaKnZcl5PLlA7rS2DV/lWWpF20mqczJwJ+dKjpYCld7nPr5Ivu5vnF9FCVVE0KlkfeWiAQ878b
	lWeEhdZfhggXpEbSl1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd65p-002Ydm-0P; Sat, 09 Apr 2022 08:05:13 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd65g-002Ycf-Eg
 for barebox@lists.infradead.org; Sat, 09 Apr 2022 08:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649491494;
 bh=TPcsrfxhnWQFUW2dgaU/vdyZej0oaHmA9cyDY4Qpp2I=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=kr2pbDEYSiWFnT/aafAh8hmoE0JgPV8PTBDz1sI+n471mgLE+zyfjPiYSqJcw5vj0
 a1RbPOCuHf1wiKDZlGyph2zal/8f1aletHP796CZQYWadc6q5qGT4N6mwqgPkh4YI0
 w51tL2vedigXTldpcVhosvNJcACVikurJSJOkzGk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MDQeU-1nnVPH3Kze-00ASEi; Sat, 09
 Apr 2022 10:04:54 +0200
Message-ID: <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
Date: Sat, 9 Apr 2022 10:04:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: frank-w@public-files.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
X-Provags-ID: V03:K1:IIN+BveqD44fZqVDgX7+hGljpZrWCfXVkpM+UnY1EHCtyDq3X+I
 jYxu7f1PbWPkHrianf4etmZA7HjXvfgqXNTOuhk1gDfkw6iFBQ9HC7d7SG7lcbDgy0h97ug
 9GL0D+cG2ZGW2a9fFPjNav4qOaoPsAu2iX3Gtri3dm/OF8WUR9XiMLT24M05U5VjD/Ov3hd
 axEqHrd1kZgDzw2++FrLg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:UPaHOqSU1GE=:bQV631E1XRM+BHW4wU83rt
 VuL2Nar39+aLxR4eM30VvN1ZHzme0AnZclYZyaNdf5z5tTKRru9CM9lLrXvOsEhVemqy/SNL3
 A6Y0c6mYf98wWRAuVG8tCrmr0uki18M3ce4feB8vy648gx4gP0tlEAXdmy2Wg7CQKPEqekML/
 wGpOHpxrYD7iy3/HsZDtcOdEIMULEncXIYH+t3EI9C+mR9k/LFU5IeFyeAlU0OqWs1lnR9Lwv
 wdh7GWdV/OQqeHex+q+4NQwZij0lfsM8G2sMd8aVmBMGXYiPxuQ0x0We4ecz6NJPxjm31JoiK
 Tn7chai8yLqG6gqPQzPt0BjxGTIE81zz3+RXVEdYqanZd5nCLqjYTTKoyF2p5UkbkwW4CtqFw
 dkgCaAsukjae8x6VmgONXXALw5Lckgyw/xf/5Y6nu79z5hdG9SNZBMptADmmE46nkKH+xJLzZ
 teuSgekteRIxUQzbyagyHSIxYiGEtGBNc0g4F0kHT2F8OZk1+evbJdmCILdzt2YLVKDEmnRE7
 AU/OGIpX5bKyi88ljOZZ0uPOcgHU3SUQpbFJkYTqLFrgUQLuO3vK2LvlxLuzkPRyyFVDxbf59
 2MOk9ceNhKS7JmloSk4YqTpKoE8O0Y8Q3o96SVBj1EHPrSMIOqi/IM9gyJp2Ur+sLSjH6S4e2
 CjNshNEU55gYzZyHTytlV+hAOQBKq3n5e1KdbG3vqBYE6rQwWm4GZskj4kDxoHZT2vRIxgnR8
 JeCbMrqOSP0XoLL5Kbb3fGfVa5gubo+nE5thFQg2UbJ7IbxiR9olRThWMWmP7fYM3VwJOb2TE
 /IdGA+Lj/fZ/4rZU87gHVEAxCHODqOmtDyE4/V5CDF5aZH7w1qEbFo8mGj/cS/a5ygNboBany
 3vLxHq7m13/+gMyxaeHxL/33uNFvTOfd3tIbBsnfZpRUTuFYjxJuLWqeyxBpMrvSYyFG0MTz7
 PXD2n/Kjp/r7ig9E7U1KmRRThGa1RWrg8EtwKvSnwmMUtASKVtYeJ+H8svOdZKCLGPMfdhV8N
 mppoyDA7bdr+kozngPn62Rit5l1FFzHOGpIayYdIy+Ve1qN9zHahF4Ej1r7zN/59tIwzmH7SB
 BgKrG1vKzrxXkk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_010504_829047_B00BF39F 
X-CRM114-Status: GOOD (  25.38  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 08.04.22 um 19:19 schrieb Frank Wunderlich:
> Am 8. April 2022 19:00:03 MESZ schrieb Oleksij Rempel <linux@rempel-privat.de>:
>> Hi Frank
>>
>> Am 08.04.22 um 13:03 schrieb Frank Wunderlich:
>>> Hi,
>>>
>>> have now the new board, but cannot get the gmac working in barebox.
>> In linux i have it working
>>>
>>>
>> https://github.com/frank-w/BPI-R2-4.14/blob/5.17-main/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts#L235
>>>
>>> changed the dts in barebox to same values, but cannot get it working
>>>
>>>
>> https://github.com/frank-w/barebox-r2pro/blob/r2pro/arch/arm/dts/rk3568-bpi-r2-pro.dts#L123
>>>
>>> i see both interfaces, but it looks like the phy (rtl8211F) is not
>> working in barebox
>>
>> The rgmii configuration is may be wrong.
>>
>> phy-mode = "rgmii" looks not realistic. The "rgmii" is only possible if
>> rgmii clock line on this
>> board is about 20cm longer compared to rgmii data lines. I doubt it is
>> the case :)
>>
>> So, it looks like the delay was added as separate property for the MAC.
>> Without reading manual for
>> this chip I can't interprete this values looks somehow strange:
>> 	tx_delay = <0x4f>;
>> 	rx_delay = <0x0f>;
>>
>> Normally delays are equal for both directions.
>> Best practice is: MAC  do not adds delays, PHY will do it (PHY driver
>> should be enabled)
>>
>>> barebox@BPI R2PRO:/ dhcp eth1
>>> eth1: 1000Mbps full duplex link detected
>>> eth1: 1000Mbps full duplex link detected
>>> WARNING: eth1: No MAC address set. Using random address
>> e2:3c:a9:08:b8:c8
>>> T T T T T T T T T T T eth1: link down
>>> T dhcp: Network is down
>>> barebox@BPI R2PRO:/ eth1: 1000Mbps full duplex link detected
>>>
>>> barebox@BPI R2PRO:/
>>> barebox@BPI R2PRO:/
>>> barebox@BPI R2PRO:/
>>> barebox@BPI R2PRO:/ devinfo eth1
>>> Parent: fe010000.ethernet@fe010000.of
>>> Parameters:
>>> ethaddr: e2:3c:a9:08:b8:c8 (type: MAC)
>>> gateway: 0.0.0.0 (type: ipv4)
>>> ipaddr: 0.0.0.0 (type: ipv4)
>>> linux.bootargs: (type: string)
>>> linux.devname: (type: string)
>>> mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
>>> netmask: 0.0.0.0 (type: ipv4)
>>> serverip: (type: string)
>>> barebox@BPI R2PRO:/ eth1.mode=static
>>> barebox@BPI R2PRO:/ eth1.netmask=255.255.255.0
>>> barebox@BPI R2PRO:/ eth1.ipaddr=192.168.0.18
>>> barebox@BPI R2PRO:/ devinfo eth1
>>> Parent: fe010000.ethernet@fe010000.of
>>> Parameters:
>>> ethaddr: e2:3c:a9:08:b8:c8 (type: MAC)
>>> gateway: 0.0.0.0 (type: ipv4)
>>> ipaddr: 192.168.0.18 (type: ipv4)
>>> linux.bootargs: (type: string)
>>> linux.devname: (type: string)
>>> mode: static (type: enum) (values: "dhcp", "static", "disabled")
>>> netmask: 255.255.255.0 (type: ipv4)
>>> serverip: (type: string)
>>> barebox@BPI R2PRO:/ global.net.nameserver=192.168.0.10
>>> barebox@BPI R2PRO:/ ifup eth1
>>> barebox@BPI R2PRO:/ ping 192.168.0.10
>>> T T T T T ping failed: Connection timed out
>>> barebox@BPI R2PRO:/
>>>
>>> devinfo without device shows me this:
>>>
>>> `-- fe010000.ethernet@fe010000.of
>>>     `-- miibus0
>>>       `-- mdio0-phy00
>>>         `-- 0x00000000-0x0000003f ( 64 Bytes): /dev/mdio0-phy00
>>>     `-- eth1
>>> `-- fe2a0000.ethernet@fe2a0000.of
>>>     `-- miibus1
>>>     `-- eth0
>>>
>>> any idea how to trace the problem down?
>>>
>>> regards Frank
>
>> --
>> Regards,
>> Oleksij
>
> Thanks for first lookup.
>
> Imho delays are read here,so source supports these properties:
>
> https://git.pengutronix.de/cgit/barebox/tree/drivers/net/designware_rockchip.c#n272

ack

> And default values are different too. Have not compared source with linux,but there it works with this values....
> If understand you right,the rgmii should be possible with the delays.

rgmii can't work properly without correctly configured delays.
IMO, the best way is to disable delays on the MAC side and let configure proper delays by PHY, by
setting phy-mode = "rgmii-id"

>
> Is there any way to debug this (or try different values)? Just to get which value is wrong.

By this way of testing, you will get range of values which would work good enough with some random
packet drops. It is better to measure it.

> The only way i'm thinking about is creating different dtbs and loading then for testing from uboot. But which values to try...i don't know which direction is broken and can try only some "random" values.

I would suggest to take an oscilloscope and measure rgmii clk and data lines. Make sure it is using
correct frequency and the clock skew (delay between clk and data)

> I hope this is not the problem that i load barebox from uboot.
> regards Frank

u-boot can affect inital configuration. Most drivers are developed with clean HW in mind, not
preconfigured by other system. In the best case, the driver will do some kind of soft reset.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

