Delivery-date: Fri, 04 Jul 2025 17:10:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXi3Q-00E1mN-2j
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 17:10:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXi3Q-000713-AT
	for lore@pengutronix.de; Fri, 04 Jul 2025 17:10:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uS5JTaLwJ1AiLxf3BZIynqfN90ZQ/8GEwgBoWENY4NQ=; b=h1pSKiPmSeMnp5
	7KSUA6xxxf61a3SI3al1DwZ+gFXn0QlYJhzxMbcEQAkon7WelsiwfYq490D+Gi234wwhHC9kAeNqR
	y7ap16dg72Pay+HzD+YPmZZWQk8WbsO5wtLEAJbs2mZDmdCGNY8/dPCVvpdY5d6I5x1ubxWbsU8qA
	Lnf6WwKvZqQC4egYiXaagmg6ZoQDE5v1jEUiDhNTVLijav/Lmc1wQo5E/P2kfbrF+2C+s9seIj6Hh
	w9ZWVW8deZULANH0o5d+hPEzgdQnvGHBGiRh6QKVRAxL4EAE//bcmPzPurrI6Ps1QX8ncxYgk3+PJ
	5ouH701WnnenL9+OuPHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXi30-0000000Em0Q-0XI9;
	Fri, 04 Jul 2025 15:09:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXhpb-0000000EjcO-2CKG
	for barebox@lists.infradead.org;
	Fri, 04 Jul 2025 14:56:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uXhpa-0007Ah-4y; Fri, 04 Jul 2025 16:56:02 +0200
Message-ID: <c4307832-408c-4508-aa7a-46a448dbfe5b@pengutronix.de>
Date: Fri, 4 Jul 2025 16:56:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>, barebox@lists.infradead.org
References: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_075603_565698_24356DCA 
X-CRM114-Status: GOOD (  13.89  )
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
Cc: johannes@gnu-linux.rocks
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: MMC prepare for zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Gwenhael,

On 7/3/25 09:18, Gwenhael Goavec-Merou wrote:
> Dear all,
> 
> I'm trying to uses my zedboard with barebox but can't be able to boot this.
> 
> According to mails found in this mailing list I have done this sequence:
> 
> export ARCH=arm
> export CROSS_COMPILE=$SOMEWHERE/arm-buildroot-linux-gnueabihf-
> 
> make zynq_defconfig
> make -j$(nproc)

That looks correct IMO.

> And copied in the first SDCard FAT partition:
> - images/barebox-avnet-zedboard.img as BOOT.bin
> - barebox.bin

Which binary is barebox.bin?

> But I have nothing displayed through serial port.

Two things come to mind:

- The Image is 184K. Does the Zynq enforce a maximum limit on the BOOT.BIN?

- Does DEBUG_LL produce any output? For details on how to configure
DEBUG_LL, see the troubleshooting guide I just Cc'd you on.

> Are there somewhere details on how to prepare SD Card for a zynq board?

I haven't done work with the Zynq 7000 so far, but Lucas and Johannes
did. I Cc'd them as they may be able to give some tips for troubleshooting.

Cheers,
Ahmad

> 
> Thanks
> 
> Gwenhael
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



