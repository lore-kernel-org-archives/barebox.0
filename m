Delivery-date: Wed, 14 Sep 2022 10:34:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYNrG-004b5P-A1
	for lore@lore.pengutronix.de; Wed, 14 Sep 2022 10:34:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYNrF-0007RD-2W
	for lore@pengutronix.de; Wed, 14 Sep 2022 10:34:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IML+vp37pcqRrGP+LWlII1xcQ1A1iMqgc7rcO7ZCS0Q=; b=yNCVVd8Ervt5tLR0g+cE6sG2Vf
	BpYtL0diSbpqOi3wgzfo7MTN4M9NfEajZs+CEDq9yI499s5ZC7VKPP3ziS/RXugqJvvoSxfR4ysjJ
	FkP3UVe/yl/BlF/ncqstdE6NFi/2yvRExGIcSnSCVU8CYp/kLQLLpsNhjxNtsHWQLxgYA04AG0eIL
	fbXtUN0eKrDRo1mqVmlcFKhVPTJAcI9T1X4X0wULS/S4wWDbGf3amd1EUg4Oeo5m9OzTVoshullXW
	B5SnN5pU7hVUlDsG8ztmG94CshRY8HvTJF9hvkAtjIGE3Zycpren4qfcMYEq2NR98eR/8Gh+MnYRF
	wM4znyLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNpu-00DbCi-AG; Wed, 14 Sep 2022 08:33:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYNpp-00DbBW-1Z
	for barebox@lists.infradead.org; Wed, 14 Sep 2022 08:33:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oYNpl-0007Kt-Cu; Wed, 14 Sep 2022 10:33:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oYNpl-0002gL-48; Wed, 14 Sep 2022 10:33:25 +0200
Date: Wed, 14 Sep 2022 10:33:25 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220914083325.GJ12909@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
 <20220913124954.1346533-5-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913124954.1346533-5-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_013329_099288_C814E41D 
X-CRM114-Status: GOOD (  19.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] RISC-V: use m/sscratch registers for
 barebox_riscv_pbl_flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 13, 2022 at 02:49:52PM +0200, Marco Felsch wrote:
> Use the dedicated scratch register for setting the pbl flags. Each mode
> has it's own scratch register so we are not conflicting with M-mode
> running firmware e.g. OpenSBI. Using the scratch register has two main
> advantages:
>  1st) It can be used in PBL and non-PBL use-case.
>  2nd) It is not affected by the relocation code.
> 
> This commit prepares barebox to add support for the special cache ops
> used by several T-Head CPUs.
> 
> +static inline void riscv_set_flags(unsigned flags)
> +{
> +	switch (flags & RISCV_MODE_MASK) {
> +	case RISCV_S_MODE:
> +		__asm__ volatile("csrw sscratch, %0" : : "r"(flags));
> +		break;
> +	case RISCV_M_MODE:
> +		__asm__ volatile("csrw mscratch, %0" : : "r"(flags));
> +		break;
> +	default:
> +		/* Other modes are not implemented yet */
> +	}

Compilation ends in an error here:

arch/riscv/include/asm/system.h:27:2: error: label at end of compound statement

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


