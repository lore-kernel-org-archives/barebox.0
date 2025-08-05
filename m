Delivery-date: Tue, 05 Aug 2025 07:24:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujAAT-007BcC-0o
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 07:24:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujAAS-0002ez-L3
	for lore@pengutronix.de; Tue, 05 Aug 2025 07:24:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+kalVBwpNn30z4cidxJx8O2JtgSljcevpCy502emsM=; b=4RjVnldpIasn2r
	VE/8SdJKMj1cFPoQuHQhxeRaTlR/7hyAGBExcQTpJt6c2Wwwgwg87G+8RScZtfVBTsnJtcwFTbGRR
	eoYNV/ei22j/5dLnJZp1HMcOFnk9FsNFo/EkQp+3ULWOwSp/pK3yVCmojN5Q1hLIhXRKHRLPXZwMG
	uTau852tIU8JEqFdnimKV2jeyvbAQTYEY6a3J6U8Wxt4X66lmldaGjbB7HLFYj1mmWTM1UUQNZqTM
	ROjUS2gRIAGTa3j9krUsn2EyhzxF4BHfQdIHin3Y9boypMgsJgRXJX/pP1ppssJkufivzG3IylkJK
	Pv3lcvC4cqg07WOufDvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujAA2-0000000BoTG-31oF;
	Tue, 05 Aug 2025 05:24:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujA9z-0000000BoSs-3W3s
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 05:24:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujA9y-0002aw-IT; Tue, 05 Aug 2025 07:24:26 +0200
Message-ID: <ad635228-e3ac-4593-9a02-490fd84cf82f@pengutronix.de>
Date: Tue, 5 Aug 2025 07:24:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>
References: <8JK70T.9NOP3AIQTVWR@gmail.com>
 <bbc6d12d-4c8a-463a-ae7e-8b2f36afebb9@pengutronix.de>
 <HKY90T.CZFW9DH4XY4I3@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <HKY90T.CZFW9DH4XY4I3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_222427_921009_3DBAD762 
X-CRM114-Status: GOOD (  14.89  )
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
Cc: barebox <barebox@lists.infradead.org>
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
Subject: Re: fixed partitions issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 31.07.25 19:43, Stefano Manni wrote:
> On v2025.07.0 every time I write barebox-env part (e.g. with nv command) also barebox
> part is written. This on v2025.01.0 does not happen.
> 
> I supposed the problem was in the fixed-partition bindings but maybe it is somewhere
> else, for example in the spinor driver.
> 
> Is that something I may test to understand more?

The issue was easily reproducible in QEMU with the virt platform or vexpress platform,
e.g. for multi_v8_defconfig:

  pytest --lg-env test/arm/multi_v8_defconfig.yaml --interactive

and then

  barebox@ARM QEMU virt64:/ md -s /dev/nor0.initramfs 0+16 ; md -s /dev/nor0.barebox-environment 0+16
  00000000: 00000000 00000000 00000000 00000000                ................
  00000000: 00000000 00000000 00000000 00000000                ................

  barebox@ARM QEMU virt64:/ saveenv 
  saving environment to /dev/nor0.barebox-environment
  barebox@ARM QEMU virt64:/ md -s /dev/nor0.initramfs 0+16 ; md -s /dev/nor0.barebox-environment 0+16
  00000000: 798fba79 00000000 00000000 00000000                y..y............
  00000000: 798fba79 00000000 00000000 00000000                y..y............


I ran a git bisect and found the issue to be introduced by Sascha's commit
6d2b6f399c07 ("cdev: pass master cdev to cdev ops").
This was first included in v2025.07.0.

@Sascha, can you look into this?

Thanks,
Ahmad



> 
> Best,
> Stefano
> 
> 
> 
> 
> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


