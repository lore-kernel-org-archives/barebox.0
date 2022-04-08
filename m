Delivery-date: Fri, 08 Apr 2022 19:21:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncsIk-00C49t-QD
	for lore@lore.pengutronix.de; Fri, 08 Apr 2022 19:21:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncsIh-0005mk-Ny
	for lore@pengutronix.de; Fri, 08 Apr 2022 19:21:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gw3+3WFtQbG8+UIgWVuajFVghdU2bc+Sni8c324G4HQ=; b=e4jVVstxTQAz7U
	9CRBAiTMXDgvV4TdBE1u4EtkZFngQa/aAN/5hl29sf/ZJZyKik3DEz0eCLYp22Wi6S8kkEt/LM1OI
	pMLVncBOlbmSKJAJvc8j0sh7XClN6GGESsvJC+Xxpg9YHQgdUXe6TdWb/46XrjTWMP12dfh8DZfI3
	l4DiTDK3KYEwduJYgTR0yg1yGfzr5HLZFm6at6f96t6elMNVvOak7FthOiLYJ6XGExf4czQXXCmp8
	xc+c+L9LI38VoCO/+IHMWa03sQtscaJtd3TIoekcEWSv3SB46JLG+r/674e7wtbFucgAJZHKQkAAz
	BjQ3W78dBNKdDl+vioeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncsHK-000hUC-Iw; Fri, 08 Apr 2022 17:20:10 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncsHE-000hRm-Ik
 for barebox@lists.infradead.org; Fri, 08 Apr 2022 17:20:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649438398;
 bh=RYt4/QUZSt9LotFNvduQTeYhFOVuTtP3n4iIRygeOqE=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=ZVhFUljk1k1QI03vlyG7XoLB8kL5ZrqQjMY4rjgLd6mkMO1UeIj7Mpy5+V3Xo1bpl
 rY2YfCKn3sb++DxS8OW3CEvgJRW+D+ZcUKli+iFhAEolf496BQ7yI8LqIwzwxI56Fq
 AacrYGxyzFgeShz9ySaPydQWh2n4PiaTtwMZ30ZE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([217.61.152.139]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MmDIu-1oKyS53lb6-00iB62; Fri, 08
 Apr 2022 19:19:57 +0200
Date: Fri, 08 Apr 2022 19:19:55 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
MIME-Version: 1.0
To: Oleksij Rempel <linux@rempel-privat.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
X-Provags-ID: V03:K1:stGNqUqnviJ6W65PeWkRSERMn+P3XEWBEBdiEUCeaTJY4An0dKM
 sfnIgg8veKmMYV2z4d/VmvBHFzHfp1L6xnnQ4xTHx93r7Zsf0D8VxsVEz/OCNZx/aY33PAK
 X0cC9GOPcVl3QptYj/ZFEthT0w/w7cIbF2+/WFdtLjuLCVua6Gqa7QRCzn1vgrg/R/5H7Ri
 4/+LS9RSn+Zqmd/opMsvQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:2IjaF/d8Zek=:lH4aqfZ4BHCEntUowvE+YQ
 xHtK7MT2L22MhxLpbr9whqMWvp0yYgMBM5QxKpTQzwRtEuaysSDqB1kIl/08yaNWYvixbxt3T
 lPv9v0zqxOqwT4vM+NCYWRWB5IuBq0CZIB12AtRZhM5s40bTwKBWMtvFsge4MMoNnUeIvH+TS
 h4kc6R7j2+xmiLi8q16ao2pF6IRbzp5xbf1pswbZOaM0rCVgsjl2/8ssIHRtrCsevV6gL3a1R
 yILF0WN1A5osZi4KGDfG36jVTG3xe9pdRiCRjqWm/4y3/ivY0S/J58uBxHkSsdhTj4H79115x
 R0dvXiyTfDyo4wNzFSwQ856dJrMWe7GPwbuPskJ1dxQ6YSuz7zp14EFoh3i8qfXaGs2NmWTVA
 KF4UoYNBpbypuyJ4Vc1PSfMXHuzI9IrTQf7EyYtC5Jze45RM5iweyRrzuSAqIf47DgAWZWbTP
 KxRiz3dw+wLxDWaHBBuihtS3uC2xd5erQUA4lmQR4OJt3apoM0tXJiHgrDjdbhDSj32y2n7pZ
 Voj2gELZV3OI+XUJGkg/cRO9N2I2klSL81xW5fSK18RqzWi/wOgk1aTwpcgryna9VuVvpPRKT
 KzbdvwDqSRM5StFPtk9lxNi1D82LPQ7GRFJCa/81E2jiEYoXLiJ/J6Z1OGlScXZlLQEXPzoFx
 5JwtY4zoU7yVgpbj//0V1oXw3p8HPLW2SUr5ayxliP1PzdWE1jw4iKChe/aicW5rjPe/XfgiV
 b3+CJbvi8QfnmCsHAOltJmaETk03XCk2xtJMxBDKlR5KUEyJjdvU0sPNE5yxIPLmtXp+Jz7nG
 jM/RSdlMLPLTwxiad+o1/RtEzAuVluEh+sNCCjyJr8gJk5yeOvVtpglbJKiejZLUIth1eLvTs
 x4S8TBI27UopPuYkrejkCSW8FGIHoiRxs+ybcLFgfW26iqPIDkO2twQr0I98bCC4G1MYlBalw
 Anj7N84wDV7fnqtQTsvWYXpsW78Uo+OMM/004Z8wY4dbcF++0ltt2/7HHxp4n4A//N6Py1rPz
 x0aXTTPGyQjX1CTzUf7Szx2bLfM/jIvvp7Mej0MoU5eSU0XJrxW9JA3KUMvlh7Y8GX/v9LO0g
 6CoUPc7ZI7fZMA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_102005_118607_96EDDEDA 
X-CRM114-Status: GOOD (  16.01  )
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
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 8. April 2022 19:00:03 MESZ schrieb Oleksij Rempel <linux@rempel-privat.de>:
>Hi Frank
>
>Am 08.04.22 um 13:03 schrieb Frank Wunderlich:
>> Hi,
>>
>> have now the new board, but cannot get the gmac working in barebox.
>In linux i have it working
>>
>>
>https://github.com/frank-w/BPI-R2-4.14/blob/5.17-main/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts#L235
>>
>> changed the dts in barebox to same values, but cannot get it working
>>
>>
>https://github.com/frank-w/barebox-r2pro/blob/r2pro/arch/arm/dts/rk3568-bpi-r2-pro.dts#L123
>>
>> i see both interfaces, but it looks like the phy (rtl8211F) is not
>working in barebox
>
>The rgmii configuration is may be wrong.
>
>phy-mode = "rgmii" looks not realistic. The "rgmii" is only possible if
>rgmii clock line on this
>board is about 20cm longer compared to rgmii data lines. I doubt it is
>the case :)
>
>So, it looks like the delay was added as separate property for the MAC.
>Without reading manual for
>this chip I can't interprete this values looks somehow strange:
>	tx_delay = <0x4f>;
>	rx_delay = <0x0f>;
>
>Normally delays are equal for both directions.
>Best practice is: MAC  do not adds delays, PHY will do it (PHY driver
>should be enabled)
>
>> barebox@BPI R2PRO:/ dhcp eth1
>> eth1: 1000Mbps full duplex link detected
>> eth1: 1000Mbps full duplex link detected
>> WARNING: eth1: No MAC address set. Using random address
>e2:3c:a9:08:b8:c8
>> T T T T T T T T T T T eth1: link down
>> T dhcp: Network is down
>> barebox@BPI R2PRO:/ eth1: 1000Mbps full duplex link detected
>>
>> barebox@BPI R2PRO:/
>> barebox@BPI R2PRO:/
>> barebox@BPI R2PRO:/
>> barebox@BPI R2PRO:/ devinfo eth1
>> Parent: fe010000.ethernet@fe010000.of
>> Parameters:
>> ethaddr: e2:3c:a9:08:b8:c8 (type: MAC)
>> gateway: 0.0.0.0 (type: ipv4)
>> ipaddr: 0.0.0.0 (type: ipv4)
>> linux.bootargs: (type: string)
>> linux.devname: (type: string)
>> mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
>> netmask: 0.0.0.0 (type: ipv4)
>> serverip: (type: string)
>> barebox@BPI R2PRO:/ eth1.mode=static
>> barebox@BPI R2PRO:/ eth1.netmask=255.255.255.0
>> barebox@BPI R2PRO:/ eth1.ipaddr=192.168.0.18
>> barebox@BPI R2PRO:/ devinfo eth1
>> Parent: fe010000.ethernet@fe010000.of
>> Parameters:
>> ethaddr: e2:3c:a9:08:b8:c8 (type: MAC)
>> gateway: 0.0.0.0 (type: ipv4)
>> ipaddr: 192.168.0.18 (type: ipv4)
>> linux.bootargs: (type: string)
>> linux.devname: (type: string)
>> mode: static (type: enum) (values: "dhcp", "static", "disabled")
>> netmask: 255.255.255.0 (type: ipv4)
>> serverip: (type: string)
>> barebox@BPI R2PRO:/ global.net.nameserver=192.168.0.10
>> barebox@BPI R2PRO:/ ifup eth1
>> barebox@BPI R2PRO:/ ping 192.168.0.10
>> T T T T T ping failed: Connection timed out
>> barebox@BPI R2PRO:/
>>
>> devinfo without device shows me this:
>>
>> `-- fe010000.ethernet@fe010000.of
>>    `-- miibus0
>>      `-- mdio0-phy00
>>        `-- 0x00000000-0x0000003f ( 64 Bytes): /dev/mdio0-phy00
>>    `-- eth1
>> `-- fe2a0000.ethernet@fe2a0000.of
>>    `-- miibus1
>>    `-- eth0
>>
>> any idea how to trace the problem down?
>>
>> regards Frank

>--
>Regards,
>Oleksij

Thanks for first lookup.

Imho delays are read here,so source supports these properties:

https://git.pengutronix.de/cgit/barebox/tree/drivers/net/designware_rockchip.c#n272

And default values are different too. Have not compared source with linux,but there it works with this values.

If understand you right,the rgmii should be possible with the delays.

Is there any way to debug this (or try different values)? Just to get which value is wrong.

The only way i'm thinking about is creating different dtbs and loading then for testing from uboot. But which values to try...i don't know which direction is broken and can try only some "random" values.

I hope this is not the problem that i load barebox from uboot.
regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

