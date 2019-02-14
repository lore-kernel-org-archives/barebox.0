Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guQWt-00068G-KI
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 23:34:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id a62so8158401wmh.4
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2019 15:34:54 -0800 (PST)
MIME-Version: 1.0
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
 <20190214132429.7463-6-tomaz.solc@tablix.org>
In-Reply-To: <20190214132429.7463-6-tomaz.solc@tablix.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Feb 2019 15:34:42 -0800
Message-ID: <CAHQ1cqEB2sVXmTi6jVn+6VX=SBaoz5dRUo-Z7spvV489ftLhew@mail.gmail.com>
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
Subject: Re: [PATCH 5/7] mci: move after pinctrl in link order.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Feb 14, 2019 at 5:26 AM Tomaz Solc <tomaz.solc@tablix.org> wrote:
>
> pinctrl driver needs to be initialized before mci driver or the pinctrl
> device tree properties in the mci node are ignored. Since mci is already
> initialized by the coredevice_initcall(), changing the link order is currently
> the only way to ensure that.

What about changing pinctrl_config_one() and device_probe() to do
probe deferral if corresponding pinctl is missing? Would this work?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
