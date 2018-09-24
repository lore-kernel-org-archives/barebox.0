Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4QkT-00076T-OM
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 13:18:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id s12-v6so9681820wmc.0
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2018 06:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20180924084547.28914-1-s.hauer@pengutronix.de>
In-Reply-To: <20180924084547.28914-1-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Sep 2018 06:17:37 -0700
Message-ID: <CAHQ1cqHier4cNjvN0_Q=DtjMfO1BKTm53m25fGp=XB9cbaxxnQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: bbu: use full path name for mmcboot handler
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Sep 24, 2018 at 1:46 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> When doing barebox update over fastboot the fastboot code checks for
> existance of file given in the filename argument, so add the "/dev/"
> component to the handler.
> With this fastboot works with the mmcboot handler.
>

I am confused by this patch. What's the status of
http://lists.infradead.org/pipermail/barebox/2018-September/034761.html
then?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
