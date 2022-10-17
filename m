Delivery-date: Mon, 17 Oct 2022 14:27:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okPDm-00Bd0Z-L7
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 14:27:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okPDk-0006VU-9N
	for lore@pengutronix.de; Mon, 17 Oct 2022 14:27:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h1LBFtovKEreWnJgqXe5TPdWv7TA3CWm5y8iUZe0xt4=; b=VWAdsUW/vas64nBYowwKqwYQVt
	HUOQUG26ZhNJcy0evysIcIcj2m27YZsucuaRmy053RUwHrRQ209eSIbTEESL19C4tZ6J2Yi8wjqZ2
	o40jpimSTG8A/ObPm5msxaZ0UPAPvzeqq1mBSrMq9iUhlKqSCKM8VtDnA637FlAOsZeIQFgYrRp04
	w/v7lEsgaTvbA5L9d//LcJVwXm5tgaY7SJUO1yhqK9o33X4DjYYIcEkQkTOoiDYH2Oz92lYMf9h3E
	UhbD8tdVmI1qEseAdfXu36V6/BECjkHrqOa2dtJ8L+n1PO08Iv78CYrU9cDLW/jnpi+PNsQaLxfOZ
	9t7A6Tjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPCL-00BXCX-JH; Mon, 17 Oct 2022 12:26:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPAa-00BWG0-R1
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 12:24:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1okPAV-0005tC-IS; Mon, 17 Oct 2022 14:24:31 +0200
Message-ID: <dcd83566-6923-dff8-4329-bce9fa473e6e@pengutronix.de>
Date: Mon, 17 Oct 2022 14:24:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Ian Abbott <abbotti@mev.co.uk>, Barebox List <barebox@lists.infradead.org>
References: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <98fb1314-e0c9-c75c-c89f-7bcc36a2b9c0@mev.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_052436_920651_B0D70BA2 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [v2022.10.0] initcall of of_probe_memory failed (EBUSY)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.10.22 14:03, Ian Abbott wrote:
> Barebox v2022.10.0 seems to work for me, but I now get this (harmless?) error during initialization:
> 
> initcall of_probe_memory+0x1/0x34 failed: Device or resource busy
> 
> (This is on a 32-bit ARM SoCFPGA/CycloneV based system.)
> 
> git bisect is blaming commit d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()").

Can you define #define DEBUG at the top of common/resource.c and paste
the output?

Thanks,
Ahmad

> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


