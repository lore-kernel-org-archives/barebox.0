Delivery-date: Sat, 09 Apr 2022 10:37:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nd6ar-00Cx3I-6C
	for lore@lore.pengutronix.de; Sat, 09 Apr 2022 10:37:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nd6an-0004pz-Hx
	for lore@pengutronix.de; Sat, 09 Apr 2022 10:37:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ce2a/W+i3Kgaz4p7z8sgT9nq8oX8wsyEBEon9SVps4Y=; b=OXveqHmE0Nl63Z
	OvTV5XKpmBMEgAzUNpw9oeDrteZNzQ6tx9h8/LIB6k9Uc4pQPf6UO9St3QFr8xJ8fn7kbjyhCv5+W
	kc67eJPzH9SIirhefw1QDVtpGdD69AzLn+zU/Qrg8C6WUfnQMmNkt3rZ0kBwtmDWH5axnsJ78c4MQ
	DcMqtMkaw+te2LwN10ZCnc5GFQM9JYt7QotcKrzE+f/5zVUN2y4aMB3Bqn6nYuGoMspVXo95VUOST
	ZRA2zHh7l3iHiFAMQsllMCVWJboD3IVC6al3j4jydMsBHJktV97pdRQM3UBO9EHqj2TqeX06z220I
	7zogE4g9NM0sVHf7bBdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd6ZA-002buy-Mv; Sat, 09 Apr 2022 08:35:32 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd6Z4-002buW-SF
 for barebox@lists.infradead.org; Sat, 09 Apr 2022 08:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649493318;
 bh=6H3ngdbc+HAtYONmfOMgR0izUf3Z5rbC2S/SnSagD80=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jeErzpXkymdcg9d+QYcTeJmpVCWnTHJ3eegO9Ic/JoFdUWHu+QT10kwukXD3f42eR
 Nuylv1j/8wN+ko6+m8yRRhoAxYwj+qNpNGY1ovBHkKgLARfiP6wtokvwoIpQ5Kb/dm
 tL3WLZTezATi5qWO77yOhSMYQ/00n5zlyAlzQ+ak=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.105] ([217.61.154.105]) by web-mail.gmx.net
 (3c-app-gmx-bap35.server.lan [172.19.172.105]) (via HTTP); Sat, 9 Apr 2022
 10:35:18 +0200
MIME-Version: 1.0
Message-ID: <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
From: Frank Wunderlich <frank-w@public-files.de>
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Sat, 9 Apr 2022 10:35:18 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
 <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:bOOwCLAnpPKmVZWOEt0dCYpJ03BWPiJeBamgKEHQ/sEErOIiBk9LukTqLkMN3Pw6woXBx
 CtagIlci1xIj9IJfG/dbc+w6NmJpPXWhkSf0EH447TW3d+0asSN7k0LjEqxoRDhVnCbPpMbyT8IM
 LL+WF6jZAe98gA1fIPKsaNHNyeJ9vi3SBphRCR7ir6tSLUlO70Qej1iYv7nRjjFHF5wp7FOMTs22
 VxfU2nQR2snQzg9jFDYu0FRHr1iOGKbTYzB6f0Tv/88t24CCo2cUnO1nllcNrEwfZAcy4EA+WmLJ
 cw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:eAQCJa/MjWs=:w/iabBR13yEsFe0qXlXsXs
 +jqYhbNvEYzr898VdBrEFfaHxluchl49Ypxn2YnGnoUnk7JxBYXzNtrLH0g9dR2yvcoxBcMG6
 MjXrvkmrXSrRjBpSLTQTBFoZcdQJLf/buXqLtrp2H5aChr+20SAjrK6I1XqJuZoeIY5dw4U+U
 Tpvqgdc3j6ewzkui0tMRtKXbUzovWG3tegD2U2AlduZXBK6hLMpoybU1+pd5iHbfcrlW1hDhI
 +iSGg0zExKn/VaUQFWLsiUkNC0OFiiuhsOoP6sxIlUS7S8M1RzGJf4zdgB5AcYVp6+9zd8wMQ
 orx6yGn9qU8LESz470IWAS2tVKJ5EGK9mS7QO1656BGEGfJlAsGgBxSHhJQPhttv/bjj5pSie
 h4bHIEIS0/gS904hIp5td9jTEtjLmQFZf58dBoP0xwy5ydtHtbbHafxRnlfGlWFlZ8tLAEaex
 8wYLg7tmWE4zrYuRa994oUBrCskiKfNTeYByrLP4waXqzb2hlg6nVWRWjrj7L1XKaxxCO0gVG
 aQhLcsLItzSeZhfFbnMA9P2L9y3ltvvPX2uTdlrcqp+Uh2DVBPm+oDY0kx+tX0RbClyjCfgb2
 fMsfti6e6bttk9q2ggVvdCASn2wTTq7Ekex0uJLATPFua+7U32/uyd1urfu7CAreijeUy/u9x
 fMdwFRM99CQSaVHGGMozUANtxsL1rzraJvJ6aTpdTKaRq63doHxENGJF/Oc+be7NspFduZPM2
 I05PhmDfinElfTRwm1MhvoDduivgGMt+lHbq+e3Pp1VWZJ0XIxv3HnYgJXG69fPyMn5levdxF
 zY1ozP5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_013527_485633_6476C49C 
