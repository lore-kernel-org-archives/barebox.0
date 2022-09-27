Delivery-date: Tue, 27 Sep 2022 19:44:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEdK-00GigG-GW
	for lore@lore.pengutronix.de; Tue, 27 Sep 2022 19:44:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEdJ-0004Ek-11
	for lore@pengutronix.de; Tue, 27 Sep 2022 19:44:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Di8v5k5PKWlqN6fgl1xc7MKIBp0XimXV0Gz/cxAjHHg=; b=D+6KC7dY32BSWJEJNJHiXc8cEf
	W+OkuQ1eZQFshtK8E55moIQsAO7gybo+Bm9MhoEVF/QkapgdEBBq+0uVE6GKLu9p4U5Um1OV3BdMh
	mluYSOms3CbPJP+SuEkz8ZV6ZdwATs9PJMKfvFud3CcSHSTuMu4u9xptKR+l2Z7y7qfaQgUdFOF2p
	w/TMVd39gfGCHVMaMq9NSoUcCtytUKk0tDn33fRh4humbqoPCc1OgoBSd1CnbzFaXMeKUko6vXYSN
	/5faEWfk14rR/aerK1WaHaSYRaQ0+mMaEVswcrMffJxAV5c/LwrPYLhpCPzJ6HIevz4SSMYUoPvon
	7y+LzE6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEbr-00C0iJ-AF; Tue, 27 Sep 2022 17:43:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEbk-00C0hJ-Av
	for barebox@lists.infradead.org; Tue, 27 Sep 2022 17:43:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1odEbd-0004BY-HU; Tue, 27 Sep 2022 19:42:53 +0200
Message-ID: <e0778785-7de6-f91c-d4b1-3f828f6effe1@pengutronix.de>
Date: Tue, 27 Sep 2022 18:42:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: =?UTF-8?Q?Hans_Christian_L=c3=b8nstad?= <hcl@datarespons.no>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <8CA6ADB4-FD4B-4CC8-9BD2-21DA02C08C85@datarespons.no>
Content-Language: en-US
In-Reply-To: <8CA6ADB4-FD4B-4CC8-9BD2-21DA02C08C85@datarespons.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_104300_395745_CDFF47E9 
X-CRM114-Status: GOOD (  19.75  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Imx-usb-loader broken on IMX8MP/v2022.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Hans,

On 17.09.22 13:04, Hans Christian Lønstad wrote:
> This is observed using straight out of the box v2022.09.0 on NXP IMX8MP Eval kit:
> 
> ---------
> 
> $ sudo ../drimx8/scripts/imx/imx-usb-loader ../drimx8/images/barebox-nxp-imx8mp-evk.img 
> [sudo] password for hcl: 
> found i.MX8MP USB device [1fc9:0146]
> 4 in err=-9, last_trans=0  00 00 00 00
> status failed

I just tested and have the same issue on i.MX8M Nano, which uses
the same new SDPS protocol. I've just sent out a potential fix.

> ————
> 
> Stripping off the header gap (32K) allows the binary to load using the standard NXP uuu (Ubuntu 22.04) utility,.
> 
> This further raises the question: Why have a header gap at all?
> 
> The makes sense for SD card loading, but not for eMMC boot partitions where ROM expects code to start at 0.

The realization that the eMMC boot partition usually lacks an on-disk partition
table came quite late to the NXP BootROM authors. On i.MX8M Mini, we still have
an offset for both SD-Card and eMMC boot partition.

> Maybe better just use a seek to put the code at the relevant position on the SD card?

imx-usb-loader does the correct thing and skips to the relevant position.
barebox_update should do the correct thing and skip over the header.

> For instance, I am using the Rauc boot loader slot update mechanism expecting no gap thus  requiring me to shave of 32k
> prior to shipping.

This is unfortunate, but I don't think this is something we should address at the
barebox side. barebox images for i.MX are always meant to be directly written
to an SD-Card at offset 0.

For RAUC integration, you may consider having your build system shave off the
bytes transparently. See for example:

https://github.com/rauc/meta-rauc/commit/8e049699f05483b694e6c5a3e260cd9e0fe58d2e

which does the inverse operation: pad U-Boot for older i.MX, so they are install-able
into an eMMC boot partition.

Cheers,
Ahmad

> 
> Comments??
> 
> Hans Christian
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


