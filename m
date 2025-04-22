Delivery-date: Tue, 22 Apr 2025 17:49:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Fs0-0046tc-17
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 17:49:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Frz-0008Iw-PE
	for lore@pengutronix.de; Tue, 22 Apr 2025 17:49:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6LENJJLY0si0REjJg1YbOhcK+DcqOM5C2GAoUjNVxsw=; b=V4/wo7mcrSdJgJDwZIiXigzlvX
	GVSNMiWQFhYKuDM+miy3EB0Pu7E+h8LztQNUGyLZjsXoKT/gYrzQCtHU0ZjflOxv9IAxUU5bNCEIb
	HiSfUVjAkwkdxH+CZYMx7SnXE8ml0e/LedCHbte/MK0/mPM0vO431RMVwq0x7BEkd9vFA8oXoqqzQ
	y0YcTuAjdgCHhfY1rMK1dj3FncNZScekBbehYVRhgMAc+MQ+fqNc/ya/X3+3lBQ/Vbzd+BlX5eAl4
	BUB0e3iyzu/fKIvzQ5/GvolML/6JlgSUAdZq6+26y93m5LEg13enc1Nm6+ezddAHwWS0/CYS+3801
	RAny9kww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7FrV-00000007n0o-2LVh;
	Tue, 22 Apr 2025 15:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Ech-00000007UvZ-16Me
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 14:29:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7Ecf-0007Zp-Ve; Tue, 22 Apr 2025 16:29:18 +0200
Message-ID: <4f94213d-10af-4122-a16f-0e1e0a9c679e@pengutronix.de>
Date: Tue, 22 Apr 2025 16:29:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
 <20250422075519.219029-3-a.fatoum@pengutronix.de>
 <aAemUHavn4l7YBkY@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aAemUHavn4l7YBkY@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_072919_305060_E1C86653 
X-CRM114-Status: GOOD (  18.37  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 3/4] ARM: k3: define debug_ll_write_reg only on
 CONFIG_DEBUG_AM62X_UART=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/22/25 16:23, Sascha Hauer wrote:
> On Tue, Apr 22, 2025 at 09:55:18AM +0200, Ahmad Fatoum wrote:
>> From: Ahmad Fatoum <a.fatoum@barebox.org>
>>
>> Defining debug_ll_read_reg unconditionally for K3 can clash with other
>> debug_ll implementations, so move it into the include guard.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>>  include/mach/k3/debug_ll.h | 37 ++++++++++++++++++-------------------
>>  1 file changed, 18 insertions(+), 19 deletions(-)
> 
> This breaks compilation of multi_v8_defconfig:
> 
> arch/arm/boards/beagleplay/lowlevel.c:44:30: error:  debug_ll_ns16550_putc' undeclared (first use in this function)
>    44 |         pbl_set_putc((void *)debug_ll_ns16550_putc, (void *)AM62X_UART_UART0_BASE);
> 
> debug_ll_ns16550_putc() is used as the pbl putc function. This might
> have been wrong from the start, but it is like it is.
> 
> Not sure what we should do about it. We would need some ns16550 putc
> function that is independent of the debug_ll infrastructure.

Meh. This patch was a side product of Mediatek MT8186 support, which
also has a NS16550. Please drop it for now and I'll revisit it later.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



