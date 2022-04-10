Delivery-date: Sun, 10 Apr 2022 09:43:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndSDy-00E1xE-4N
	for lore@lore.pengutronix.de; Sun, 10 Apr 2022 09:43:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndSDv-0006bW-Co
	for lore@pengutronix.de; Sun, 10 Apr 2022 09:43:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0WmNHK2k7ReHkqnnTmV29iJzDg4VkZR/YCDvv6qWik=; b=hClcVORYjpnfKG
	xvMO1Y4AqRZOf0AZYwPKl9bCTClAohANoUsow3izMVOO0thWfhvVVu8kECfMejWmSlVq8UfkK24cb
	UBAvROqBYBq8aPlKYUSSoDe0CCv0XTpQnqmNKKy6T+POm/c3er/c6mXfEhSh/LITJd33PoLICT/4Z
	ZN1MipGzz3xVB2XEQH7zqlWfanylEJG6gdnzN+mdEZ985QBOhHUZs8Eef7VEeTq8KXeEOaeE6lDiz
	8KaAKcPdxRVH/NzUp19UWsEt4h5rSluB++RbpPMqxb4FjxGdjyBayN7UZYHs9cn5zCGcbZSxJtWht
	oFBzJrk2ecR9IMoHKUZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndSCH-004PTG-RK; Sun, 10 Apr 2022 07:41:21 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndSCC-004PSW-FK
 for barebox@lists.infradead.org; Sun, 10 Apr 2022 07:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649576467;
 bh=nPoT4svBjI2T/CZvhgBwSZ0v3/DfDMJKh64SONtxBTQ=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=E9NELgYj+klHvsaNR6ooo+qj41ntMywjoL14pGZKPIAVSq3qvH2ffXn8nBS8vYs4o
 psymf55U2AWzv+vBkQghEBxVFzZfQbds36k+BR94aKuvoY3gjAwrc2vE4ucrj7561j
 ZqWWRP4okH0TnlRRV4zA8Bzymt10VWvV3tSIseYA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.86.95] ([95.91.192.147]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MWici-1nSZBb265w-00X6gD; Sun, 10
 Apr 2022 09:41:07 +0200
Message-ID: <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
Date: Sun, 10 Apr 2022 09:41:06 +0200
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
From: Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <CAMHeXxNuqjfkdoJ=pLLjbv60hzqx6cT1EzegX0ryAeYTBa9vdA@mail.gmail.com>
X-Provags-ID: V03:K1:4nK6xe10W575RJ7kQ5i+RwhNSPpvWvO3IrwQN+cKhxadEj1DRZL
 iFpJlCPwgNxV6pYCTWPDAsCkwblUxVYJPI9k0G9cRTixgCMCIavWSxLEUXKYQ6FWQP+F8PC
 xAlykP+qYqtLAAnPcujrJyAS90TRoccYDbMLZhMoVqFUa9OI/ihdm+1Kovkhjn2/fsgD8Tr
 yu9sDQZfkzCtE0+vrAsKg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:k/uZHPizwT4=:Y5gIxhLpWt5miY4URztbZ7
 PJzi771xQbqfHf9/yjGPYBAFqCcItZMG0EMBBMWYOFlEOp9n2hUqi0fv0swQrMwS03PUQ7THd
 IGz5gxSMqUQbAL0+VJEXVrPB6170IfMGVw8iy0dHYJznRLdq9gk44QqlRscLGxrKZ/L1YVoDP
 04ECC/TArwxB82sy8G2Xp1ztmysRdOaVHVfmncIJRVGHwo/XwlZZ2taEEHn6Q11rPCyIfv5c+
 HiGb4Gk9VWy5/TZe5bL7l5jqey9cegMKZhxSPFXZNN/OjsgBfiDgR229gRLiH6ngMVOFL53I3
 ZU17oqnNL0Q5rBJlTu7mQmqYEZkFVtq+lGyZUiJaZ0U8IoKX+2JBbFikSEQTHOGE6JJakJ/+f
 +6XJ6K18oQeMGEC4SXkcKEGH4/ri5nOGE9/UILZaos5bdjE2A1FMjyzTL1wn0NoZDazlogvXx
 nkMlm/3DUgzUEIyzQsoW/nQIl2BbbMx11BvtL9BdDbUonN61t57SyDJZCXB8QA/iJ7FZl4/+o
 hxn/LJPjcSSjMzF954gy2//h0Zz6MdC4LFJFAN3Utz1upn+I9AsAt81Hc7iU8agasqfEYG/SU
 GiJRS0xHD4n5M5Z298hEHglenFL1+SfgXpaniOhj1o/2u4HqJToxqLXerOLYaEYv4q/tFYk/E
 Ht4aHUkNFdj4HeZ3bRn+St/43nKmXX8nnIP24ytDk02kCrenoPZF8g6KkTRdO3C1T9l8LhY0R
 wsMG32yHQO+9VtWF6jJ7YKw0DSlO8YaS37gneNB3zzx0oR8HRbIU6/Vehtluk6GK2XDFg07zw
 jI+PL1qsQqS4SjNG3TUPQq0Fc9y/PFF9IHEuQX0OFv2JSoxRVrqLZNVe+YtiVrlrnPkv9uSN9
 ot1muARV5u8tCn3bU78GQZFDrHKXhkJbIAcewEWMp4c6w4VxhBp4yYdyWstdh1xbi9ilo6gTb
 TCA86v8ANIQ6/cPK90W45wR2aGw5O88wuARG+YeDimXU8BZlF2+9g8tDCDf7l0oMtFjPq/cSm
 QYqZvU2DU2BJDZDguB1D472ryoF2AJ1bYZPeB8iyPU7RpwISmvWTHaWEBSHlbrD7ThGTphhIg
 Grt4FgNWTeGTv4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_004116_847246_D2C20789 
X-CRM114-Status: GOOD (  19.27  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 09.04.22 um 19:08 schrieb Trent Piepho:
> On Sat, Apr 9, 2022 at 9:02 AM Oleksij Rempel <linux@rempel-privat.de> wrote:>
>>
>> In this case driver will set some default values:
>> priv->tx_delay = used cd;
>> priv->rx_delay = 0x10;
>>
>> No idea what this values mean.
>
> They are supposed to be delays in picoseconds, but sometimes driver
> authors are lazy and just use whatever goes into their device's
> registers.  That creates a dts binding that only works for one
> specific device.

According to RGMII 2.0 specification, delay should be 2.8 nanosecond or 2800 picoseconds. None of
used raw values fits to the specified range.
>
>>>> I would suggest to take an oscilloscope and measure rgmii clk and data lines. Make sure it is using
>>>> correct frequency and the clock skew (delay between clk and data)
>>>
>>> have no oscilloscope here as i'm a private person and do this as hobby
>>
>> i have private oscilloscope, no idea what to answer :)
>
> I also have a scope, but mine does not do picoseconds!  Those are expensive.
>
> What you can do, is just write a test program that goes through every
> delay value and measures how many packets it was able to send or
> receive.  The success rate will probably look something like this:
>
> 0% 0% 5% 99% 100% 100% 100% 100% 99% 0% 0%
>
> If the first value is for delay = 0 and they go up by 1 , then
> probably delay = 5 or 6 is the best value to use.

Normally we use phy-mode with predefined values:
- rgmii == tx/rx delay is 0
- rgmii-id == PHY configures tx and rx delays to closest possible values to 2.8ns
- rgmii-txid == PHY configures only tx delay to 2.8ns, rx is 0
- rgmii-rxid == same as rgmii-txid but for rx.

Using raw values or fine tuning this delays makes no sense in 99% cases.

Since the PHY and the driver, used on this boards, supports internal delay configuration, it makes
no sense to spend any time on this kind of investigation for this or any other board. All embedded
boards would work with "rgmii-id" and no delay on the MAC side. Which should be default MAC
configuration without additional device tree properties, except of buggy driver or MACs with
integrated not configurable delays, or boards with insanely long traces for rgmii clk.

As I already said, except of delays there can be other issue. For example:
- incorrect pinmux configuration
- incorrect RGMII clock source configuration
- incorrect MAC or PHY mode configuration (xMII instead of RGMII)
- incorrect reset or power up sequence affecting proper bootstrap configuration.
- incorrect MDIO configuration, for example CLK rate outside of range supported by the PHY.
- not properly configured SoCs internal clock dependencies.
- some missing "enable" bit on the PHY or the MAC side

Even if you don't like the fact, that for most of this cases, scope will reduce dramatically
investigation time. I'll need to repeat it, it will help to use the scope.

--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

