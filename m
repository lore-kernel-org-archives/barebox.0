Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQHii-0004aU-TB
 for barebox@lists.infradead.org; Fri, 04 May 2012 12:34:49 +0000
Received: by lagy4 with SMTP id y4so2475744lag.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 05:34:47 -0700 (PDT)
Message-ID: <4FA3CCE3.6030606@gmail.com>
Date: Fri, 04 May 2012 18:34:43 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205041313.42172.jbe@pengutronix.de> <4FA3C036.3050706@gmail.com>
 <201205041400.18168.jbe@pengutronix.de>
In-Reply-To: <201205041400.18168.jbe@pengutronix.de>
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

On 04.05.2012 18:00, Juergen Beisert wrote:
> Alexey Galakhov wrote:
>> On 04.05.2012 17:13, Juergen Beisert wrote:
>>> AFAIR the MLC ECC generator is different in its handling. At least it is
>>> much slower than the 1 bit ECC generator and so the routines must wait
>>> the result to continue on the block data.
>>
>> Correct.
>>
>> This is achieved by adding register polling loop at the beginning of
>> corresponding calculate() function. The rest of function is almost the
>> same, just the number of ECC bytes is larger.
>>
>> The S3C2440 has a hardware ECC corrector which we do not use yet.
> 
> AFAIK only a hardware ECC _calculator_, but no correction unit. It must be 
> done in software.

At least S5PV210 has a correction unit. If you provide correct ECC to
the unit (write into NFxECCDx), you may then read back the exact byte
and bit position of the error from NFESTAT.

S3C2440 seems to have something very similar. At least it has bits with
same names in NFESTAT. Its usage is not documented in my copy of
datasheet, perhaps in some appnote?

The "s3c_nand.c" driver does like that, even for 2440:
    nfmeccdata0 = (read_ecc[1] << 16) | read_ecc[0];
    nfmeccdata1 = (read_ecc[3] << 16) | read_ecc[2];
    writel(nfmeccdata0, regs + S3C_NFMECCDATA0);
    writel(nfmeccdata1, regs + S3C_NFMECCDATA1);
    nfestat0 = readl(regs + S3C_NFMECCERR0);
    err_type = nfestat0 & 0x3;
and then (if err_type == 1):
    dat[(nfestat0 >> 7) & 0x7ff] ^= (1 << ((nfestat0 >> 4) & 0x7));

The MLC case is very similar. The only exception is that there is no
write-back of ECC values, instead one should READ the corresponding part
of OOB immediately after reading the data.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
