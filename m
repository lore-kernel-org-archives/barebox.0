Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaMeI-00036v-9H
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 08:24:10 +0000
Received: by mail-qc0-f177.google.com with SMTP id u28so2978242qcs.36
 for <barebox@lists.infradead.org>; Mon, 19 Nov 2012 00:24:07 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20121119081815.GA8572@greatfirst.com>
References: <20121119081815.GA8572@greatfirst.com>
Date: Mon, 19 Nov 2012 09:24:07 +0100
Message-ID: <CAJfOKByh0QaW_UwoXVztcwR8VmZp8M3w+_95q=xTYYgorTNCxw@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: howto cp to flash
To: barebox <barebox@lists.infradead.org>

2012/11/19 zzs <zzs213@126.com>:
> After download zbarebox.bin to /, I wrote it to flash
>
>    tftp barebox.bin
>    memcpy -b -s./zbarebox.bin -d/dev/nor0.root 0 0
>
> Then I dump both:
>
> # md -s /dev/nor0.root
> 00000000: ffffffff ffffffff ffffffff ffffffff                ................
> 00000010: ffffffff ffffffff ffffffff ffffffff                ................
> 00000020: ffffffff ffffffff ffffffff ffffffff                ................
>
> # md -s ./zbarebox.bin
> 00000000: ea00000a eafffffe eafffffe eafffffe                ................
> 00000010: eafffffe 0000016c eafffffe eafffffe                ....l...........
> 00000020: 65726162 00786f62 23b00000 0002389c                barebox....#.8..
>
> No contents in flash, Why?
>
> Another question:
>
> How can I get file size in script?
>
> --
> Best Regards,
> zzs
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Hi,

Did you erase the flash ?
You can also directly do a tftp barebox.bin /dev/nor0.your_partition

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
