Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKUjw-0004OV-Q7
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 14:20:41 +0000
Received: by mail-wi0-f176.google.com with SMTP id hm14so916263wib.15
 for <barebox@lists.infradead.org>; Tue, 26 Mar 2013 07:20:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130326132553.GG16050@kryptos>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
 <1364289086-2241-4-git-send-email-s.trumtrar@pengutronix.de>
 <20130326132015.GF16050@kryptos> <20130326132553.GG16050@kryptos>
Date: Tue, 26 Mar 2013 15:20:35 +0100
Message-ID: <CAHTX3dJtwA_Jj6NTTkxf8jheQzesF=Pf2mNcmo1Oibs4HFPSwg@mail.gmail.com>
From: Michal Simek <monstr@monstr.eu>
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
Subject: Re: [PATCH v2 3/5] ARM: zynq: add clk support for zynq7000
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

2013/3/26 Josh Cartwright <joshc@eso.teric.us>:
> On Tue, Mar 26, 2013 at 08:20:15AM -0500, Josh Cartwright wrote:
>> On Tue, Mar 26, 2013 at 10:11:24AM +0100, Steffen Trumtrar wrote:
>> > This adds support for the clocktree on zynq7000 SoCs.
>> > The patch is based on clocks.c from the larger patch
>> >     ARM: zynq: add suppport for Zynq 7000 SoC
>> > by Josh Cartwright.
>> >
>> > The driver in that patch is converted to a platform_driver and code to
>> > enable plls was added.
>> >
>> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>
>> Reviewed-off-by: Josh Cartwright <joshc@eso.teric.us>
>
> Heh, clearly I meant Reviewed-by: .  I should stop reading my email
> before my morning coffee. :)

:-)

M



-- 
Michal Simek, Ing. (M.Eng)
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Microblaze cpu - http://www.monstr.eu/fdt/
Maintainer of Linux kernel - Xilinx Zynq ARM architecture
Microblaze U-BOOT custodian and responsible for u-boot arm zynq platform

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
