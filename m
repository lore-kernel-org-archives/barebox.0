Delivery-date: Fri, 02 Sep 2022 16:04:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oU7HU-004QcZ-03
	for lore@lore.pengutronix.de; Fri, 02 Sep 2022 16:04:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oU7HU-0005eW-7O
	for lore@pengutronix.de; Fri, 02 Sep 2022 16:04:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yqGylCWyX9U6tx210neGkcXEJyiD7IWnL3LcdCDun5s=; b=QPTzHzTuJMDzsIs3IgKRsYozxi
	q5lc9CQnSgvNX7++9sNPodGhXshdakIKAcUfQMVbsEXEN0jdk215kPtTQ+dWCTRRB/oKa5JdIObJ7
	wF7CFH35cGrLnWmESJKQvS4NyGVRwZE3cKW4u+pKg+wjtyyBmxeOLsYd0Z6hZUkEWEdEDq4q1Fd2/
	vk9rVuDtkAC5sxOGb6JXxiV1JhLKyAjIwLDUUIUgKLTm+uju1OqIvRqcyd1j5kf2HxAUrIed0zcm/
	wM0ansX8/cjLhYbkVCdmWxSYj0CT4tkw98nOn73DjgR1aGfXFGA56P5Vx/rsoYpBmYJ9/hBgXWVPj
	mki8wLfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU7Fs-005MgA-1v; Fri, 02 Sep 2022 14:02:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU7Fm-005Mc6-J9
	for barebox@lists.infradead.org; Fri, 02 Sep 2022 14:02:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oU7Fg-0005GW-HK; Fri, 02 Sep 2022 16:02:32 +0200
Message-ID: <5a0c3e08-e47c-d01c-aa9a-b41da6a3f4af@pengutronix.de>
Date: Fri, 2 Sep 2022 16:02:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220830083937.466171-1-j.zink@pengutronix.de>
 <20220830150522.GI24324@pengutronix.de>
 <ea03c971490b991a53b332beaded392862525f50.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ea03c971490b991a53b332beaded392862525f50.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_070238_647283_800423CB 
X-CRM114-Status: GOOD (  28.32  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] clks: imx7: fix initial clock setup with deep probe
 enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 31.08.22 10:21, Johannes Zink wrote:
> Hi Sascha,
> 
> On Tue, 2022-08-30 at 17:05 +0200, Sascha Hauer wrote:
>> On Tue, Aug 30, 2022 at 10:39:37AM +0200, Johannes Zink wrote:
>>> We register the i.MX7 clock controller driver at core_initcall
>>> level and
>>> then do some initial clock setup/reparenting at postcore_initcall
>>> level.
>>> This doesn't work as expected when deep probe is enabled, because
>>> while
>>> the driver is registered at core_initcall level, it's only probed
>>> later on, currently at postcore_initcall level because it's a
>>> dependency
>>> of the timer for which of_ensure_device_probed is called.
>>>
>>> As the initial clock setup is also at postcore_initcall level, it's
>>> no
>>> longer guaranteed that the code executes in the same order. Fix
>>> this by
>>> directly doing the setup at the end of the probe function.
>>
>> Does this still work with deep probe disabled?
>>
>> I am asking because this effectively reverts bce79428773 ("clk:
>> i.MX7: do
>> clock reparenting when all clocks are initialized"). Switching all
>> i.MX7 boards to deep probe might be a solution as well.

fixed clocks are registered via CLK_OF_DECLARE, so by the time the
imx7 clock probe runs, they will always be available, independent of
whether deep probe is enabled.

> Though I would not _expect_ any problems here, I would like to check
> that more thoroughly. This will probably take a bit, please stand by.

I looked at this with Johannes and I am puzzled how the problem
that bce79428773 aimed to fix occurred. Could you elaborate?

Thanks,
Ahmad

> 
> Best regards
> Johannes
> 
>>
>>>
>>> Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>>> ---
>>>  drivers/clk/imx/clk-imx7.c | 62 +++++++++++++++++-----------------
>>> ----
>>>  1 file changed, 27 insertions(+), 35 deletions(-)
>>>
>>> diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-
>>> imx7.c
>>> index ffa39d17b0..67876a8404 100644
>>> --- a/drivers/clk/imx/clk-imx7.c
>>> +++ b/drivers/clk/imx/clk-imx7.c
>>> @@ -358,7 +358,32 @@ static int const clks_init_on[] __initconst =
>>> {
>>>  
>>>  static struct clk_onecell_data clk_data;
>>>  
>>> -static int imx7_clk_initialized;
>>> +static void imx7_clk_setup(void)
>>> +{
>>> +       int i;
>>> +
>>> +       clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
>>> +
>>> +       for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
>>> +               clk_enable(clks[clks_init_on[i]]);
>>> +
>>> +       /* use old gpt clk setting, gpt1 root clk must be twice as
>>> gpt counter freq */
>>> +       clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC],
>>> clks[IMX7D_OSC_24M_CLK]);
>>> +
>>> +       /* set uart module clock's parent clock source that must be
>>> great then 80MHz */
>>> +       clk_set_parent(clks[IMX7D_UART1_ROOT_SRC],
>>> clks[IMX7D_OSC_24M_CLK]);
>>> +
>>> +       clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
>>> +       clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
>>> +       clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
>>> +       clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
>>> +
>>> +       clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
>>> +       clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC],
>>> clks[IMX7D_PLL_SYS_PFD4_CLK]);
>>> +       clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
>>> +       clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
>>> +       clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
>>> +}
>>>  
>>>  static int imx7_ccm_probe(struct device_d *dev)
>>>  {
>>> @@ -806,43 +831,10 @@ static int imx7_ccm_probe(struct device_d
>>> *dev)
>>>         clk_data.clk_num = ARRAY_SIZE(clks);
>>>         of_clk_add_provider(dev->device_node,
>>> of_clk_src_onecell_get, &clk_data);
>>>  
>>> -       imx7_clk_initialized = 1;
>>> -
>>> -       return 0;
>>> -}
>>> -
>>> -static int imx7_clk_setup(void)
>>> -{
>>> -       int i;
>>> -
>>> -       if (!imx7_clk_initialized)
>>> -               return 0;
>>> -
>>> -       clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
>>> -
>>> -       for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
>>> -               clk_enable(clks[clks_init_on[i]]);
>>> -
>>> -       /* use old gpt clk setting, gpt1 root clk must be twice as
>>> gpt counter freq */
>>> -       clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC],
>>> clks[IMX7D_OSC_24M_CLK]);
>>> -
>>> -       /* set uart module clock's parent clock source that must be
>>> great then 80MHz */
>>> -       clk_set_parent(clks[IMX7D_UART1_ROOT_SRC],
>>> clks[IMX7D_OSC_24M_CLK]);
>>> -
>>> -       clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
>>> -       clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
>>> -       clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
>>> -       clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC],
>>> clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
>>> -
>>> -       clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
>>> -       clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC],
>>> clks[IMX7D_PLL_SYS_PFD4_CLK]);
>>> -       clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
>>> -       clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
>>> -       clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
>>> +       imx7_clk_setup();
>>>  
>>>         return 0;
>>>  }
>>> -postcore_initcall(imx7_clk_setup);
>>>  
>>>  static __maybe_unused struct of_device_id imx7_ccm_dt_ids[] = {
>>>         {
>>> -- 
>>> 2.30.2
>>>
>>>
>>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


