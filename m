Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpBDU-0007Pp-JD
 for barebox@lists.infradead.org; Tue, 27 May 2014 06:50:33 +0000
Received: by mail-we0-f177.google.com with SMTP id x48so8849869wes.22
 for <barebox@lists.infradead.org>; Mon, 26 May 2014 23:50:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140527054213.GM15686@pengutronix.de>
References: <1401127952-10811-1-git-send-email-franck.jullien@gmail.com>
 <CAJfOKBx0YcSYarHJsE0FKJ5R5WVecPL=oLO+YPXGXpvs4YAg7A@mail.gmail.com>
 <20140527054213.GM15686@pengutronix.de>
Date: Tue, 27 May 2014 08:50:08 +0200
Message-ID: <CAJfOKBw9ZtwL-=QNhQ5=AZXsrRrJr0ij-oxAiWQnyReRr8cxjQ@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cfi_flash: show progress while during erase
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

2014-05-27 7:42 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Mon, May 26, 2014 at 08:20:52PM +0200, Franck Jullien wrote:
>> Sascha,
>>
>> Any reason why you removed the progress bar here in this commit:
>> 2749fbac48374b5f5ced ?
>
> The reason was that with the conversion of the cfi driver to mtd the
> loop over the erase blocks was no longer in the cfi driver but in the
> mtd layer. So if you see a progress bar for each erased block. You are
> probably irritated because of this patch which came in later:
>
> | commit 0d7ac7c3817e006cc4e258522a989642f1be1538
> | Author: Sascha Hauer <s.hauer@pengutronix.de>
> | Date:   Sat May 25 00:16:31 2013 +0200
> |
> |     mtd: call mtd_erase with complete area if possible
> |
> |     If a device does not have bad blocks loop over the eraseblocks
> |     in the driver instead of the core. This allows the mtd_dataflash
> |     driver to erase blocks instead of pages to gain more speed during
> |     erasing. Also the mtd_dataflash driver modifies the erase_info
> |     struct which causes the outer loop in the core to never end.
> |
> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> |
> | diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> | index 61744b6..f358098 100644
> | --- a/drivers/mtd/core.c
> | +++ b/drivers/mtd/core.c
> | @@ -107,6 +107,12 @@ static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
> |       memset(&erase, 0, sizeof(erase));
> |       erase.mtd = mtd;
> |       erase.addr = offset;
> | +
> | +     if (!mtd->block_isbad) {
> | +             erase.len = count;
> | +             return mtd_erase(mtd, &erase);
> | +     }
> | +
> |       erase.len = mtd->erasesize;
> |
> |       while (count > 0) {
>
> This moves the eraseblock iteration back into the drivers when the
> device does not have bad blocks, which is the case for cfi flashes.
>

Ok. So brings back the progress bar in the cfi_flash driver is good.

For NAND devices we could add a progress bar in the mtd core file.
However, I don't have a nand on my board so I can't test it.

Now, what would you think if we had a command line option to make
erase quiet (-q) ?
By default we would have a progress bar displayed.

Franck.

> Sascha
>
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
