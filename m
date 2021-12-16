Delivery-date: Thu, 16 Dec 2021 20:43:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxwf8-008isD-Lg
	for lore@lore.pengutronix.de; Thu, 16 Dec 2021 20:43:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxwf6-0000i4-Dx
	for lore@pengutronix.de; Thu, 16 Dec 2021 20:43:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Z9uRRrC7sOkm9WUpp46I/jFFcpIUAWezOEwHPkSwTU=; b=fL0aKPQqbzFRfKH4Sa61I+tZxO
	dh01XjYnuCu+64puFBAmPywfqEVo1M2oYWuFeCbRxb/PEuTTeZBacNzr309ML07xpDeeyi00z+ZF+
	33hCN4gXpfCzbA4sBDERpKJvppyq6lv6dqYmauC0EAxgOaPcUB+T4qvNzeaiFfl93ryWAZ87zfE1C
	r187WQJrKkf0nO/effEvwCIeqhSM51h1w5H6qtQR+WbDM0/jMo/3ZGG228+us80mEQhrW3eKHxkYf
	Q20SXT6nAuPAcCBhpoFJc7V21urWXa0JgrJsQg2Y9Q2LxqGM/jPzHPnUFypjY+lYIurdZboVtEnHU
	mvIW39Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxwdp-007Mxe-NJ; Thu, 16 Dec 2021 19:42:13 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxwdj-007Mwd-IL
 for barebox@lists.infradead.org; Thu, 16 Dec 2021 19:42:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 3C70640253
 for <barebox@lists.infradead.org>; Thu, 16 Dec 2021 20:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639683726;
 bh=LT5y3rh6YRfkfAY30jSo1wjsu5uBIvglY5BBY64ySng=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=mnTLvM4x58CxbITv60+9uIytDOwn4Ll6NzzpkCwD1FA5CuNoPTHZrjaSVe7M5dVod
 +T5fFkRVTey+8oNCNdwWrMdpCT7aKOMWiYtvoYuF6LfFXLVoCmg8X9AmDJ4yLYfmY3
 mtoh6UulOGzzAQEuhphjF/boDPO0btc5QDVPYKiQS0/Rvb+jDHVM79MgNsPTMlxKv6
 nM63mhhSiTdQ6+tPMSTa2qjGqmQdBxyRyND8qOKeDlEsajUx2QR48H5zMtc/RRV7QB
 rLWp2AOo62JpqcQQFtL2DpJlWcCwt1pDSEdjTjI41B5WepmVefJK+tEDWPMwczwgMz
 5Qo/mJ9bxLuWw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U9vpVaS2EdGG for <barebox@lists.infradead.org>;
 Thu, 16 Dec 2021 20:42:05 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id B524740073
 for <barebox@lists.infradead.org>; Thu, 16 Dec 2021 20:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639683725;
 bh=LT5y3rh6YRfkfAY30jSo1wjsu5uBIvglY5BBY64ySng=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=IQDRgV1UA6hd/kUkzEQmgM5Wrg90/6sDGPa/bIeedvcuABixK32rFI9D7G/8b+yzv
 tbTAoawuCK8LwJH/h4oWbrg1e8yw1h94kSgb5942POX8bObfJoeyymsx0/h6YL7NpA
 kl/PwMPiI6N7vW/1filP85j0V1+5p/ZJQsIHOd5H3FB4vJeoxOGKeP5AMl+X4n/Yyj
 1uwYB9VzTpte1NT9C2uqyqUmiphIcZBsN98TDjGSjC1XV66RINiBgsDTHSEUgMaX/F
 UoVvy5DtXtHf7ICZb3lxkMHJkjQoUkcI+FGWIkg4kyrHeBqBbmYQMVyI5PFgRo79cS
 VIXBftyg+qccA==
