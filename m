Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgN3-0000oI-AM
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 07:11:34 +0000
Received: by mail-io1-xd44.google.com with SMTP id k13so3582903iop.5
 for <barebox@lists.infradead.org>; Fri, 14 Jun 2019 00:11:32 -0700 (PDT)
MIME-Version: 1.0
References: <c0432719-ac26-629d-01a0-bcf4106f8357@data-modul.com>
In-Reply-To: <c0432719-ac26-629d-01a0-bcf4106f8357@data-modul.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 14 Jun 2019 00:11:20 -0700
Message-ID: <CAHQ1cqHAz=ZAbUvThUOo8WcB74CgnoWdSgAEOTy_94TE81zwfQ@mail.gmail.com>
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
Subject: Re: Bringup Barebox on imx8mm
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Jun 13, 2019 at 8:14 AM Yazdani, Reyhaneh
<RYazdani@data-modul.com> wrote:
>
> Hello Everyone,
>
> I am trying to bringup Barebox on i.MX8MM-evk.
>
> I have followed all the commits related to the i.MX8MQ and added proper files
> and changes for i.MX8MM-evk board.
>
> The problem is Barebox stops at "ddrc_phy_wait_training_complete" function,
> exactly at sub-function "ddrc_phy_get_message". The read-value from the
>
> phy + DDRC_PHY_REG(0xd0004) is not correct, and it remains in while loop.
>
> I used the ddr_init and ddrphy_train files produced from mscale_ddr_tool of NXP,
> and even compared with the value from U-boot. All are similar.
>
> Does any body have an idea what would be the problem?
>

What about DDR PHY firmware? Is it the same as in working U-boot
image? From what you describe it sounds that DDR PHY is not
responding, so I am wondering if DDR firmware is running. Also, did
you check that various memory offsets in, say
arch/arm/mach-imx/include/mach/imx8-ddrc.h are valid for i.MX8MM and
are not values that MQ specific? Another thing to debug this would be
to trace all of the register reads/writes in working U-Boot vs Barebox
and see what the difference is.

Anyway, just my 2 cents.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
