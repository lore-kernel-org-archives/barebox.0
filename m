Delivery-date: Tue, 06 Jan 2026 12:34:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd5K9-001sGC-20
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 12:34:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd5K9-00009P-0r
	for lore@pengutronix.de; Tue, 06 Jan 2026 12:34:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YewOoSAQ3hjHR4pEFH1T3clA0/LN1MxT/Ywd1Npz74w=; b=aIe66PgGXI3IGH2nfzbKjHAu18
	fQYgsq2yrXsm4tpkwC5zoNBDznYPNEVKS+j5zLX16g/T1YCQi/z0VwYqHuFXK5TGXB7sMhyajT9f+
	YYxU9aDb4jnO2u+65PJOECsD0M5VCY7bJF56ag7TpfNWx8ebOy7KoAQOP5LI3gr5c188Qb6NKVbmi
	Kb/pWRG6yjhR8xQtzqoBoSsTONTyyZaEr9eeGgkDVv/ZlJxZRnnZOk4iAl+nHvO8adpmL3wb3m4sA
	jhce99qmYnvbtF1KfDukrwAN9wTuwRdB9pXyNprklcxGPAQMtsOwrRm7HTfxpnBnWhFT+wBWpUKkM
	UYKIW8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd5JY-0000000Ct0d-2T0O;
	Tue, 06 Jan 2026 11:33:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd5JU-0000000Cszs-2kkz
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 11:33:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd5JS-0008Qw-FH; Tue, 06 Jan 2026 12:33:22 +0100
Message-ID: <e31c674b-8d63-42bc-bd54-bcb9c7b5b92d@pengutronix.de>
Date: Tue, 6 Jan 2026 12:33:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <aVzVyOKQ-mc4LLBd@hephaistos>
 <20260106095253.souvmkzvzufrkecv@pengutronix.de>
 <aVzgGHbZipXS7kWr@hephaistos>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aVzgGHbZipXS7kWr@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_033324_713120_4B4677DC 
X-CRM114-Status: GOOD (  22.42  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Yocto migration meta-barebox -> walnascar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Konstantin,

On 1/6/26 11:12 AM, Konstantin Kletschke wrote:
> On Tue, Jan 06, 2026 at 10:52:53AM +0100, Marco Felsch wrote:
> 
>> Which barebox version do you use?
> 
> It should be 2025.02.0.
> I switched to walnascar and this should be the part used:
> https://git.yoctoproject.org/poky/tree/meta/recipes-bsp/barebox?h=walnascar
> 
>> Ahmad added the support for a single barebox binary:
>>  - https://lore.barebox.org/barebox/20250422052635.3423961-1-a.fatoum@pengutronix.de/
>>
>> IIRC the purpose of the patchset was exactly to fulfill an easier Yocto
>> integration since the beaglebone is one of the oe-core real test hw.
> 
> That's is very interesting.
> What I did not get, yet:
> So we can keep our partition scheme, the CPUs bootloader is searching
> hardcoded for partition table -> first vfat -> MLO.
> Then barebox-am33xx-beaglebone.img is put there as MLO?

When enabled, the same barebox build generates two images:
barebox-am33xx-beaglebone-mlo.mmc.img -> MLO
barebox-am33xx-beaglebone.img -> barebox.bin

Both are placed in the VFAT.

>> Since the single image approach targets only the SD/MMC boot, the
>> standalone MLO image should be still possible.

I didn't test it on eMMC and I suspect it needs light tweaking to work
there. If you are happy to test, I can find some time later to send a patch.

>  Can this be switched on/off somewere in the yocto framework so the old
>  MLO/barebox.bin pair is genereated?

For your old setup, you will need two recipes. Just define your own
barebox.bb and barebox-pbl.bb recipes and inherit barebox in each and
use different configs. All the core logic is in a barebox.bbclass to
allow you to easily create your own recipes.

This allows you also to use a newer version than v2025.02.0 for example
v2025.09.1, which is going to be maintained for longer than just a month.

Cheers,
Ahmad

> 
> Regards
> Konstantin
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



