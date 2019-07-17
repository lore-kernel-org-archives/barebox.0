Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnYkF-0006H1-CY
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 01:28:36 +0000
Received: by mail-io1-xd43.google.com with SMTP id g20so43136385ioc.12
 for <barebox@lists.infradead.org>; Tue, 16 Jul 2019 18:28:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190716134948.8609-1-s.hauer@pengutronix.de>
In-Reply-To: <20190716134948.8609-1-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Jul 2019 18:28:17 -0700
Message-ID: <CAHQ1cqHQRhR4jBCFn24aWb12UFABiiP3XbA2teF-MLL3fgxBXg@mail.gmail.com>
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
Subject: Re: [PATCH 1/5] ARM: Fix global_variable_offset() for aarch64
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jul 16, 2019 at 6:50 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Not all toolchains use pc relative addresses for global variables.
> Apparently the gcc 8.3.0 YOCTO toolchain uses absolute addresses.

Just out of curiosity, can this behavior be changed with -mcmodel=tiny
or maybe -mpc-relative-literal-loads ?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
