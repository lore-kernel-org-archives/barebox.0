Delivery-date: Thu, 30 Nov 2023 16:00:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8iWt-00EV5X-2o
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 16:00:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8iWt-0001r5-RK
	for lore@pengutronix.de; Thu, 30 Nov 2023 16:00:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=41pO0L2hFs4SYGUmlJJ2j5MCnmxgS3FusYmgAI5Cr54=; b=1iwZSTbRAq1OiQJyI92BEbdAnM
	XJV8+WeGW9MVfZ//xHxYKkc7Rb4X+14vUVzOeBFzk/L7nt3qHyl4/StmZIZGiUYE3qyF/Tw9v0Rj0
	1oqXpoeFmdOD9K/0tth8dL9pzFRFJQcoHZaidIAOPjTGYc6MdvQYTXsSAJkUeJrg3DZB0q8SOPnM/
	8mtmwH1jAObh6NBes0NsnElkZD8YdyrKxXfR2gKu7/30o6s3NcXw89vArf5pgiS69Xns8FU5P4u9t
	tWkdbEStwO3rvjRr+nePU12Q9yR3BiTQ7oLlkTYAQjYtQpnriEhwXOqDzkajmoo99UXViQR2fyu1+
	eJviRPrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8iVQ-00B9z5-20;
	Thu, 30 Nov 2023 14:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8iVN-00B9xO-0Z
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 14:59:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8iVI-0001Ti-WA; Thu, 30 Nov 2023 15:59:01 +0100
Message-ID: <8b300282-86fb-40bd-adfa-4ee0fd60045e@pengutronix.de>
Date: Thu, 30 Nov 2023 15:59:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_065905_210516_67394180 
X-CRM114-Status: GOOD (  12.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RK3568 fail with 2023.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.11.23 15:28, Alexander Shiyan wrote:
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
>> rockchip-dmc: rockchip_sdram_size(reg2=1000eaf1, reg3=30000001)
> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 16 cs1_row 16
> bw 2 row_3_4 0
> rockchip-dmc: rk3568_ram0_size() = 4026531840
> uncompress.c: memory at 0x00a00000, size 0xef600000
> mmu: enabling MMU, ttb @ 0xeffe0000
> ===STALL HERE===
> 
> Through various manipulations, I identified the faulty patch: "ARM:
> mmu64: mark barebox text section executable during early init".
> After its rollback everything works as it should.

Can you print the output of the iomem command after reverting my patch?

Thanks,
Ahmad

> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



