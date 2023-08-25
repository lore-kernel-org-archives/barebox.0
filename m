Delivery-date: Fri, 25 Aug 2023 12:25:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZU01-008LIH-5w
	for lore@lore.pengutronix.de; Fri, 25 Aug 2023 12:25:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZTzy-00064k-MO
	for lore@pengutronix.de; Fri, 25 Aug 2023 12:25:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zeNWGJOUa8FtXJLnxcrgCLEf3LqraQY64+nblA6DfoY=; b=xuW3bCRudjNdIi+J4s9KgZIjiC
	WkI9USy8Gml7muPBXDKzvEHdi36iI9j1RRGp+Pdbi8iOjBCF5IHlNyvzQTXDjSMEt1a8tAmqsbBYy
	1tJI1mRNImzgPp/2UndrIyIwfOvnyBoc40WQ3ujiu6L33SzyoQ6M2r+UVuAUVMBAFs824YzvCUlhc
	f6FkyUUKNU42VTuYlyVuqM/mMjaS34PWg807Qi50Z/ZFB9MDga97ZVto4U9YG10RzVsNkWTTLkTKc
	mVBQA8YGnVYzMYDH0SUl4oFqMQyQ3zvTDNpNl7DQAwnMRLlAenvEewAcg/UFiXlWBDNaTUdHHMZ79
	lzbeSmJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTyx-004oPR-0S;
	Fri, 25 Aug 2023 10:23:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTyu-004oOn-0O
	for barebox@lists.infradead.org;
	Fri, 25 Aug 2023 10:23:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qZTys-0005p1-Sk; Fri, 25 Aug 2023 12:23:54 +0200
Message-ID: <d0127137-7fd4-e794-ab16-eb04ab1c6934@pengutronix.de>
Date: Fri, 25 Aug 2023 12:23:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org
References: <13356260.uLZWGnKmhe@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <13356260.uLZWGnKmhe@n95hx1g2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_032356_162358_C22E9CB1 
X-CRM114-Status: GOOD (  20.23  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: FIT: support for compressed images breaks existing images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Christian,

On 25.08.23 11:44, Christian Eggers wrote:
> Hi Ahmad,
> 
> On Wednesday, 23 August 2023, 18:32:06 CEST, Ahmad Fatoum wrote:
>> I need not tell you though that latest is greatest and all that ;)
> 
> after rebasing my internal branch to v2023.8.0, my system doesn't
> boot anymore:
> 
> Booting entry '/dev/nand0.root.ubi.kernel0'
> FIT: Opened FIT image: Barebox fitImage for Poky (Yocto Project Reference Distro)/1.0/orbiter
> FIT: matching unit 'conf-imx6ull-arri-orbiter-revB.dtb' found
> FIT: configuration 'conf-imx6ull-arri-orbiter-revB.dtb': 7 Linux kernel, FDT blob, ramdisk
> FIT: image 'kernel-1': 'Linux kernel'
> FIT: /images/kernel-1/hash-1: hash OK
> 
> Loading open firmware Device Tree flattened Binary '/dev/nand0.root.ubi.kernel0'
> FIT: image 'ramdisk-1': 'lios-initramfs-ubifs-orbiter.cpio.lz4'
> FIT: /images/ramdisk-1/hash-1: hash OK
> cannot handle filetype LZ4 compressed
> ERROR: FIT: data couldn't be decompressed
> ERROR: Cannot open ramdisk image in FIT image: Function not implemented
> ERROR: Booting entry '/dev/nand0.root.ubi.kernel0' failed
> 
> 
> Since commit
> 
> 2ab6780b80e3 ("FIT: add first support for compressed images")
> 
> Barebox uses the "compression" key from the FIT image which breaks loading my
> ramdisk (LZ4 compressed, should be decompressed by the kernel). Although the
> compression parameter should be "none" in that case, it actually isn't. Older
> Yocto releases used to set the actual compression type here:
> 
> https://git.yoctoproject.org/poky/commit/?h=kirkstone&id=2c58079222310443f08df51e9fd6ce234e7e0019
> 
> In U-Boot, the "compression" parameter is ignored for ramdisks due to this
> problem. Only a warning is printed:
> 
> https://source.denx.de/u-boot/u-boot/-/commit/bddd98573465
> https://source.denx.de/u-boot/u-boot/-/blob/master/boot/image-fit.c#L2289
> 
> Could you also apply this workaround to Barebox?

Thanks for the detailed report. I just Cc'd you on a patch that fixes this.
Please give it a test.

Cheers,
Ahmad

> 
> regards,
> Christian
> 
> 
> 
> _______________________________________________________​
> Christian	 
> 	Eggers
> 
> Software Engineer
> ​
> 
> ARRI
> Arnold & Richter Cine Technik GmbH & Co. Betriebs KG 
> 
> Arriweg 17	, 
> 	83071	 
> 	Stephanskirchen
> 
> www.arri.com 
> 
> <http://www.arri.com/>
> 	+49 8036 3009-3118 <tel:+49%208036%203009-3118>
> 	
> 	
> 	CEggers@arri.de <mailto:CEggers@arri.de>
> 
> 
> ​
> 
> CCM1 Camera Control Monitor <https://www.arri.com/en/camera-systems/cameras/ccm-1>
> Get all the latest information from www.arri.com <https://www.arri.com/>, Facebook <https://www.facebook.com/TeamARRI>, Twitter <https://twitter.com/ARRIChannel>, Instagram <https://www.instagram.com/arri/>, LinkedIn <https://www.linkedin.com/company/arri> and YouTube <https://www.youtube.com/user/ARRIChannel>.
> 
> Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
> Sitz: München ‑ Registergericht: Amtsgericht München ‑ Handelsregisternummer: HRA 57918
> Persönlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
> Sitz: München ‑ Registergericht: Amtsgericht München ‑ Handelsregisternummer: HRB 54477
> Geschäftsführer: Dr. Matthias Erb (Chairman); Lars Weyer; Stephan Schenk; Walter Trauninger
> 
> ​
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



