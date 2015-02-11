Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLaXt-00034D-5r
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 16:53:50 +0000
Received: by mail-we0-f177.google.com with SMTP id l61so4696094wev.8
 for <barebox@lists.infradead.org>; Wed, 11 Feb 2015 08:53:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150211084315.GJ12209@pengutronix.de>
References: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
 <1423578481-25230-2-git-send-email-dbrainard@brainardinsight.com>
 <54DABFB8.7030107@atmel.com>
 <20150211084315.GJ12209@pengutronix.de>
Date: Wed, 11 Feb 2015 09:53:25 -0700
Message-ID: <CA+nEJik9t78SE16mv4a5kexSYStQ+6n5Rvx-wYQrxSfB4DUsAA@mail.gmail.com>
From: Doug Brainard <dbrainard@brainardinsight.com>
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
Subject: Re: [PATCH 2/2] Switched SAMA5D4EK development board to the newer
 environment method.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

>> bootargs.base is unused, this file should be removed.

My next patch attempt will have "bootargs.base" removed, and it will
attempt to boot from "nand" and then fall back to "net" if the nand is
not programmed.

Just waiting on clarification on the "nand0." question when you get in tomorrow.

Thanks,

Doug

On Wed, Feb 11, 2015 at 1:43 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Wed, Feb 11, 2015 at 10:34:32AM +0800, Bo Shen wrote:
>> >diff --git a/arch/arm/boards/sama5d4ek/env/nv/bootargs.base b/arch/arm/boards/sama5d4ek/env/nv/bootargs.base
>> >new file mode 100644
>> >index 0000000..476b1fb
>> >--- /dev/null
>> >+++ b/arch/arm/boards/sama5d4ek/env/nv/bootargs.base
>> >@@ -0,0 +1 @@
>> >+console=ttyS0,115200
>>
>> Till now, I don't know the difference between "bootargs.base" (here
>> maybe linux.bootargs.base (?)) and "linux.bootargs.console"
>
> bootargs.base is unused, this file should be removed.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
