Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gg0-f177.google.com ([209.85.161.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV5Vq-0003mP-20
 for barebox@lists.infradead.org; Thu, 17 May 2012 18:33:22 +0000
Received: by ggcs5 with SMTP id s5so2439280ggc.36
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 11:33:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120517175244.GH30400@pengutronix.de>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
 <1337088040-24138-3-git-send-email-agalakhov@gmail.com>
 <20120517175244.GH30400@pengutronix.de>
Date: Fri, 18 May 2012 00:33:20 +0600
Message-ID: <CA+LT+-RAgWNppoAc44pBHJe7ik-nKgM6tRsJmCAwmMm7J_DbNw@mail.gmail.com>
From: Alexey Galakhov <agalakhov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] Split S3C generic and S3C24xx specific code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

2012/5/17 Sascha Hauer <s.hauer@pengutronix.de>:
> Still you convert two different functions to a common name. Once again:
> Please keep s3c24xx_get_memory_size and add a s5p_get_memory_size
> function for the s5p SoC.
> It turned out to be useful when functions (or defines) have a spcific
> SoC name in them. This way you always know in which context a function
> is valid. Also it makes it possible to compile in all (in this case memory
> setup) functions in a single binary.
> I know that we do not follow this rule very strictly in barebox, but I
> won't accept patches that change places that do it right already.

Ok. Sorry.

BTW, there are functions like s3c_get_pclk(), and they are much worse
than get_memory_size regarding their portability. Newer S3Cs have
multiple clock domains, so there is more than one PCLK (i.e.,
MSYS-PCLK and HSYS-PCLK). These functions are declared publilc, not
static, in a header file. They all are used in S3C24x0-specific code
only. Should they be renamed like s3c24xx_get_pclk() ? Should some of
them become static?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
