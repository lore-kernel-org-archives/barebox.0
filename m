Delivery-date: Sun, 10 Apr 2022 17:02:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndZ5L-00EQaU-IS
	for lore@lore.pengutronix.de; Sun, 10 Apr 2022 17:02:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndZ5I-0004IK-D1
	for lore@pengutronix.de; Sun, 10 Apr 2022 17:02:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/tCcI9hWkzxPl7IQPxXm9WhCUudREVEc2u9YA+6PlQ=; b=R6xhx3G7vd/8lS
	gRaTg26CzREYeGkE4oiz+EyNxtKH2HR0Cgqn4YFOWoDZEu8kuK553ctbHP/YyN7So5o62IIEbW5S2
	HryDrKFlSkP7TkJ8ZP4LYOFhVbPVUo/nDlQ7wKjRhFJcddg58Frz5/NyQ/Jd7vm1CKaFtn7qUmrq+
	F8TO6AyV5GnsdFMrcza8EwnVp8zaB2WpPBcayT94Pkz1JV2c7SDgYG1i0YJgpPgfPjyPPlivD4h6J
	Dx2Z/6sCgHnGA99CCVnG9WyTzJqJHFq5gyJNVFPF6Qb5FS/nvcT5V1Jew+Us6Y5zErskkj44WGzxw
	NGA71s8BwzfWiMLF1W9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndZ3Z-0051NK-7w; Sun, 10 Apr 2022 15:00:49 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndZ3T-0051ML-Ij
 for barebox@lists.infradead.org; Sun, 10 Apr 2022 15:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649602828;
 bh=LhX27tOGNBClnpKadUNSY2ZFELEYzFGnKtNMNqzXyuQ=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=Z+3ceLCyho31izQ0IJHjz/4an963nHhzT8LJl1zh+sR04Sx+j0y8PZqEVD4wzsK4O
 77p4WEX7Q6PnewoUIqN9yn1B0pHGAhGPobM+/lRW33+GkDdvRG8BbyzTk27S8PhA/I
 dhyMVc8G2LITk95ALDrgH2b6QDVFWY3ba2QG4e/Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MjS9I-1oN3Di1aH4-00kvVh; Sun, 10
 Apr 2022 17:00:28 +0200
Message-ID: <6e8479f5-2081-b786-5c9f-298dac95984b@rempel-privat.de>
Date: Sun, 10 Apr 2022 17:00:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
 <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
 <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
 <1b2a8dc2-629d-6c76-207b-d1d78de4c458@rempel-privat.de>
 <CAMHeXxNuqjfkdoJ=pLLjbv60hzqx6cT1EzegX0ryAeYTBa9vdA@mail.gmail.com>
 <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
 <CAMHeXxP6Mam1KL3p0R3yBe0gdBj931RwUNe_M9sPV6E8NVsy+g@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <CAMHeXxP6Mam1KL3p0R3yBe0gdBj931RwUNe_M9sPV6E8NVsy+g@mail.gmail.com>
