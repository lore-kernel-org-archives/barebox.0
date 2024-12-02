Delivery-date: Mon, 02 Dec 2024 13:45:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5o6-0035U2-0v
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:45:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5o6-0006bm-8e
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:45:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lJyT+v743plLR9zE/B1A/AcpZijgnE4V3fd7WqVBp50=; b=f7LxE9C90YDLRx0L6CyxD9QJbO
	MCw35oJNJKrfloXlhHEWrLVZ0GG1srNJQMTrcAhIEPmCKcYXimbFFlPn0zLD21jXx2ksVx9qNElsb
	OKN7Nggi+NITsT/3VhEa5Cjc32twMpr38IwS9cJlt0y/jf0YqM+2vgHC9goDUBJt5O3nMu7N5O8LD
	z/PRa2nXk7NMBz5KwMGya84ovrlL9/hRDuh05KRc6DcQT9QP+birsylpKNWZ4s091d/nQZa7NhgMu
	Ahlx4LvLMsKTK4U+tUS6Ig/uUQHbFs0HBt33N6G8dU/iQJx7fIcW/6RSIaz7H0tRZ7bkgTD1MZjCg
	gbBv8vBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5nX-000000067TD-2XsP;
	Mon, 02 Dec 2024 12:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5k1-000000066s3-3bnK
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:41:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5k0-0005lk-8o; Mon, 02 Dec 2024 13:41:28 +0100
Message-ID: <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
Date: Mon, 2 Dec 2024 13:41:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z0hbuZBvK2aLd5s1@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_044129_902667_A199BE4B 
X-CRM114-Status: GOOD (  13.84  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Konstantin,

On 28.11.24 13:02, Konstantin Kletschke wrote:
> On Thu, Nov 28, 2024 at 12:18:45PM +0100, Ahmad Fatoum wrote:
>>
>> Are you still building with the same toolchain?
> Checked out current barebox git: barebox 2024.10.0-00150-g7a3cb7e6fd63 #2 Thu Nov 28 12:37:15 CET 2024
> Changed CONFIG_BAREBOX_MAX_IMAGE_SIZE from 0x1b400 to 0x2b400

Why do you do this step? 0x1b400 == 109KiB, which is chosen, because the MLO
needs to fit into the On-Chip SRAM of the AM335x.

Increasing the size won't magically increase RAM size, but it may result
in a truncated MLO being loaded into memory or worse: barebox overwriting
memory and MMIO that it shouldn't be touching.

Do you also change this when compiling your normal image?

Cheers,
Ahmad

> Did am335x_mlo_defconfig and omap_defconfig and copied those images.
> I used another crosscompiler toolchain for this: gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf
> 
> Same error behaviour: Power up -> S1 or "reset" produce freeze.
> 
> Will test CONFIG_DEBUG_LL and/or move those lines around.
> 
> Regards
> Konsti
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


