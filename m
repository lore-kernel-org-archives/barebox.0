Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x229.google.com ([2a00:1450:400c:c09::229])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ep7xe-00008f-8m
 for barebox@lists.infradead.org; Fri, 23 Feb 2018 07:40:08 +0000
Received: by mail-wm0-x229.google.com with SMTP id a20so5675664wmd.1
 for <barebox@lists.infradead.org>; Thu, 22 Feb 2018 23:39:54 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180223073320.6ubvlzyg76vc72ot@pengutronix.de>
References: <CAGm1_ksaqOepiKg2yRHaH2Bs+fur2ujDQEiDmaAD0HYADxj6Vw@mail.gmail.com>
 <20180223073320.6ubvlzyg76vc72ot@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 23 Feb 2018 08:39:33 +0100
Message-ID: <CAGm1_ku46ngVkkDQ-Cnt4FCGKgEWjeqmuPT7mA60xw2hq3HT2Q@mail.gmail.com>
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
Subject: Re: linux.bootargs: export mtdparts from DTS
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Feb 23, 2018 at 8:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Yegor,
>
> On Fri, Feb 23, 2018 at 08:26:56AM +0100, Yegor Yefremov wrote:
>> My board will be configured via DTS file, that contains an MTD
>> partition table [1]. How can it be automatically exported to
>> global.inux.bootargs.mtdparts?
>>
>> [1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/am335x-baltos-minimal.dts#n217
>
> Why would you want to do that? You are not going to start an ancient
> kernel with ATAG support, are you?

So far I'm using ancient LTS 3.18.x kernel with this DTS [1] and
packaging it via FIT.

[1] https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vscom/dts/3.15/onrisc-baltos-ir-5221.dts

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
