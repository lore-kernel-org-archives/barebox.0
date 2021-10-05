Delivery-date: Tue, 05 Oct 2021 09:07:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXeXw-0008HQ-1x
	for lore@lore.pengutronix.de; Tue, 05 Oct 2021 09:07:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXeXv-0002uc-5F
	for lore@pengutronix.de; Tue, 05 Oct 2021 09:07:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Neb3VtcJ2ZMUSvAtC3O37wCqVo4+w8pC6pWn+pahRt4=; b=OyOznJaI6y6bUqySGZbnTRA/FG
	NcHjI7gHL513B15YdblQ+pbNyESOtPhP1L9VrTYm4OUWviXLuoIA8a3lXKoUKhlmunhJ+M/5URI5t
	KwxILbsMXX6dxrPtbkHFyuC4TwulZvW1DNs8QDJI1GV2tv5UNQe7b+FL+/UK+GG33lsHxKxRJHBvW
	4Qy/N1wNmvz6qy8sjQ8tlMtL6nL+MD8Kb+gwJ77LxkFhubznoW2JQkBMU8d1XxN4itLS7IuGfJZoK
	4kLVhoFbL93AWiR0jQm5BJTsvKpo8kpxSX9J/BWV+jYedXS6wB0XgULAcsT8AUr5LFmr9smQUKcYY
	NnXGNz8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXeWh-009G0e-2i; Tue, 05 Oct 2021 07:06:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXeWa-009Fyu-EA
 for barebox@lists.infradead.org; Tue, 05 Oct 2021 07:06:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXeWY-0002k4-M8; Tue, 05 Oct 2021 09:06:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXeWY-0001Wl-25; Tue, 05 Oct 2021 09:06:02 +0200
Date: Tue, 5 Oct 2021 09:06:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Trent Piepho <tpiepho@gmail.com>
Message-ID: <20211005070602.GA25124@pengutronix.de>
References: <20211001100949.6891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211001100949.6891-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:05:43 up 229 days, 10:29, 121 users,  load average: 0.23, 0.29,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_000604_498567_51E6BBBF 
X-CRM114-Status: GOOD (  19.57  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/8] ARM: i.MX8M: add nano support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 01, 2021 at 12:09:41PM +0200, Ahmad Fatoum wrote:
> The i.MX8MN is basically a downsized i.MX8MM, but got also shares
> some details with the i.MX8MP. This series adds SoC and EVK board
> support. Main thing missing is imx-usb-loader support:
> 
>   found i.MX8MN USB device [1fc9:013e]
> 
>   4 in err=-7, last_trans=0  00 00 00 00
>   status failed
> 
> And no serial output indicating PBL started up, but that can
> follow later.
> 
> Series applies on top of
>  <20210830115325.24905-1-a.fatoum@pengutronix.de>
>  <20210830115156.21907-1-a.fatoum@pengutronix.de>
>  <20210924031446.1515172-1-tpiepho@gmail.com>
> 
> 
> v1 -> v2:
>   - dropped DDR-1067MHz fix ported from U-Boot in favor
>     of Trent's refactor
> 
> Ahmad Fatoum (8):
>   ARM: i.MX: add i.MX8MN (Nano) SoC support boilerplate
>   clk: imx: add i.MX8MN (Nano) support
>   ARM: i.MX8MN: adapt early clock support
>   ARM: i.MX: extend drivers for i.MX8MN (Nano) support
>   ddr: imx8m: add i.MX8MN (Nano) support
>   ddr: imx8m: ddrphy_train: add DDR4 support
>   scripts: imx: add i.MX8MN support to imx-image
>   ARM: i.MX8MN: add i.MX8MN-EVK support

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