MIME-Version: 1.0
Date: Thu, 16 Dec 2021 20:42:05 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Organization: Inside M2M GmbH
In-Reply-To: <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
Message-ID: <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_114207_948028_B9A85743 
X-CRM114-Status: GOOD (  33.22  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Fwd: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I forgot to address the ML.
May be somebody else is interested!
:-/


-------- Original Message --------

  		SUBJECT:
  		Re: Howto implement bootchooser <-> rauc interaction

  		DATE:
  		2021-12-16 19:24

  		FROM:
  		Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>

  		TO:
  		Ahmad Fatoum <a.fatoum@pengutronix.de>

On 2021-12-15 11:50, Ahmad Fatoum wrote:

> Ye, DT here looks just like arch/arm/dts/imx6qdl-phytec-state.dtsi

I think you are 100% right. It is borrowed from
https://bootlin.com/blog/another-system-update-adventure-with-rauc-barebox-yocto-project/
and I thing this exact file is displayed as an example there.

> This is fixed in Linux upstream since 0445efacec75 ("nvmem: core: skip 
> child nodes not
> matching binding"), first included with v5.12-rc1. This has been 
> backported to older

Okay, this information is extremely useful. I have seen your intital 
patch series but was
not able yet to gather information what commit in what time relates to 
roughly what
kernel version. So I am involved because I have 5.10.1n here. I will 
check to update
to a newer one but do you have a backport for this available by chance 
for 5.10.1x?

> The parent node has #address-cells and #size-cells, which describe how 
> much 32-bit
> cells are offset and length. For #address-cells = 1 and #size-cells = 
> 1, X is offset
> and Y is length.

So one has to take care of the parent note size being big enough to 
contain the sum of
all length and thse itself must not overlap, right?

>> What me bugs more is, how should a devicetree setup look like (is 
>> there a reasonable example?)
>> to make the same in a file in the first FAT partition, is this 
>> possible? In the state specification
>> I read it should be able to be done by a file but ... I don't get it.
> 
> I can't follow. What do you want to place in the FAT partition? The 
> state itself?
> The DT describing it? What bothers you about the current setup? (DT 
> description
> and state in EEPROM).

I am sorry I did create confusion.
I did a mistake somehow. When I have the EEPROM setup up and running 
(may be tomorrow? Always other
work looks more important) this was only for me to understand 
barebox-state fully to
work with this for production use later upon.

Because the mistake is, I _totally_ forgot when in production the 
Beaglebone Black I2C EEPROM
is write protected. The EEPROM's WP pin is hard pulled up on those 
boards with no chance
other than solder a wire to the pin to ground (against the pullup 
resistor). I forgot,
my daily work golden example has a wire but we sell so much that I must 
avoid using
the EEPROM because I cant solder wires onto every BBB.

I need to put the state somewhere else, into the MBR, before partition 
table (1st partition?)
or I need to find some NVRAM elsewhere on the board (PHY, CPU...).

> You can place state in EEPROM. It looks very similar to your snippet 
> above,
> but your backend partition will be a MMC OF partition.

> That's indeed a bit rough around the edges. You can keep unpartitioned 
> space at the start
> of the MMC device and partition it with OF and have regular MBR/GPT 
> partition start at
> a later offset. barebox will warn you if they overlap.

So state in MMC will be an OF partition which must or be covered or 
overlap with MBR
partitioning, right? What does the "OF" mean?
On the other hand I am shure in MBR the 1st 446 bytes are available 
because the TI am335x
CPU is ignoring it while searching for a bootable flagged FAT and loads 
BL from there...
On the other hand, I could access plenty of space unallocated after the 
MBR if 1st partition
starts at a late sector like 1024 or so.

And what I understood from the examples, documentation is how to access 
exactly what byte
in an EEPROM, but how do I setup and access the bytes at 0x100 to 0x300 
in the MMC at
mmc1 interface or the bytes 0x1000 to 0x2000?

And is doing this state thing in a file (for example on the 1st  FAT 
where barebox.env is)
for barebox and raux/barebox-state possible or not?

> For devices with an EEPROM, I'd use EEPROM for state over everything 
> else.

You are right, I will search for some place rather than the file or MMC 
thingy because
i chose it because it looks most convenient, but as said, Write Only in 
produktion.

> If your only issue is the kernel error above, just import the patch
> (or update to a newer more shiny Linux release :-)

No, no problem with either updating the kernel or patching it, the 
latter is at the project's
state actually more convenient I - admit.

HTH.

Very much, thanks for your friendly elaboration :-)

Regards
Konstantin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

