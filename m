Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxwgo-0004ZR-9B
 for barebox@lists.infradead.org; Thu, 06 Sep 2018 15:59:28 +0000
Received: by mail-wm0-x242.google.com with SMTP id t25-v6so11794948wmi.3
 for <barebox@lists.infradead.org>; Thu, 06 Sep 2018 08:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <20180830050207.13192-1-andrew.smirnov@gmail.com>
 <20180906074834.kif6qcaqfcde26rt@pengutronix.de>
In-Reply-To: <20180906074834.kif6qcaqfcde26rt@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 6 Sep 2018 08:59:02 -0700
Message-ID: <CAHQ1cqFCNsjXex6-7fT-72-EzAU+KQbWbky8P-hOtY7aOLvjog@mail.gmail.com>
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
Subject: Re: [PATCH v2] clk: i.MX: Port Linux clock tree for i.MX51 and i.MX53
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 6, 2018 at 12:48 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Aug 29, 2018 at 10:02:07PM -0700, Andrey Smirnov wrote:
> > Existing clock tree code for i.MX5 in Barebox predates DT and is not
> > aware of it. This results in missing clocks on DT-based boards like
> > RDU1 and Babbage. Port clock tree from Linux to resolve this
> > problem. Old non-DT clock code is kept around for the sake of the
> > boards that were never converted to use DT.
>
> Overall I am not happy with this patch.
>
> With this patch we now have two clock drivers for the i.MX5 - not only
> in the source tree but also in the binaries.
>
> Yesterday I tried fleshing out the differences between both drivers. I
> renamed "clks" to "clk", adjusted whitespaces, changed register defines
> to the pattern "#define MXC_CCM_xxx (ccm_base + 0x*)". What I got was
> quite a bit closer to the kernel driver but still not there. It revealed
> some bugs in the kernel driver though. There are several differences in
> the register layout between the i.MX50 and the i.MX51/53 (See
> IMX5_CLK_ESDHC_A_SEL for example, MXC_CCM_CSCMR1[20:21] on i.MX51/53 and
> MXC_CCM_CSCMR1[21:22] on the i.MX50). These are correctly abstracted
> in the current barebox driver but not in the Linux driver, see
> mx5_clocks_mx51_mx53_init() which doesn't exist in the Linux driver.
>
> So by switching to the Kernel clk driver we introduce a bunch of new
> bugs into barebox which of course is unfortunate.
>
> Finally your patch does not compile on some configs
> (efika-mx-smartbook_defconfig for example) since COMMON_CLK_OF_PROVIDER
> is not selected. That's rather simple to fix of course.
>
> Which clocks are you missing? Maybe it would be better to add the
> missing clocks to the barebox clock driver instead of adding a new one?
>

There's already a patch for that for original driver:
http://lists.infradead.org/pipermail/barebox/2018-August/034413.html
My hope was to use this as an opportunity to switch to using kernel
code, but if we don't really want to pay the price for that, then I
think Michael's patch should work just fine.

Also, just out of curiosity, are you planning to upstream the fixes
for bugs in kernel driver you found?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
