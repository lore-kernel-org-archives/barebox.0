Delivery-date: Fri, 11 Jun 2021 13:47:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfdP-0005Z9-Bf
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 13:47:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrfdO-0002dx-FP
	for lore@pengutronix.de; Fri, 11 Jun 2021 13:47:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJeFw1kDuaCLAgMzmbubG+Ipb9q4fl3l8FmGHdjdb3w=; b=POdkCCN5OhTLGD
	xNO3rJFn6yU+VxKiHue4H2sOUhPG+5N1kzrAVoyo/ZGCntFXWxDt+YhjNSa37Ge4SiHfaGnJeKW2w
	y46E/Zmznu2Uz7Uio+2xBZuMxFxKjGmKVa8j6vcZMH6hX/hOB3F5ucURJI7kdTTU8hfEDgf9yDGiC
	yrQdMFT9uM9NzHBSX8Sd6k4UiN0sCUIhgUbgtkNsRx/YXYNKseL9To2jy1isdxzxd6ZlpYp9KQPKt
	cRGEuiKBLrcXiLOUVZtqYxn2s7tjM8pADuwMycAdO3jSjRJ47OSrlT2s0aJ65dx1Moj9emc10res3
	EUiMYFyD77JrnEJapa/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrfc5-005620-53; Fri, 11 Jun 2021 11:46:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrfbx-0055zX-UB
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 11:46:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrfbw-0002OL-Gu; Fri, 11 Jun 2021 13:46:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrfbw-0006Cb-7e; Fri, 11 Jun 2021 13:46:04 +0200
Date: Fri, 11 Jun 2021 13:46:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210611114604.GD20470@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
 <20210602095507.24609-5-s.hauer@pengutronix.de>
 <6dde4130-1f96-d925-9e53-9f8c74d89a1f@pengutronix.de>
 <20210611084107.GC22904@pengutronix.de>
 <791dae7e-82b4-ae55-799d-8dd164b24f0c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <791dae7e-82b4-ae55-799d-8dd164b24f0c@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:43:53 up 113 days, 15:07, 122 users,  load average: 0.06, 0.14,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_044605_998485_A36FCD7F 
X-CRM114-Status: GOOD (  27.36  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/24] clk: introduce struct clk_hw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 11, 2021 at 11:19:12AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11.06.21 10:41, Sascha Hauer wrote:
> > On Fri, Jun 11, 2021 at 09:55:36AM +0200, Ahmad Fatoum wrote:
> >> Hello Sascha,
> >>
> >> On 02.06.21 11:54, Sascha Hauer wrote:
> >>
> >>> In Linux the ops in struct clk_ops take a struct clk_hw * argument
> >>
> >>> instead of a struct clk * argument as in barebox. With this taking
> >>
> >>> new clk drivers from Linux requires a lot of mechanical conversions.
> >>
> >>> Instead of doing this over and over again swallow the pill once and
> >>
> >>> convert the existing barebox code over to clk_hw.
> >>
> >>>
> >>
> >>> The implementation is a little different from Linux. In Linux struct clk
> >>
> >>> is only known to the core clock code. In barebox struct clk is
> >>
> >>> publically known and it is embedded into struct clk_hw. This allows
> >>
> >>> us to still use struct clk members in the clock drivers which we
> >>
> >>> currently still need, because otherwise this patch would be even
> >>
> >>> bigger.
> >>
> >>>
> >>
> >>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>
> >> drivers/clk/sifive, which was added recently doesn't have these changes
> >> and thus the build fails. To reproduce, without installed RISC-V toolchain, try:
> >>
> >>    ./test/emulate.pl --runtime=podman sifive_defconfig
> > 
> > Can't exec "tuxmake": No such file or directory at ./test/emulate.pl line 377.
> > 
> > Where do I get this from?
> 
> pip3 install tuxmake

Now it complains about missing podman... /me waits for Debian 11.

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

