Delivery-date: Tue, 22 Apr 2025 17:41:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7FkX-0046gN-1Q
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 17:41:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7FkW-0006aq-Ow
	for lore@pengutronix.de; Tue, 22 Apr 2025 17:41:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELLfvJ5D7PJ9/3fTkQgfdyg+QNC4vgRPOMEZkVGX8Xs=; b=zbcgkriMlzYe+w/xYmaIxi1s2s
	hzLQ5+WUpNKMovkkbM4dVhsEyaRQJj4G7vSRTkrpx746mo4EHIsMtmtDKXyHh1LvX8EHMiTavVu4q
	W/bvbwuLA8eGI2GlycRbtFiHZlOF+sV0S2CPJP3/7/YG8aiDwVq6ysvGZesEaHnknAQXh+n7hOFn8
	0wScPXaOqzD/TntcAw4jEvydO7BbOgJBSHK96BJcxZL1zLwwHtL8pZE8hWNjKZ8Xg0Un/5NZgnaS8
	d7XJ4KLsbsiA7oFW593QPgN6QmLm3lkCmuqT9BNVRBJwmSHId76sHMsgxGvBuuXkYG1El3YSG5r63
	dJsaoXjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Fk5-00000007lOC-3hMg;
	Tue, 22 Apr 2025 15:41:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7EWo-00000007TWM-3Fqc
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 14:23:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7EWn-0006O4-2x; Tue, 22 Apr 2025 16:23:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7EWm-001ZDI-2s;
	Tue, 22 Apr 2025 16:23:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7EWm-00FAbJ-2a;
	Tue, 22 Apr 2025 16:23:12 +0200
Date: Tue, 22 Apr 2025 16:23:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAemUHavn4l7YBkY@pengutronix.de>
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
 <20250422075519.219029-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422075519.219029-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_072314_813574_E8F16AAB 
X-CRM114-Status: GOOD (  16.93  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 3/4] ARM: k3: define debug_ll_write_reg only on
 CONFIG_DEBUG_AM62X_UART=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 22, 2025 at 09:55:18AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> Defining debug_ll_read_reg unconditionally for K3 can clash with other
> debug_ll implementations, so move it into the include guard.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  include/mach/k3/debug_ll.h | 37 ++++++++++++++++++-------------------
>  1 file changed, 18 insertions(+), 19 deletions(-)

This breaks compilation of multi_v8_defconfig:

arch/arm/boards/beagleplay/lowlevel.c:44:30: error:  debug_ll_ns16550_putc' undeclared (first use in this function)
   44 |         pbl_set_putc((void *)debug_ll_ns16550_putc, (void *)AM62X_UART_UART0_BASE);

debug_ll_ns16550_putc() is used as the pbl putc function. This might
have been wrong from the start, but it is like it is.

Not sure what we should do about it. We would need some ns16550 putc
function that is independent of the debug_ll infrastructure.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


