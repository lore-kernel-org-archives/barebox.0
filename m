Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQEyq-0005eS-Bd
 for barebox@lists.infradead.org; Fri, 04 May 2012 09:39:16 +0000
Received: by lagy4 with SMTP id y4so2362938lag.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 02:39:14 -0700 (PDT)
Message-ID: <4FA3A3BE.2040607@gmail.com>
Date: Fri, 04 May 2012 15:39:10 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <1336050844-7043-3-git-send-email-agalakhov@gmail.com>
 <201205031941.00662.jbe@pengutronix.de>
In-Reply-To: <201205031941.00662.jbe@pengutronix.de>
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

On 03.05.2012 23:41, Juergen Beisert wrote:
>> create mode 100644 arch/arm/mach-samsung/include/mach/s3c-nand.h
>> delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
> 
> That is a really bad idea. I just renamed these files at January 2012 to reflect
> their CPU (refer b29b8f43d56b62e406349a5cf1ed56f17454c1f7). Why do you revert
> this change again? The NAND controller in the S3C24XX CPU is unique to this
> CPU. The NAND controller in the S3C6410 differs from it, and I guess the same
> is true in the S5 CPU. So, the newer CPUs need their own NAND drivers.
> 
> What is the sense of renaming these files?

In fact, exactly the opposite is true. The NAND controller in S5PV210 is
almost exactly the same as in S3C24xx. The only difference is the
numbering of registers. Also S5P suports 1-bit and 4-bit HW ECC while
S3C has only 1-bit. The algorithm is the same, even
s3c2440_nand_read_buf() works correctly.

S3C6410 has the same controller as well.

Right now I have working S5PV210 NAND driver, I did it like that:

#ifdef CONFIG_ARCH_S5PCxx

#define NFCONT 0x04
#define NFCMD 0x08
#define NFADDR 0x0C
#define NFDATA 0x10
#define NFSTAT 0x28
#define NFECC 0x34

etc.

The driver IS the same, yes. It works for both S5P and S3C.

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
