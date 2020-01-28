Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSeM-0005j2-6M
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 15:19:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so16422800wrl.13
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 07:19:32 -0800 (PST)
MIME-Version: 1.0
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
In-Reply-To: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
From: Cameron Ferguson <cameron.bare86@gmail.com>
Date: Tue, 28 Jan 2020 15:19:19 +0000
Message-ID: <CAEKVsgaAVyREvfB-bCCuPCVwi87S1Oq=4xMK6hjEXuJp2kZm+A@mail.gmail.com>
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
Subject: Re: Small tweak to get ACPI watchdog working (iTCO)
To: barebox@lists.infradead.org, a.fatoum@pengutronix.de, wim@iguana.be

In my previous email, I only had the "write" operations associated
with controlling the watchdog timer. I have edited my code to include
the "read" operations too, but still it's not working.

Here's my new code:

    /* R */    retval = ioread32(base +  4u);  // This should be 0x0
    /* R */    retval = ioread32(base +  4u);  // This should be 0x0
    /* W */    iowrite32(0x20000, base + 4u);
    /* R */    retval = ioread32(base +  8u);  // This should be 0x1800
    /* R */    retval = ioread32(base +  8u);  // This should be 0x1800
    /* W */    iowrite32(0x1000, base + 8u);
    /* R */    retval = ioread32(base +  0u);  // This should be 0x4
    /* W */    iowrite32(0x4, base + 0u);
    /* R */    retval = ioread32(base + 10u);  // This should be 0x40000
    /* W */    iowrite32(0x640000, base + 10u);
    /* R */    retval = ioread32(base +  0u);  // This should be 0x2
    /* W */    iowrite32(0x4, base + 0u);  // This is a kick
    /* R */    retval = ioread32(base +  0u);  // This should be 0x34
    /* W */    iowrite32(0x4, base + 0u);  // This is a kick

The first two read operations should both return 0x0, however I'm
getting what looks like a random number. Also it consitently reads the
value 0x4 from "base + 0u".

Anyone got an idea?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
