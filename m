Delivery-date: Fri, 01 Dec 2023 16:15:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r95Em-00GB5b-2f
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 16:15:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r95Em-0006F6-Ru
	for lore@pengutronix.de; Fri, 01 Dec 2023 16:15:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y4SA19uHd5jxMWEu0i3ubGdanDII0+s1jx+KA0OZvSs=; b=qLoxE6puC3D5Fcjsd/AstSfCF/
	BK+qkht70ohQxYmbWRc2nHGrvKx4lRNKj6yDTvYCuatmW0foZ3TCs2s5LWFT50HRhkAQs9ZZyLh3O
	XSZVptItcJySbtuulVnT2d7iWMd8h1s/Q2FlSbClGb1KnTk40HKW3DWTGPZEr1p8WVVEc511Kyxwl
	hhkZhk/RCiBeiEx8Wpb/57NGH5jjS9ds+JJdnYLPErDpnh/noHK5Spd5DIBzq1OUrlEteIxE7gQsj
	A2SIfw1qZfVl3OkCzNcM/TyllPG50FLwqLjzwOKcRaRkJpsxPhw+axZhi5rX3KCqhnv4yYV1HddAC
	Kn0zVopQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r95Dc-00E11p-2I;
	Fri, 01 Dec 2023 15:14:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r95DZ-00E10a-1x
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 15:14:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r95DY-0005sx-Ba; Fri, 01 Dec 2023 16:14:12 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r95DX-00CsoP-VK; Fri, 01 Dec 2023 16:14:11 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r95DX-004lwX-T2; Fri, 01 Dec 2023 16:14:11 +0100
Date: Fri, 1 Dec 2023 16:14:11 +0100
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231201151411.GC1057032@pengutronix.de>
References: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_071413_643660_2640526F 
X-CRM114-Status: GOOD (  16.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RK3568 fail with 2023.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 30, 2023 at 05:28:44PM +0300, Alexander Shiyan wrote:
> Hello All.
> 
> The latest version of the barebox does not work on a RK3568 with 4G memory.
> With a similar board with 2G memory, everything works fine.
> ...
> NOTICE:  BL31: v2.3():v2.3-607-gbf602aff1:cl
> NOTICE:  BL31: Built : 10:16:03, Jun  5 2023
> INFO:    GICv3 without legacy support detected.
> INFO:    ARM GICv3 driver initialized in EL3
> INFO:    pmu v1 is valid 220114
> INFO:    Using opteed sec cpu_context!
> INFO:    boot cpu mask: 0
> INFO:    BL31: Initializing runtime services
> WARNING: No OPTEE provided by BL2 boot loader, Booting device without
> OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
> ERROR:   Error initializing runtime service opteed_fast
> INFO:    BL31: Preparing for EL3 exit to normal world
> INFO:    Entry point address = 0xb00000
> INFO:    SPSR = 0x3c9
> >rockchip-dmc: rockchip_sdram_size(reg2=1000eaf1, reg3=30000001)
> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 16 cs1_row 16
> bw 2 row_3_4 0
> rockchip-dmc: rk3568_ram0_size() = 4026531840
> uncompress.c: memory at 0x00a00000, size 0xef600000
> mmu: enabling MMU, ttb @ 0xeffe0000
> ===STALL HERE===
> 
> Through various manipulations, I identified the faulty patch: "ARM:
> mmu64: mark barebox text section executable during early init".

This patch just triggers a bug elsewhere. alloc_pte() places PTEs with
offset 0x8000 between them instead of the expected 0x1000. This means we
leave the space reserved for PTEs. In case of the RK3568 with 8GiB of
memory the PTEs go into the internal register space.

I've sent a fix to the list, you're on Cc:.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


