Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNda-000536-CG
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 14:17:23 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1]
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iKNdY-0000br-Vi
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 16:17:20 +0200
References: <CAEp+FuCjbdBi8JKEg_pesy-9OeDYzKh7zJFQRDqQqYqws=XBUg@mail.gmail.com>
 <20191011072110.dgtegrdzkojwco3u@pengutronix.de>
 <CAEp+FuAi6+cUSxk0pXVOpKoE=GPCxU9QubzdDdgcLP9hvMzcbg@mail.gmail.com>
 <CAEp+FuCHiycZ-LSfVkcUSN5Nv+Bj0X8==0UkJjP9ET+udnv8sQ@mail.gmail.com>
 <CAEp+FuBNZ5v3fVHAW8zWCGTaQJLZo0PyW=narnvG8z_7Lw=MjQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <bf21c116-8293-1773-6271-f066be5fd477@pengutronix.de>
Date: Tue, 15 Oct 2019 16:17:20 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuBNZ5v3fVHAW8zWCGTaQJLZo0PyW=narnvG8z_7Lw=MjQ@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: MFGTools from NXP
To: barebox@lists.infradead.org

Hello,

On 10/15/19 4:07 PM, Mihaita Ivascu wrote:
> Hello,
> 
>    does anyone have experience with using imx_usb_loader to flash the
> barebox on a NAND(mtd partition)? If yes some reference scripts would
> be helpful for me. Or where should I look for an example?

Check out this thread:
https://www.spinics.net/lists/u-boot-v2/msg37199.html

TL;DR: imx_usb_loader to get barebox into SDRAM, then Android Fastboot for flashing

> 
> Thanks,
>       Mihaita Ivascu
> 
> 



-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