X-CRM114-Status: GOOD (  36.07  )
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
Subject: Aw: Re: change r2pro dts to public hw version (was "Board code with
 2 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


> Gesendet: Samstag, 09. April 2022 um 10:04 Uhr
> Von: "Oleksij Rempel" <linux@rempel-privat.de>
> An: frank-w@public-files.de, "Ahmad Fatoum" <a.fatoum@pengutronix.de>
> Cc: barebox@lists.infradead.org
> Betreff: Re: change r2pro dts to public hw version (was "Board code with 2 dts" )
>
> Am 08.04.22 um 19:19 schrieb Frank Wunderlich:
> > Am 8. April 2022 19:00:03 MESZ schrieb Oleksij Rempel <linux@rempel-privat.de>:
> >> Hi Frank
> >>
> >> Am 08.04.22 um 13:03 schrieb Frank Wunderlich:
> >>> Hi,
> >>>
> >>> have now the new board, but cannot get the gmac working in barebox.
> >> In linux i have it working
> >>>
> >>>
> >> https://github.com/frank-w/BPI-R2-4.14/blob/5.17-main/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts#L235
> >>>
> >>> changed the dts in barebox to same values, but cannot get it working
> >>>
> >>>
> >> https://github.com/frank-w/barebox-r2pro/blob/r2pro/arch/arm/dts/rk3568-bpi-r2-pro.dts#L123
> >>>
> >>> i see both interfaces, but it looks like the phy (rtl8211F) is not
> >> working in barebox
> >>
> >> The rgmii configuration is may be wrong.
> >>
> >> phy-mode = "rgmii" looks not realistic. The "rgmii" is only possible if
> >> rgmii clock line on this
> >> board is about 20cm longer compared to rgmii data lines. I doubt it is
> >> the case :)
> >>
> >> So, it looks like the delay was added as separate property for the MAC.
> >> Without reading manual for
> >> this chip I can't interprete this values looks somehow strange:
> >> 	tx_delay = <0x4f>;
> >> 	rx_delay = <0x0f>;
> >>
> >> Normally delays are equal for both directions.
> >> Best practice is: MAC  do not adds delays, PHY will do it (PHY driver
> >> should be enabled)
> >>
> >>> barebox@BPI R2PRO:/ dhcp eth1
> >>> eth1: 1000Mbps full duplex link detected
> >>> eth1: 1000Mbps full duplex link detected
> >>> WARNING: eth1: No MAC address set. Using random address
> >> e2:3c:a9:08:b8:c8
> >>> T T T T T T T T T T T eth1: link down
> >>> T dhcp: Network is down
> >>> barebox@BPI R2PRO:/ eth1: 1000Mbps full duplex link detected
> >>>
> >>> barebox@BPI R2PRO:/
> >>> barebox@BPI R2PRO:/
> >>> barebox@BPI R2PRO:/
> >>> barebox@BPI R2PRO:/ devinfo eth1
> >>> Parent: fe010000.ethernet@fe010000.of
> >>> Parameters:
> >>> ethaddr: e2:3c:a9:08:b8:c8 (type: MAC)
> >>> gateway: 0.0.0.0 (type: ipv4)
> >>> ipaddr: 0.0.0.0 (type: ipv4)
> >>> linux.bootargs: (type: string)
> >>> linux.devname: (type: string)
> >>> mode: dhcp (type: enum) (values: "dhcp", "static", "disabled")
> >>> netmask: 0.0.0.0 (type: ipv4)
> >>> serverip: (type: string)
> >>> barebox@BPI R2PRO:/ eth1.mode=static
> >>> barebox@BPI R2PRO:/ eth1.netmask=255.255.255.0
> >>> barebox@BPI R2PRO:/ eth1.ipaddr=192.168.0.18
> >>> barebox@BPI R2PRO:/ devinfo eth1
> >>> Parent: fe010000.ethernet@fe010000.of
> >>> Parameters:
> >>> ethaddr: e2:3c:a9:08:b8:c8 (type: MAC)
> >>> gateway: 0.0.0.0 (type: ipv4)
> >>> ipaddr: 192.168.0.18 (type: ipv4)
> >>> linux.bootargs: (type: string)
> >>> linux.devname: (type: string)
> >>> mode: static (type: enum) (values: "dhcp", "static", "disabled")
> >>> netmask: 255.255.255.0 (type: ipv4)
> >>> serverip: (type: string)
> >>> barebox@BPI R2PRO:/ global.net.nameserver=192.168.0.10
> >>> barebox@BPI R2PRO:/ ifup eth1
> >>> barebox@BPI R2PRO:/ ping 192.168.0.10
> >>> T T T T T ping failed: Connection timed out
> >>> barebox@BPI R2PRO:/
> >>>
> >>> devinfo without device shows me this:
> >>>
> >>> `-- fe010000.ethernet@fe010000.of
> >>>     `-- miibus0
> >>>       `-- mdio0-phy00
> >>>         `-- 0x00000000-0x0000003f ( 64 Bytes): /dev/mdio0-phy00
> >>>     `-- eth1
> >>> `-- fe2a0000.ethernet@fe2a0000.of
> >>>     `-- miibus1
> >>>     `-- eth0
> >>>
> >>> any idea how to trace the problem down?
> >>>
> >>> regards Frank
> >
> >> --
> >> Regards,
> >> Oleksij
> >
> > Thanks for first lookup.
> >
> > Imho delays are read here,so source supports these properties:
> >
> > https://git.pengutronix.de/cgit/barebox/tree/drivers/net/designware_rockchip.c#n272
>
> ack
>
> > And default values are different too. Have not compared source with linux,but there it works with this values....
> > If understand you right,the rgmii should be possible with the delays.
>
> rgmii can't work properly without correctly configured delays.
> IMO, the best way is to disable delays on the MAC side and let configure proper delays by PHY, by
> setting phy-mode = "rgmii-id"

