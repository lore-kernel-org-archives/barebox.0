Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwPhp-0007Fi-6o
 for barebox@lists.infradead.org; Tue, 18 Oct 2016 08:25:06 +0000
Received: by mail-lf0-x232.google.com with SMTP id l131so15001871lfl.2
 for <barebox@lists.infradead.org>; Tue, 18 Oct 2016 01:24:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201610181017.27843.jbe@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610181017.27843.jbe@pengutronix.de>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Tue, 18 Oct 2016 10:24:37 +0200
Message-ID: <CABvwO2AvfKwc==BhRfw14CzeX4ALwAFp5Zxn1t0MEj2bsn50zQ@mail.gmail.com>
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
Subject: Re: Loading kernel issues
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Yes I did it and the values are ok. When I get home I'll send my config file!

Thanks

2016-10-18 10:17 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
> Hi Javier,
>
> On Sunday 16 October 2016 23:06:15 Javier Fileiv wrote:
>> I've just flashed barebox on my Mini2440. I have 2 questions/issues now
>>
>> 1) When trying to load the kernel from TFTP, everything is ok but when
>> it's trying to mount the rootfs something is not working, even though
>> I set the rootdelay param to 5 secs.
>>
>> 2) I tried also the boot from nand and is working just fine, but there
>> no is auto boot when reseting the board... it just give me the barebox
>> prompt each time, and if i run from there boot nand it works OK, but
>> no automaGically. :)
>
> Did you modify the "/env/config"[1] file to define the default boot source?
>
> Cheers,
> Juergen
>
> [1] "kernel_loc" and "rootfs_loc"
>
> --
> Pengutronix e.K.                              | Juergen Borleis             |
> Industrial Linux Solutions                    | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
