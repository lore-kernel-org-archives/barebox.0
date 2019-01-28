Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goCOq-0001Li-Ki
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 19:16:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id t200so15272418wmt.0
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 11:16:52 -0800 (PST)
MIME-Version: 1.0
References: <20190128081230.13165-1-andrew.smirnov@gmail.com>
 <20190128081230.13165-3-andrew.smirnov@gmail.com>
 <20190128090901.jqjb3gfj6minp6eb@pengutronix.de>
In-Reply-To: <20190128090901.jqjb3gfj6minp6eb@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 11:16:39 -0800
Message-ID: <CAHQ1cqHg3ZungmWnd8OOamsGw03Zq9soUqsN-NDPd0ENq9iLHw@mail.gmail.com>
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
Subject: Re: [PATCH v2 3/3] ARM: i.MX: Add support for ZII i.MX8MQ based
 devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 28, 2019 at 1:09 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Mon, Jan 28, 2019 at 12:12:30AM -0800, Andrey Smirnov wrote:
> > Add support for the following ZII i.MX8MQ based boards:
> >
> >    - ZII i.MX8MQ RMB3
> >    - ZII i.MX8MQ Zest
> >
> > Most of the basic peripherals are supported by this patch. More
> > advanced features such as PCIe, display support, etc, are planned to
> > be added later.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >
> > diff --git a/arch/arm/configs/zii_v8_defconfig b/arch/arm/configs/zii_v8_defconfig
> > new file mode 100644
> > index 000000000..3a34bb7aa
> > --- /dev/null
> > +++ b/arch/arm/configs/zii_v8_defconfig
>
> I am trying to keep the number of defconfigs low, so I would pretty much
> prefer adding the new board to imx_v8_defconfig instead.
>
> Otherwise looks good to me.
>

OK, will do in v3.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
