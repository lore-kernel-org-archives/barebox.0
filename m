Delivery-date: Sun, 10 Apr 2022 10:30:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndSxj-00E3Z6-2o
	for lore@lore.pengutronix.de; Sun, 10 Apr 2022 10:30:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndSxg-0002eS-Az
	for lore@pengutronix.de; Sun, 10 Apr 2022 10:30:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXPFVK2LIvSDa1evcN3pesJpk8R2pMOX+5iGcBO8HwU=; b=dd5IACd16eV5zZ
	IjZUgcdM0nFIW8C9zZBjwVlz+Q/38cTHS2oEEvs28fgsafPyJhIIoiCc6Xf/iXLnzvoZwUTJHdGUA
	Tk6AmtSBXYAGUkBgOWbhqbN9CSQWp390cbYdDjTxuFCBNiDkjAaES63vyNqkJhoEiZGw9mBx9OfI4
	Wfe2ZeaShUOaRbYSBXdKX9Cqnnb73TxesPi1hvj7UXMC3moaQ6o3eNWi3F9oSrxl0TBADVcrDn/4g
	41rn7oHyPfjnvVSzV/i5OM2pcTRdeGVH91Ia27tCjBNsQbP4VoBxLZqp3cdEoPirqThkRXPzUc8hE
	/U7hEsxzQdqZ5UiDE+eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndSwD-004UuB-64; Sun, 10 Apr 2022 08:28:49 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndSw8-004Usw-CZ
 for barebox@lists.infradead.org; Sun, 10 Apr 2022 08:28:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649579317;
 bh=+ZAPX19X5gIYuQD5H8TSw/vpnYv1yvWXDHEsCQVFq8o=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=lkqbgdzbO2dGFB6nEvh1PLHFN2+6tz1P5ghKsXV/IpJ21vLUC2RDJAtVFyerZxnyd
 PQ9pQjXImcFmPCyepqfm6JLICHcnxQC1XYXZaYTpp9Bp+zs+mloZm/6dworvys/b5I
 sCaEC1+4rXUGT0Sdv6979lJgu+YNGIZImclCR9Qk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([217.61.146.192]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MOzT4-1nKp5N2U3w-00PKqI; Sun, 10
 Apr 2022 10:28:37 +0200
Date: Sun, 10 Apr 2022 10:28:36 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
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
MIME-Version: 1.0
To: Oleksij Rempel <linux@rempel-privat.de>,
 Trent Piepho <trent.piepho@igorinstitute.com>
CC: Ahmad Fatoum <a.fatoum@pengutronix.de>,barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <272C173E-3A56-4739-9586-C542E16C242E@public-files.de>
X-Provags-ID: V03:K1:ppw9HekMYvfZ0ZR7vkORfTmODWZcFeOHLh8mP3f3YOMp/a/g2zv
 irt3o7QWreQCkfcpuweEIVbLrkutwnFrOPkZlJ6AfCrPJh+xzBQ45auQ7MRUhV+TDGmf+5a
 DvpB53kr89IR3meNRNWAMejOXfiJr9IBa5IJdgg3kFH3Jru65ONkdwPzuuX/zRwnyybBCo/
 ZLdL4uIFdPM8ih2cRHK/Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Zb2IEGPSgTQ=:Fe9d3meliMT9wOp2btcGJc
 XJlk9Ee66guP2YdtyFU8fP5+iHMr5aeQVvPGd800OHUSRuWG3Q48+USoUGEVd7YryzUWJ+Rbg
 FkZuLhlJL6NUPsnmMWO/WWDLRk8LfQCHNGQrj8Gngc5Bp1T1A+thohXYU5u3wmLXMHHTNa87N
 8LNBfB7ry3bhp/5yXERJIWeK8E7co63YoX/Ib2JuITiwH9tex8ccsTrv9iCvXMaNCMm2siQIM
 mKHhaboIYY0Mir1QPxhR9O2n0E0YXTaPGuFz8zyJAGe7VEzN/u5c9rS3ry4fW6Q4JzjKKS5AG
 6dC8arzZLtrMqtSJIZKlm4gCQ4qD3zLJ4lvTcRXU7My9xCj8QA3HqqP/ZZQXuRbqD1plCgxbw
 Dgf4o7aHTcnAzah3doWCX64ghAxbZjDitss+0/9dnF2RWLccGHYct/cwJI68Cnv2oAFT04x3B
 01SyABErT9vz35cjttRaOUzP79MOsl5ccPBENi8MlWVr8RBEbz0ZPPcWqVYMyLLqB9wBHYd4G
 gqkc5g7bDB9Gub1k5E60Yi6rhpgafr/yegnb3xnpDEPxo+Kxi5N0f59idZlblxgyabpe6sXcH
 UTpDq1wdywbfscysADs0u1DQVwNHielwukTh4Hs7gl/Gi8Z3ZUm3HgMuba3vae71e07pToofJ
 2+RubVi+u/A6o8nvtYC3XLi0VRc5C8rnb3i1nm5VYr2r8oZgC6QL3QguIfuL40z22/5AidRun
 RH2JOhHUnUCXdtO60TrbTF/puc0Du1U3bTBsfxBYGE5RZUYkx77P2+/d01calsjk+WGUYbhH5
 CVqXU/wa7A4PCkKn9RpagJyvcNEK+Z4fWCjSLneaahr3Yag70Z3YcvWUtR2abK41I0Uit3Par
 C8V5uxPSiQv2G19RxD6iT6hFARksmiRpm3hCNrWEXoWI6aokjYGBLQoajpqmxsB8P0I4wC7i2
 ayKy9qH4swdW3gJ0A+2p5tLHaoqagZbSoCwSAhrdol9I1xlF8uxzY3Y4azj8Z9j+9YduFsL1t
 N3Wk56uRDyHVs5sIWdvoOWJPoklpzwpzs2lyh3DhJwbMlDCaTmWgdm9Vb9s78IXIfcVDtNvxV
 y1VdR3qxniv1jA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_012844_763408_E742AE40 
X-CRM114-Status: GOOD (  14.80  )
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

Am 10. April 2022 09:41:06 MESZ schrieb Oleksij Rempel <linux@rempel-privat.de>:

>Normally we use phy-mode with predefined values:
>- rgmii == tx/rx delay is 0
>- rgmii-id == PHY configures tx and rx delays to closest possible
>values to 2.8ns
>- rgmii-txid == PHY configures only tx delay to 2.8ns, rx is 0
>- rgmii-rxid == same as rgmii-txid but for rx.
>
>Using raw values or fine tuning this delays makes no sense in 99%
>cases.

So i need to disable the delay-configuration and set rgmii-id. Do i need to set only on mac or on the phy too?

https://git.pengutronix.de/cgit/barebox/tree/drivers/net/designware_rockchip.c#n117

Set flags to RK3568_GMAC_{R,T}XCLK_DLY_DISABLE and disable second regmap write. Board has a realtek phy which is defined in dts only with this:

&mdio1 {	
rgmii_phy1: ethernet-phy@0 {	
	compatible = "ethernet-phy-ieee802.3-c22";	
  reg = <0x0>;
	};
};

https://github.com/frank-w/barebox-r2pro/blob/b13021268148954a59682620ab284054b25448e4/arch/arm/dts/rk3568-bpi-r2-pro.dts#L373

Can i check if the phy is recognized on mdio-bus and initialized? I see it in the devlist,but not sure if this means that it is completely initialized.

>Since the PHY and the driver, used on this boards, supports internal
>delay configuration, it makes
>no sense to spend any time on this kind of investigation for this or
>any other board. All embedded
>boards would work with "rgmii-id" and no delay on the MAC side. Which
>should be default MAC
>configuration without additional device tree properties, except of
>buggy driver or MACs with
>integrated not configurable delays, or boards with insanely long traces
>for rgmii clk.
>
>As I already said, except of delays there can be other issue. For
>example:
>- incorrect pinmux configuration
>- incorrect RGMII clock source configuration
>- incorrect MAC or PHY mode configuration (xMII instead of RGMII)
>- incorrect reset or power up sequence affecting proper bootstrap
>configuration.
>- incorrect MDIO configuration, for example CLK rate outside of range
>supported by the PHY.
>- not properly configured SoCs internal clock dependencies.
>- some missing "enable" bit on the PHY or the MAC side

I more guess something like the last 2 is the problem as the delay-settings work in linux. But have not completely understood all parts. Imho pinmux is done on usage. So if i use

pinctrl-0 = <&gmac1m1_miim 		 &gmac1m1_tx_bus2 		 &gmac1m1_rx_bus2 		 &gmac1m1_rgmii_clk 		 &gmac1m1_rgmii_bus>;

The pinmux should be set,or am i wrong?

https://github.com/frank-w/barebox-r2pro/blob/b13021268148954a59682620ab284054b25448e4/arch/arm/dts/rk3568-pinctrl.dtsi#L705

Afaik gmac1 uses fixed 125MHz clock (it came from cru like gmac0) as clock_in_out is set to output.

assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;

I basicly use the config from linux,which i had mostly taken from vendors repo.

As the first version (used the other gmac for wan-port) worked,i guess the phy and mac driver is right. Same for clock driver and constant values.

>Even if you don't like the fact, that for most of this cases, scope
>will reduce dramatically
>investigation time. I'll need to repeat it, it will help to use the
>scope.

I have none and if i'm not sure if i can trace it right because it's decades ago i made something with one.

So i search ways to check it in software as far as possible. Maybe there are ways to read out registers to check if phy is available and compare values with linux.

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

