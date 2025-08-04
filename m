Delivery-date: Mon, 04 Aug 2025 11:42:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiriE-006u1a-0h
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 11:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiriD-0002Rc-Hs
	for lore@pengutronix.de; Mon, 04 Aug 2025 11:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=76Mf0l+lmJG+G1Zx6J89uFm15TNztzzted7ScLf/9k8=; b=e1oCGCSIzxQR3+EDIa7IPK7/2U
	hlxRzzIDTcdFvgoMLbXUanRYuf3L+3zD3Y8wtDWTmjQVkr3Rw9A3V7air2KJG42i2PCeqKyC//UpT
	S6ksip0CqNZWTTiYOO+D6WoXCbxRQ34KGdDzY9buewvSZhM/DZkNJXEkN3YpsPi6ExPaBigc3exJm
	JkVzJ7k+ppGZs7IOXOIUnbj6hTDY5GXsTGtBULrX68QWR6aJspmKhNGE26CNSrvf9dle0CTHI6nS0
	WUiHiHEdCqxGk2gz1PLdwJpxeiHmsxjlysLnlAODkMwShovlvjAHsRfuo8KQiXkVsZ9/paLEsdFjq
	d4WRBTSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uirhQ-0000000A6pf-33wG;
	Mon, 04 Aug 2025 09:41:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uirhN-0000000A6oh-3h7X
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 09:41:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uirhK-0002GH-Bs; Mon, 04 Aug 2025 11:41:38 +0200
Message-ID: <ffe9efb4-78d5-4dc9-b4ea-dde00f0060f6@pengutronix.de>
Date: Mon, 4 Aug 2025 11:41:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anis chali <chalianis1@gmail.com>
References: <20250730035010.3318600-1-chalianis1@gmail.com>
 <c05d5300-4911-40b9-b8e3-a87de43a4c91@pengutronix.de>
 <CAL+1fyCC0V3MO4tmgBJumbdPn7_BhQc-60s3QhGjye0rQQVpPw@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
In-Reply-To: <CAL+1fyCC0V3MO4tmgBJumbdPn7_BhQc-60s3QhGjye0rQQVpPw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_024141_916883_01941519 
X-CRM114-Status: GOOD (  27.85  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: clk-fixed-factor: compile clk of provider only if it
 is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

[adding back barebox mailing list]

On 7/30/25 08:57, anis chali wrote:
> Hi Ahmad, 
> I will check back tomorrow,  but I faced the issue when I compiled efi
> on arm64 using the clocksource efi will compile the stuff inside the
> fixed clock and there is a code using of variant that raised an
> undefined reference but maybe it's all good since arm64 support device
> trees, so adding the config to enable of tree support will eliminate the
> issue.

If there is a build error, it should be fixed. I was just wondering how
you ran into it.

Cheers,
Ahmad

> 
> Cheers, 
> Anis
> 
> 
> Le mer. 30 juil. 2025, 02:23, Ahmad Fatoum <a.fatoum@pengutronix.de
> <mailto:a.fatoum@pengutronix.de>> a écrit :
> 
>     Hi Anis,
> 
>     On 30.07.25 05:50, chalianis1@gmail.com
>     <mailto:chalianis1@gmail.com> wrote:
>     > From: Chali Anis <chalianis1@gmail.com <mailto:chalianis1@gmail.com>>
>     >
>     > This permits to not compile when it's not used, fix undefined
>     > reference error.
> 
>     Normally undefined references are garbage collected by the linker if
>     the code that references them is going to be discarded as well.
> 
>     We have configurations with and without OF support that make use
>     of clocks in CI I think, so I am curious to know what configuration
>     you used to provoke the error.
> 
>     Cheers,
>     Ahma
> 
>     >
>     > Signed-off-by: Chali Anis <chalianis1@gmail.com
>     <mailto:chalianis1@gmail.com>>
>     > ---
>     >  drivers/clk/clk-fixed-factor.c | 3 +++
>     >  1 file changed, 3 insertions(+)
>     >
>     > diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-
>     fixed-factor.c
>     > index d2c808d40c63..ea04a4bf7f0f 100644
>     > --- a/drivers/clk/clk-fixed-factor.c
>     > +++ b/drivers/clk/clk-fixed-factor.c
>     > @@ -97,6 +97,8 @@ struct clk_hw
>     *clk_hw_register_fixed_factor(struct device *dev,
>     >                                                      flags, mult,
>     div));
>     >  }
>     > 
>     > +#ifdef CONFIG_COMMON_CLK_OF_PROVIDER
>     > +
>     >  /**
>     >   * of_fixed_factor_clk_setup() - Setup function for simple fixed
>     factor clock
>     >   */
>     > @@ -130,3 +132,4 @@ static int of_fixed_factor_clk_setup(struct
>     device_node *node)
>     >  }
>     >  CLK_OF_DECLARE(fixed_factor_clk, "fixed-factor-clock",
>     >               of_fixed_factor_clk_setup);
>     > +#endif
> 
> 
>     -- 
>     Pengutronix e.K.                           |                       
>          |
>     Steuerwalder Str. 21                       | http://
>     www.pengutronix.de/ <http://www.pengutronix.de/>  |
>     31137 Hildesheim, Germany                  | Phone:
>     +49-5121-206917-0    |
>     Amtsgericht Hildesheim, HRA 2686           | Fax: 
>      +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



