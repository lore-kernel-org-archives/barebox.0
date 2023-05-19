Delivery-date: Fri, 19 May 2023 12:37:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzxUO-006ZAD-4P
	for lore@lore.pengutronix.de; Fri, 19 May 2023 12:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzxUL-0000np-RY
	for lore@pengutronix.de; Fri, 19 May 2023 12:37:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/a/wm5t5zhV1o1rCNO/UWdB56eC4VMcQUUyRusAJsCc=; b=4Cv69ePXHd6yh3qhSBfQdFTDQ/
	KfB7Vscy0vnA7RkcmMFCfVetHcmvNR1BdJ9GnjH+UXkyAzAFGXorLHM3DA8gsWfhAsdnQ67LCk4eE
	V/GrApr9pcUQJFgz8HC+gd7i/BeXRcPxsf8ArYA+Q/6/B1f8ggHjvM5DT3dBVQtxZ6knM+QH0Grey
	bHMigCOEwdkeOSuf2b2ydAnY11utXlM2zxGudihMLR2jDyE5qjHSgmRS38VNVv/zuZOrNvzP3SZlM
	bAa/Zto37dnQfByGI+iQEbLhrkjTFjtLnwJx1yAKotHoKQbyD/TdfjAZHDWgdSJELXGXcPzBEIfxR
	3bbLc54Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxTG-00Fuyf-1m;
	Fri, 19 May 2023 10:36:26 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxTD-00Fuxb-0E
	for barebox@lists.infradead.org;
	Fri, 19 May 2023 10:36:24 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 0AFAE20004;
	Fri, 19 May 2023 10:36:17 +0000 (UTC)
Date: Fri, 19 May 2023 12:36:16 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZGdRIO61IrqeuVn8@tour>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-6-jmaselbas@zdiv.net>
 <ff0cb7f1-9487-06c4-4db0-942a13a10ecc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff0cb7f1-9487-06c4-4db0-942a13a10ecc@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_033623_234609_ADBAEF28 
X-CRM114-Status: GOOD (  17.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 05/11] arm: sunxi: Add debug_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 18, 2023 at 09:05:21PM +0200, Ahmad Fatoum wrote:
> On 11.05.23 01:37, Jules Maselbas wrote:
snip
> > diff --git a/include/mach/sunxi/debug_ll.h b/include/mach/sunxi/debug_ll.h
> > new file mode 100644
> > index 0000000000..64c65a5917
> > --- /dev/null
> > +++ b/include/mach/sunxi/debug_ll.h
> > @@ -0,0 +1,35 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +
> > +#ifndef __MACH_DEBUG_LL_H__
> > +#define __MACH_DEBUG_LL_H__
> > +
> > +#include <io.h>
> > +
> > +#define DEBUG_LL_UART_ADDR CONFIG_SUNXI_DEBUG_LL_UART_BASE
> > +
> > +static inline uint8_t debug_ll_read_reg(int reg)
> > +{
> > +	return readl(IOMEM(DEBUG_LL_UART_ADDR) + reg * sizeof(uint32_t));
> > +}
> > +
> > +static inline void debug_ll_write_reg(int reg, uint8_t val)
> > +{
> > +	writel(val, IOMEM(DEBUG_LL_UART_ADDR) + reg * sizeof(uint32_t));
> > +}
> > +
> > +#include <debug_ll/ns16550.h>
> > +
> > +static inline void debug_ll_init(void)
> > +{
> > +	uint16_t divisor;
> 
> Call sunxi_uart_setup here?
While taking look at this, the initial code (in sun50i_cpu_lowlevel_init)
and now the lowlevel board code. There is bits done every where, and the
acctual pin mux is done in lowlevel board code, in a function setup_uart.
I think I will "fuse" setup_uart and the bits originally done by
sun50i_cpu_lowlevel_init: lowlevel code will call sunxi_uart_setup (for
clock gating, un-reset and pinmux).
 
> > +
> > +	divisor = debug_ll_ns16550_calc_divisor(24 * 1000 * 1000);
> > +	debug_ll_ns16550_init(divisor);
> > +}
> > +
> > +static inline void PUTC_LL(int c)
> > +{
> > +       debug_ll_ns16550_putc(c);
> > +}
> > +
> > +#endif
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


