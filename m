Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg57Y-0005t5-IK
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 10:25:45 +0000
Message-ID: <a5b42175100fef802b9c1fab9f1df2338857bf4e.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 12:25:43 +0200
In-Reply-To: <A90A9CD973E33D419649C1614FE8006F62AEDE03@DEMUC-SMX001.data-modul.local>
References: <24b0cc8b-93b2-ccf8-9b9d-1d618584958e@data-modul.com>
 <c1496d83a1ba4d4a61d69bf04abe4c6965a235a3.camel@pengutronix.de>
 <A90A9CD973E33D419649C1614FE8006F62AEDE03@DEMUC-SMX001.data-modul.local>
MIME-Version: 1.0
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
Subject: Re: AW: load BL31 on imx8mm and imx8mq
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> And what is the reason behind decreasing 16 from returning address:
> 
> MX8MQ_ATF_BL33_BASE_ADDR - 16
> 
> I removed "16" for im8mq in Barebox and still works.

This puts some distance between the stack and your execution address.
As long as nobody is writing to the stack pointer before increasing it
you are save and your return address is not overwritte. Your probably
save anyway since the instructions at the address
MX8MQ_ATF_BL33_BASE_ADDR are only executed once and don't manipulate
the stack.

The stack pointer inherently has nothing to do with the return address,
you just have to make sure that the stack pointer is pointing to a
valid address, othwise you may get aborts on stack usage.

> The PLAT_NS_IMAGE_OFFSET is identical for imx8mq and imx8mm. Do you
> have any idea why the firmware is not returned to this address?
> Do we need to enable any special timer or clock for this point?
> I used the same firmware as I have used in UBoot, thus the firmware
> itself should be correct.

It may be a good idea to build the TF-A yourself and enable the debug
output therein to make sure that TF-A is not missing a crucial setup
step. The TF-A can be found a 
https://source.codeaurora.org/external/imx/imx-atf/
pick one of the release branches, enable the debug console in
plat/imx/imx8mm/include/platform_def.h and build a Debug build with
make plat=imx8mm DEBUG=1.

Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
