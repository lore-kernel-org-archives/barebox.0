Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTky2-0005sA-VK
 for barebox@lists.infradead.org; Thu, 23 May 2019 10:29:00 +0000
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
 <1558605680.5135.4.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2b0a2e0d-e2f2-de05-de37-c4c0e41b2b37@pengutronix.de>
Date: Thu, 23 May 2019 12:28:54 +0200
MIME-Version: 1.0
In-Reply-To: <1558605680.5135.4.camel@pengutronix.de>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/5] clk: imx6: remove quirky
 clk_set_parent(LDB_diN_sel, pll5_video_div)
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, pza@pengutronix.de, Raphael Poggi <poggi.raph@gmail.com>



On 23/5/19 12:01, Philipp Zabel wrote:
> On Tue, 2019-05-21 at 17:56 +0200, Ahmad Fatoum wrote:
>> barebox has inherited the clk_set_parent(ldb_diN_sel, pll5_video_div)
>> from upstream kernel commit 32f3b8da22 ("ARM i.MX6q: set the LDB serial
>> clock parent to the video PLL"), where it was enabled for all i.MX6Q
>> revisions after 1.0. It was applied whenever CONFIG_DRIVER_VIDEO_IMX_IPUV3
>> was defined.
>>
>> The kernel removed this reparenting again as a preventive measure
>> against ERR009219 in 03d576f202 ("clk: imx6: Make the LDB_DI0 and
>> LDB_DI1 clocks read-only").
>>
>> As the kernel used the device tree compatible, which is the same
>> for e.g. i.MX6Solo and DualLite, but barebox queried ANATOP which
>> lists different CPU types for i.MX6Solo and DualLite and because
>> i.MX6QuadPlus wasn't supported at first, barebox grew to do
>> the reparenting on the odd set of:
>>   - Quad and Dual rev >1.0
>>   - DualLite
>>   - Solo rev >1.0
>>   - QuadPlus and DualPlus rev >1.0
>>
>> On all of these, except for the QuadPlus and the DualPlus, this
>> reparenting may glitch the LDB so that it permanently locks up.
>>
>> By removing the reparenting in this commit, producing this glitch is
>> avoided, unless the device tree[1] reinstates the old behavior:
>>
>> 	&clks {
>> 		assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
>> 				  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
>> 		assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
>> 					 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
>> 	};
>>
>> Follow-up patches will explicitly check for this and do the reparenting
>> in a glitch-free manner.
>>
>> As of v2019.03.0, following mainline boards are potentially broken
>         ^^^^^^^^^^
> This Barebox version is out of date.

git diff --name-status v2019.03.0..upstream/next arch/arm/dts | grep ^A.*imx6

reports only one i.MX6UL board, so the list is still accurate,
just the header isn't.


> 
>> by this (i.e. they're supported by barebox, are in the list above,
>> had a LDB enabled and might be defining CONFIG_DRIVER_VIDEO_IMX_IPUV3):
>>   - imx6qdl-zii-rdu2.dtsi
>>   - imx6qdl-udoo.dtsi
>>   - imx6qdl-mba6x.dtsi
>>   - imx6q-var-custom.dts
>>   - imx6q-guf-santaro.dts
>>   - imx6q-embedsky-e9.dtsi
> 
> Besides RDU2 and Santaro these are all development boards.
> UDOO, E9, and MBa6x have monitor connectors, so using PLL5 for LVDS may
> be the wrong thing anyway, depending on the connected panel, and on
> whether the HDMI/DVI connector is going to be used.
> 
> For RDU2 and Santaro I think we need the above DT change. Both don't
> have HDMI connectors, which makes PLL5 the correct clock to use, and I
> can't see any other place where LDB_DI clocks are switched to it.

I see. Andrey and Sascha added those, so I'll leave it to them to decide.
 

> 
>> [1]: If barebox is configured to show a boot splash screen, this snippet
>>      should exist in the barebox device tree. If barebox acts on it, the
>>      kernel will show following warning:
>>          ccm: ldb_di0_sel already changed from reset value: 0
>>          ccm: ldb_di1_sel already changed from reset value: 0
>>      This warning is safe to ignore.
>>
>> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
>> Cc: Raphael Poggi <poggi.raph@gmail.com>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Apart from that,
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Thanks for the review!

Cheers
Ahmad

> 
> regards
> Philipp
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