X-Provags-ID: V03:K1:dIk0kc6HF8bBfAFrQot2G28HgdR9zADzUfOJf5pwAyY4csvN0rx
 u0mecc9X/CVFUjkJk41wzsCicu1nyT5ncWkWVuziV0DPhMPBKK8DuHiPeHlVK5LmO4RMDca
 E+jSyEqd90aMsC2X4iJj9YsXd9irMHtEyM+xFwY236pgpMWnCerLtwtLVSYtvjpYLJYpj6+
 Aq6db9JYsyzjX+GGTusWA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:1LXozb4kbdg=:jo8A+N5dJOkWcmS1mnHVT2
 /89DtHglqR6BUe+wnAmG0K6hCsfaTUmys6pU5ioCeWfao5T2JkT2fVQRksgXTZRnn9/vYZcYo
 +1xyZUzSuOJca9NNITMheJXZ+srlwwTN60jGApIu9VPai/fbqwtkPB1WZf/BBccgSpL7UJ+7L
 GR5HRBME+66l8ICc4t3GTl9JV9xCiOavh5ekmT+69nUGKK6uaezhF6U+M35j5U3xp5hL1F4ul
 blsX1dL4c8djk3V6bz8B5Q4TBjuhQ6VBsjcoOTMBCwCsYVWR5FyLjuBIv16ortpo6O0XnIwnz
 tdAND97BHSl6/aI+9mHf+ZMIm2aCMG4OSPBGbiulkyOsUApCDArQ5Tv6uUi9yqPE7He5r9IvE
 j0wKhVV8WYFwRQbVVBGqLCBpVsALwaUlbntiOgA7AXzMw+buk/ZhELt4sVfDCCygnrdutv/zu
 Xhh2iR+ChRiABZmnD+6VrKqBIld+GLy/ZIfJp+0leBYSpBvD6MQJA4DCPFJnnJzUQInL6VvBS
 beUmyKM9asd4RCZZ5W0OYZjSHQE0ux0uGUqACmQH//KCEe5iZdoD78r5AgPak9iDgc5svDw9T
 3dorTa/Ud0mk2CXIrQXNC9kcd1nWLOboGYt8MQOZ+4UmDSdSanR/28+H09IHqOnvh4en1zSkn
 unC5/NH/T581CRWYwDvGJnZHhi+Z+X2DoU1FTn8lS38IVOiEJjDDy0iS6CgReYM+VRbzHT99K
 boLb7fERZJlkK7IWLwGbWP7AC3QT4HLNBosbDhmDFgqAndNqQG7ihk3bVoYmrI+OMRKAacs3Z
 +JYSb6BYks0HSNT6l0hUEEZO10KICNC0kUDy4HHVc6/hJ+n/JsnSKwSUtk8boIA4AJhEAjz1A
 n7O7BoeQBo9YiPbH67fedAC4FyJDSF95wcDyqarlecEaYHzsd4TmRYIIdRoMU4lXPGw9WFRCk
 Cq1EPLUG5drVBykpLaJIcw8Ox2UGOWPCeVUBFOSXSTIJFcFjXZEuERcE4VN+X0O7EYls9UHgZ
 qhqMbd8qmItbWpGL/HBiTxCdDOq3U5+jnQZqyPs6ar74spUyQv5T9wSHU9W4mZxGl51aNpayf
 8L0ov3RMu+GFYg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_080044_120889_9156EA41 
