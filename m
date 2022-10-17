Delivery-date: Mon, 17 Oct 2022 15:12:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okPud-00BeMP-5n
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 15:12:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okPub-00054w-6u
	for lore@pengutronix.de; Mon, 17 Oct 2022 15:12:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UnX0oz/kuRdnwetRp5YdVgYhxvxloYGU2gnd9mFWGmw=; b=0GFJc6wGsZKQbffJf7cB3nY73Z
	XHaqvI1Icrn8ipd0vqCm5+zC+fZ/XfOkNVZetZoc0TV+6ZyQHEoh5dUM8euUa0hx5CB5OO79XlJ5f
	GwpVNzGk1LrRTFRGjlBKXlRH9V6zK0X4BYgnXAbKV3Q6LQdIgokiSh1RB4/Zz2QipnFs7Nw/xmDNU
	vx4hi3YE+QbgG610mXboHpPQpKpISkJzDSCuwb237TIcKFROaah3aKujYtBaPb8t/0E3LX1kxxii6
	AHBm386cZlGaKVfq5iJn0ErwOnOmS0vLfw4HEgPX+6ngbV8YTcnnT/FqPN8rtoiIIitnzeMvXLbLs
	6VV/opyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPt1-00C4lA-Jj; Mon, 17 Oct 2022 13:10:31 +0000
Received: from smtp72.ord1d.emailsrvr.com ([184.106.54.72])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPsv-00C4ik-Jh
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 13:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1666012217;
	bh=LkWEVVWXL8pppBCdMicGtYQub3pzg9mSYycvq/4YfIo=;
	h=Date:Subject:To:From:From;
	b=SKyA6gOAfauzI8i9sJEAM/38YqZAmRt86huwohPK7aiQNaniVzWgrkR1FgyIcxI9Y
	 WfGdAQe+7oqkwnszph6xsOikel/wBJVSwdxCCAUWxa9uTfgAF+EFpOe/F3nfA8sJ2f
	 SO84gBP0MVoi/sLZy8emzIjSsLnhSy0Wi/BqTyN8=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp10.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 74E9FA0148;
	Mon, 17 Oct 2022 09:10:17 -0400 (EDT)
Message-ID: <15b5c180-09f0-0a6e-da52-4c21051ec403@mev.co.uk>
Date: Mon, 17 Oct 2022 14:10:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-GB
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
 <dcd83566-6923-dff8-4329-bce9fa473e6e@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <dcd83566-6923-dff8-4329-bce9fa473e6e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: 3f738243-56b0-469e-af9b-1a37dbe52c76-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_061025_990187_7F94C549 
X-CRM114-Status: GOOD (  10.01  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [v2022.10.0] initcall of of_probe_memory failed (EBUSY)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17/10/2022 13:24, Ahmad Fatoum wrote:
> On 17.10.22 14:03, Ian Abbott wrote:
>> Barebox v2022.10.0 seems to work for me, but I now get this (harmless?) error during initialization:
>>
>> initcall of_probe_memory+0x1/0x34 failed: Device or resource busy
>>
>> (This is on a 32-bit ARM SoCFPGA/CycloneV based system.)
>>
>> git bisect is blaming commit d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()").
> 
> Can you define #define DEBUG at the top of common/resource.c and paste
> the output?

Here is what I get for a Terasic DE0-Nano-SoC.  (I was using a custom 
board for the original report, but the symptoms are the same.)

lowlevel init done
SDRAM setup...
SDRAM calibration...
done


barebox 2022.10.0-dirty #31 Mon Oct 17 13:58:34 BST 2022


Board: Terasic DE-0(Atlas)
__request_region ok: 0x00000000:0x3fffffff flags=0x0
__request_region ok: 0xffd04000:0xffd04fff flags=0x0
__request_region ok: 0xffd05000:0xffd05fff flags=0x0
__request_region ok: 0xffc02000:0xffc02fff flags=0x0
__request_region ok: 0xffc03000:0xffc03fff flags=0x0
__request_region: 0x00000000:0x3fffffff (ram0) conflicts with 
0x00000000:0x3fffffff (ram0)
initcall of_probe_memory+0x1/0x34 failed: Device or resource busy
__request_region ok: 0x00000000:0x00000fff flags=0x80000200
__request_region ok: 0x3ffe4000:0x3ffe7fff flags=0x200
__request_region: 0x00000000:0x00000fff (zero page) conflicts with 
0x00000000:0x00000fff (fdt-memreserve-0)
__request_region ok: 0x1fefd960:0x3fdfb2bf flags=0x200
__request_region ok: 0x3fe00000:0x3fe71e0b flags=0x200
__request_region ok: 0x3fe71e0c:0x3fe8272f flags=0x200
__request_region ok: 0x3fe82730:0x3fe85d1f flags=0x200
__request_region ok: 0xffc04000:0xffc04fff flags=0x0
__request_region ok: 0xfffec600:0xfffec6ff flags=0x0
__request_region ok: 0x3ffe8000:0x3ffeffff flags=0x200
__request_region ok: 0xff702000:0xff703fff flags=0x0
socfpga_designware_eth ff702000.ethernet@ff702000.of: user ID: 0x10, 
Synopsys ID: 0x37
mdio_bus: miibus0: probed
__request_region ok: 0xff704000:0xff704fff flags=0x0
dw_mmc ff704000.dwmmc0@ff704000.of: registered as mmc0
__request_region ok: 0xffd02000:0xffd02fff flags=0x0
__request_region ok: 0xff706000:0xff706fff flags=0x0
__request_region ok: 0xffb90000:0xffb90003 flags=0x0
__request_region ok: 0x3fdfb2c0:0x3fdfffc9 flags=0x200
malloc space: 0x1fefd960 -> 0x3fdfb2bf (size 511 MiB)
mmc0: detected SD card version 2.0
mmc0: registered mmc0

Hit any to stop autoboot:    3


-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-