tried this but same result

+++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
@@ -165,8 +165,8 @@
        /* Reset time is 20ms, 100ms for rtl8211f */
        snps,reset-delays-us = <0 20000 100000>;

-       tx_delay = <0x3c>;
-       rx_delay = <0x2f>;
+       //tx_delay = <0x3c>;
+       //rx_delay = <0x2f>;

        status = "okay";
 };
@@ -400,6 +400,7 @@
        rgmii_phy1: ethernet-phy@0 {
                compatible = "ethernet-phy-ieee802.3-c22";
                reg = <0x0>;
+               phy-mode = "rgmii-id";
        };
 };


barebox@BPI R2PRO:/ dhcp eth1
eth1: 1000Mbps full duplex link detected
WARNING: eth1: No MAC address set. Using random address 72:a4:02:4a:e9:38
T T T T T T T T T T eth1: link down
eth1: 1000Mbps full duplex link detected
T T T T T T T T T T dhcp: Connection timed out

also tried to set the phy-mode on gmac instead of phy

        phy-handle = <&rgmii_phy1>;
-       phy-mode = "rgmii";
+       phy-mode = "rgmii-id";
        pinctrl-names = "default";

same result ;(

> >
> > Is there any way to debug this (or try different values)? Just to get which value is wrong.
>
> By this way of testing, you will get range of values which would work good enough with some random
> packet drops. It is better to measure it.

if i get it working this way, how to read out the delays?

> > The only way i'm thinking about is creating different dtbs and loading then for testing from uboot. But which values to try...i don't know which direction is broken and can try only some "random" values.
>
> I would suggest to take an oscilloscope and measure rgmii clk and data lines. Make sure it is using
> correct frequency and the clock skew (delay between clk and data)

have no oscilloscope here as i'm a private person and do this as hobby

> > I hope this is not the problem that i load barebox from uboot.
> > regards Frank
>
> u-boot can affect inital configuration. Most drivers are developed with clean HW in mind, not
> preconfigured by other system. In the best case, the driver will do some kind of soft reset.

currently uboot does not support rk3568 ethernet, so i guess it should not affect.

> --
> Regards,
> Oleksij
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

