Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQG6M-0002HV-9C
 for barebox@lists.infradead.org; Fri, 04 May 2012 10:51:07 +0000
Received: by lbbgg6 with SMTP id gg6so2423292lbb.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 03:51:03 -0700 (PDT)
Message-ID: <4FA3B493.7030002@gmail.com>
Date: Fri, 04 May 2012 16:50:59 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205031941.00662.jbe@pengutronix.de> <4FA3A3BE.2040607@gmail.com>
 <201205041158.25104.jbe@pengutronix.de>
In-Reply-To: <201205041158.25104.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/4] Fine split S3C arch dependencies from generic code
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 04.05.2012 15:58, Juergen Beisert wrote:
> Alexey Galakhov wrote:
>> On 03.05.2012 23:41, Juergen Beisert wrote:
>>>> create mode 100644 arch/arm/mach-samsung/include/mach/s3c-nand.h
>>>> delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
>>>
>>> That is a really bad idea. I just renamed these files at January 2012 to
>>> reflect their CPU (refer b29b8f43d56b62e406349a5cf1ed56f17454c1f7). Why
>>> do you revert this change again? The NAND controller in the S3C24XX CPU
>>> is unique to this CPU. The NAND controller in the S3C6410 differs from
>>> it, and I guess the same is true in the S5 CPU. So, the newer CPUs need
>>> their own NAND drivers.
>>>
>>> What is the sense of renaming these files?
>>
>> In fact, exactly the opposite is true. The NAND controller in S5PV210 is
>> almost exactly the same as in S3C24xx. The only difference is the
>> numbering of registers. Also S5P suports 1-bit and 4-bit HW ECC while
>> S3C has only 1-bit. 
> 
> Does the S5P not support 8 bit ECC? That would be a step backwards and would 
> make it useless for recent MLC NAND devices.

It has two ECC modes, SLC and MLC.

The SLC mode is exactly the same as S3C2440. The MLC mode has "4-8-16-32
bit support". Looks like this is achieved by using the same 4-bit
hardware calculator.

>> The algorithm is the same, even s3c2440_nand_read_buf() works correctly.
> 
> These routines are useless for NANDs of type MLC which are the standard today.

According to the datasheet, the only difference between SLC and MLC
handling from the software point of view is ECC calculation. The block
reading is exactly the same, just reading the data register multiple
times. The ECC engine in both SLC and MLC modes works just like S3C2440.
The only differnce is that one has to set ECC data direction bit prior
to operation.

>> S3C6410 has the same controller as well.
> 
> No it hasn't. Believe me. Using the old 1 bit ECC (and also the 4 bit ECC) 
> makes no sense any more. Even the built-in iROM forces the 8 bit ECC mode if 
> you want to boot it from NAND. And I guess it is the same on the S5P CPU.

Hm, looks like my board is not the case. Anyway, this seems to be just
adding one more HW specific ECC function and not a complete rewrite.

There is a Linux driver from Samsung, named "s3c_nand.c", found in
S5PVxx kernel patches here and there (not in mainstream). It works for
S3C2416 and up and supports SLC and MLC. I use it for reference.

I.e., here:
https://e60-open.googlecode.com/svn/patches/kernel/samsung-e60-kernel-mtd.patch

Its ECC function looks like that:

static int s3c_nand_calculate_ecc(struct mtd_info *mtd,
                        const u_char *dat, u_char *ecc_code)
{
        u_long nfcont, nfmecc0, nfmecc1;
        void __iomem *regs = s3c_nand.regs;

        /* Lock */
        nfcont = readl(regs + S3C_NFCONT);
        nfcont |= S3C_NFCONT_MECCLOCK;  // <---- this is recommended for
S3C2440 too - Alex
        writel(nfcont, regs + S3C_NFCONT);

        if (nand_type == S3C_NAND_TYPE_SLC) {
                nfmecc0 = readl(regs + S3C_NFMECC0);

                ecc_code[0] = nfmecc0 & 0xff;
                ecc_code[1] = (nfmecc0 >> 8) & 0xff;
                ecc_code[2] = (nfmecc0 >> 16) & 0xff;
                ecc_code[3] = (nfmecc0 >> 24) & 0xff;
        } else {
                if (cur_ecc_mode == NAND_ECC_READ)
                        s3c_nand_wait_dec(); // <--- another difference,
MLC needs "wait ready"< SLC doesn't - Alex
                else {
                        s3c_nand_wait_enc();

                        nfmecc0 = readl(regs + S3C_NFMECC0);
                        nfmecc1 = readl(regs + S3C_NFMECC1);

                        ecc_code[0] = nfmecc0 & 0xff;
                        ecc_code[1] = (nfmecc0 >> 8) & 0xff;
                        ecc_code[2] = (nfmecc0 >> 16) & 0xff;
                        ecc_code[3] = (nfmecc0 >> 24) & 0xff;
                        ecc_code[4] = nfmecc1 & 0xff;
                        ecc_code[5] = (nfmecc1 >> 8) & 0xff;
                        ecc_code[6] = (nfmecc1 >> 16) & 0xff;
                        ecc_code[7] = (nfmecc1 >> 24) & 0xff;
                }
        }

        return 0;
}

I suggest to support both new and old hardware in the same code. Why
not? It is 95% the same.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
