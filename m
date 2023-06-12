Delivery-date: Mon, 12 Jun 2023 14:30:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ggS-003p6X-7o
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:30:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8ggP-0001XW-Bz
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:30:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3jS/wWz6gzx7k8zAe35QnhYEbURnCtB+sJfZlVI3AlE=; b=5E+kzk+4Ig74F3YWIZmqPuUUea
	iSGK/0brt4Yg2H5PEDl/eGZXu86czzxMY8OdQmtA6iq13ZTJdp/GWQZoP7cdhbmKmZkj2MpSPPnIk
	aw2eaWso9uuH72woRsxNwMSAOf2jQNh/LiLsjeTkg3mxYzgfyuG6+MIUVv3ZmSxJSNr3Q5ujgwcoI
	e6PgWxD39ncaeOvZle8SWgRQLRzE9dmFCDXedULPd5rvJVm/V4EjjaDMiuMtij5RBH3buDmDYYgqd
	zZVwQRvEXKTOV0LVy7sQWmfeJWXXMvzPDvMO+ZRA4CwvglD46GGXznAk+q/WXinirC9iTp7jlOprd
	rhuY3Jvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gfB-0040pf-2V;
	Mon, 12 Jun 2023 12:28:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gf8-0040mv-1O
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:28:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q8gez-0001Rk-QQ; Mon, 12 Jun 2023 14:28:37 +0200
Message-ID: <d4fddd30-74bc-dab3-a6e0-a83920d2763f@pengutronix.de>
Date: Mon, 12 Jun 2023 14:28:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <PR3P195MB055543898F124A46C209C170C34B9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <23017859-57ee-8df3-cd8d-c7e4f2094cfe@pengutronix.de>
 <AM0P195MB0548E634FB807F1501D1D716C3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3448bd9c-06e3-89a9-e8de-c284d0268ca9@pengutronix.de>
 <AM0P195MB0548337CA7A533D0456BB14CC3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3340583d-12cd-1a52-4c9c-d237c58bfca7@pengutronix.de>
 <PR3P195MB0555265E59E77AB3ABE53D03C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <ffde7964-42a4-c762-d46d-93cd9d923646@pengutronix.de>
 <PR3P195MB0555940C37560E6D01731A1BC3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <98480243-c1b7-a2bb-9267-2126797f52bd@pengutronix.de>
 <PR3P195MB05554662E272B9E1A8E5655AC352A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <381bd0cc-26b3-ad2e-1857-436932549934@pengutronix.de>
 <PR3P195MB055562ACCF6EBF0A490BBB4EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB055562ACCF6EBF0A490BBB4EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_052846_474573_9F336F69 
X-CRM114-Status: GOOD (  21.80  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lior,

On 12.06.23 11:27, Lior Weintraub wrote:
> Hi Ahmad,
> 
> Regarding the rootfs and Linux run question:
> Our board doesn't include eMMC\SD card. 
> We only have our NOR Flash to store the binaries and our BL1 code will make sure to copy those blobs into DRAM.

How could BL1 copy artifacts in DRAM when BL2 first needs to set up DRAM?

> The use of QEMU needs to be as simple as possible so no hidden virtio drivers and such because we would like to simulate the real HW flow.

cfi-flash is just memory-mapped flash, which is the next simplest thing
after BL1 copies stuff into (limited-to-4M) on-chip SRAM.

> Our DTS file now includes the GIC, timer and arm,psci-1.0.
> We have an initial build of Linux kernel Image (using buildroot) and a rootfs.cpio.xz.
> I assume we can somehow reserve a portion of the DRAM to store those binaries and let barebox boot this Linux.

You can make this work, but this is not how your actual system will
look like and trying to make this work is harder than it needs to be.

Just add a cfi-flash that corresponds to the Linux/rootfs flash in
your actual system, then boot with bootm (type help bootm for info
on how to use it). You don't need to hardcode the load addresses,
barebox will determine them automatically.

> Can you please advise how to make it work?

For completion's sake, if you have 64M of RAM that's preloaded with
boot images:

  - Remove the 64M from the barebox /memory node. You can use a different
    DT for kernel, but if you have memory that barebox shouldn't override,
    you need to tell it that.

  - Add a mtd-rom node that describes these 64M that you have. You can
    add partitions for the region used for kernel and oftree

  - boot with bootm -o /dev/mtdrom0.oftree -r /dev/mtdrom0.initrd \
    /dev/mtdrom0.kernel

That's admittedly cumbersome, but necessary, so barebox knows what memory
it may use for itself and what memory may be used for boot.

Correct solution is to use cfi-flash or similar.

Cheers,
Ahmad 
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



