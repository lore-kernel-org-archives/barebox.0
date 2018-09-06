Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxp21-00066d-55
 for barebox@lists.infradead.org; Thu, 06 Sep 2018 07:48:50 +0000
Date: Thu, 6 Sep 2018 09:48:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180906074834.kif6qcaqfcde26rt@pengutronix.de>
References: <20180830050207.13192-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180830050207.13192-1-andrew.smirnov@gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 10:02:07PM -0700, Andrey Smirnov wrote:
> Existing clock tree code for i.MX5 in Barebox predates DT and is not
> aware of it. This results in missing clocks on DT-based boards like
> RDU1 and Babbage. Port clock tree from Linux to resolve this
> problem. Old non-DT clock code is kept around for the sake of the
> boards that were never converted to use DT.

Overall I am not happy with this patch.

With this patch we now have two clock drivers for the i.MX5 - not only
in the source tree but also in the binaries.

Yesterday I tried fleshing out the differences between both drivers. I
renamed "clks" to "clk", adjusted whitespaces, changed register defines
to the pattern "#define MXC_CCM_xxx (ccm_base + 0x*)". What I got was
quite a bit closer to the kernel driver but still not there. It revealed
some bugs in the kernel driver though. There are several differences in
the register layout between the i.MX50 and the i.MX51/53 (See
IMX5_CLK_ESDHC_A_SEL for example, MXC_CCM_CSCMR1[20:21] on i.MX51/53 and
MXC_CCM_CSCMR1[21:22] on the i.MX50). These are correctly abstracted
in the current barebox driver but not in the Linux driver, see
mx5_clocks_mx51_mx53_init() which doesn't exist in the Linux driver.

So by switching to the Kernel clk driver we introduce a bunch of new
bugs into barebox which of course is unfortunate.

Finally your patch does not compile on some configs
(efika-mx-smartbook_defconfig for example) since COMMON_CLK_OF_PROVIDER
is not selected. That's rather simple to fix of course.

Which clocks are you missing? Maybe it would be better to add the
missing clocks to the barebox clock driver instead of adding a new one?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