X-CRM114-Status: GOOD (  36.37  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 10.04.22 um 11:28 schrieb Trent Piepho:
> On Sun, Apr 10, 2022 at 12:41 AM Oleksij Rempel <linux@rempel-privat.de> wrote:
>>
>> Am 09.04.22 um 19:08 schrieb Trent Piepho:
>>> On Sat, Apr 9, 2022 at 9:02 AM Oleksij Rempel <linux@rempel-privat.de> wrote:>
>>>>
>>>> In this case driver will set some default values:
>>>> priv->tx_delay = used cd;
>>>> priv->rx_delay = 0x10;
>>>>
>>>> No idea what this values mean.
>>>
>>> They are supposed to be delays in picoseconds, but sometimes driver
>>> authors are lazy and just use whatever goes into their device's
>>> registers.  That creates a dts binding that only works for one
>>> specific device.
>>
>> According to RGMII 2.0 specification, delay should be 2.8 nanosecond or 2800 picoseconds. None of
>> used raw values fits to the specified range.
>
> As I understand it, there are also delays due to PCB signal routing
> that might be significant enough that they need to be taken into
> account too.  Thus we have standard properties like:
>
>    rx-internal-delay-ps:
>     description: |
>       RGMII Receive Clock Delay defined in pico seconds.
>       This is used for controllers that have configurable RX internal delays.
>       If this property is present then the MAC applies the RX delay.
>
> This is for the MAC delay, not the PHY delay, but you will notice that
> it is in fact in picoseconds.  If the value was always 2.8 ns, then it
> could just be boolean property to enable the delay.  But it's not,
> because the delay is not always the same value for every board.
>
> Some drivers will not use this property and will make up their own.
> It will probably be whatever is written into the device registers.
> Others might use vendor specific properties in picoseconds for some
> reason known only to the author, e.g.:
>
> mediatek,tx-delay-ps = <1530>;

Just to make sure, we do not don't talk past each other. My point is: most of rgmii specific
information in many devicetree makes no sense. And here is my explanation...

I assume you used this example:
arch/arm64/boot/dts/mediatek/mt2712-evb.dts

Why not use more of it?

         phy-mode ="rgmii-rxid";
         mediatek,tx-delay-ps = <1530>;

         mdio {
                 ethernet_phy0: ethernet-phy@5 {
                         compatible = "ethernet-phy-id0243.0d90";

First what we see is:
- rgmii-rxid is used, so PHY will configure RX delay to some value.
- tx delay is configured by the MAC.

So, we have two options:
1. board design is very special and all RGMII traces except of rxclk have same length and the length
is ~10cm longer then all other RGMII traces. This sounds as very special design and it sounds not so
realistic.
2. there is something special about PHY and/or MAC. this one is more realistic.

The PHY id is hard coded, so we can find the datasheet:
http://pdf.eepw.com.cn/i20090903/8d594ec98b62289dd0d3cd17fc8ffdd1.pdf
Page 46:
Ts3,
- if TXPHASE_SEL=0, then clock is shifted by -0.65 ns
- if TXPHASE_SEL=1, then clock is shifted by  1.35 ns

Td3
- if RXPHASE_SEL=0, then clock is shifted by  0,4 ns
- if RXPHASE_SEL=1, then clock is shifted by  2.4 ns

It means, if driver supports rgmii-id, the PHY configuration will be out of spec. 1.35 ns delay is
not enough. Ok, so designer has two options:
- combine two delays: rgmii-id + mediatek,tx-delay-ps. In this case by review I personally would
ask: why?!
- or rgmii-rxid + mediatek,tx-delay-ps
In any case, both options are OK.

So, why mediatek,tx-delay-ps = <1530>? 1.5 is not enough for RGMII.
In case of rgmii-rxid internal PHY clk skew will be -0.65 ns. Hard to say, if it is typo, but 1530 +
650ps will be 2180, which is enough for RGMII.

This make sense so far and confirms my claim: most of embedded boards have nearly equal RGMII traces
and there is no need for fine tuning. I doubt that that provided delay information is a good place
for the board specific device tree. The delay calculation could be solved between MAC and PHY
driver, in case both of them would provide needed information.

I can take apart many more dts files, but the result will be in most cases very similar. There is no
good reason to set this information in the devicetree and many developers are making mistakes by
copypasting it to other boards.

> You will notice in picroseconds and also not 2800.
>
> When delay is controlled by the PHY, then there are properties like:
>
>      - rxc-skew-ps : Skew control of RXC pad
>      - txc-skew-ps : Skew control of TXC pad
>
> Also in picoseconds.  A search of existing device trees will show it
> is not always 2800 either.
 >>
>> Normally we use phy-mode with predefined values:
>> - rgmii == tx/rx delay is 0
>> - rgmii-id == PHY configures tx and rx delays to closest possible values to 2.8ns
>> - rgmii-txid == PHY configures only tx delay to 2.8ns, rx is 0
>> - rgmii-rxid == same as rgmii-txid but for rx.
>>
>> Using raw values or fine tuning this delays makes no sense in 99% cases.
 >
> I agree today, rgmii-id is the normal configuration and usually works
> with no further modification.
>
> For a new board design, I think running though the delay test is a
> valuable part of validating the RGMII design of the board.  Just
> because the 20 prototype boards all work at room temperature does not
> mean the million you make afterward will have a 0% failure rate over
> the full spec temp range.

Good point and it confirms my claim: this information should not be set in the devicetree, at least
not as delay. Instead we probably should use trace properties. It should be automatically calculated
by drivers and in your example, automatically compensated by the temperature. Especially if we are
talking about temperature range of -50 to 100C

>> As I already said, except of delays there can be other issue. For example:
>> - incorrect pinmux configuration
>> - incorrect RGMII clock source configuration
>> - incorrect MAC or PHY mode configuration (xMII instead of RGMII)
>> - incorrect reset or power up sequence affecting proper bootstrap configuration.
>> - incorrect MDIO configuration, for example CLK rate outside of range supported by the PHY.
>> - not properly configured SoCs internal clock dependencies.
>> - some missing "enable" bit on the PHY or the MAC side
>
> If all one knows is ethernet doesn't work, then I think all of those
> problems above are more likely the problem than a need to fine tune
> the RGMII delays.

ack.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

