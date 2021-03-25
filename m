Delivery-date: Thu, 25 Mar 2021 09:11:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPL59-0007p8-86
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 09:11:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPL58-0007Vl-HQ
	for lore@pengutronix.de; Thu, 25 Mar 2021 09:11:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s2qKeLmJzsaEAHzHHGqGR6QJubL/yyTxX5Nb2/e2fZ8=; b=eg+DwzkjDZuCwpAUySQHKdGG2
	oBQVlXkWZ/9GnTjSHnWuW4z+6AG6lZIcF6ipcg5a8WtcKxq5rDZ/aUyHLspzVRTFBh75mZ0sBS0no
	dZlRp23GO30/PnvcbPrqW+meXq247luSNFFOsxKwEyh5UmOh2GcXKFSnqJEXoQwDCpxhu+Ou3L428
	ev9C6ElNt9jjwH9pSNmJlrrofBEeE2eMjN9DueCZ3GBUi7Tei/gLvn4nprxYGoYGlzX3TKzZmOvaA
	sS7x8W5xZceydFoTHGtgbjMTFENFbIV2yJqO1nltnhNc458PBMSKe1jD3lD2VE7JC8ZWDZXjebSXC
	P/71wuyMQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPL3v-000uaE-PA; Thu, 25 Mar 2021 08:09:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPL3S-000uRv-Uy
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 08:09:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lPL3O-00079r-LQ; Thu, 25 Mar 2021 09:09:18 +0100
To: Michael Graichen <michael.graichen@hotmail.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
References: <AM9P192MB0870C727E2A97796E63AC256AB629@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0e0fe923-da8b-f39e-1834-4c0176e80b95@pengutronix.de>
Date: Thu, 25 Mar 2021 09:09:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <AM9P192MB0870C727E2A97796E63AC256AB629@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_080925_574671_E581D9D9 
X-CRM114-Status: GOOD (  13.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] added support for zynq7000-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Michael,

On 25.03.21 08:53, Michael Graichen wrote:
> +	reg = readl(mgr->regs + CTRL_OFFSET);
> +	reg &= ~CTRL_PCFG_PROG_B_MASK;
> +	writel(reg, mgr->regs + CTRL_OFFSET);
> +
> +	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
> +			!(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);

Perhaps exit if a timeout occurred? Unchecked readx_poll_timeout looks odd.

> +	/* Check for errors */
> +	if(reg & INT_STS_ERROR_FLAGS_MASK) {

Missing space

> +		printf("interrupt status register (0x%04lx)\n", reg);

Better use pr_warn and co here with a suitable pr_fmt at top:

 - Messages will indicate where the error came from
 - Messages can be formatted according to severity
 - Messages will go into the barebox log, which Linux could read out via
   pstore if needed.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

