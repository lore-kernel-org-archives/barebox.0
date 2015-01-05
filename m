Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8EKh-0004nW-PO
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 20:33:00 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <54A98B8F.2040405@free-electrons.com>
 <1511697250.362148406.1420454678099.JavaMail.root@zimbra1-e1.priv.proxad.net>
 <20150105120322.GB4544@pengutronix.de>
Date: Mon, 05 Jan 2015 21:32:32 +0100
In-Reply-To: <20150105120322.GB4544@pengutronix.de> (Sascha Hauer's message of
 "Mon, 5 Jan 2015 13:03:22 +0100")
Message-ID: <874ms555pb.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: [PATCH] mtd: nand: add pxa3xx-nand driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> Hi Robert,
>
> Things like mtd->writesize, mtd->erasesize, and mtd->size should be
> initialized after calling nand_scan_ident(). These are currently
> overwritten by the pxa nand driver, but normally you should be able to
> remove this.
You're right, the extended id parsing should take care of that.

> IIRC barebox can also detect the chip widths automatically.
Yup, that's also in the extended id parsing.

> I don't know how to get the timings though.
I have an idea here : as barebox is not performance oriented, and as the timings
are minimum guaranteed times between signal swaps, let me try to hard encode all
timing with their maximum value.

Of course performance will suffer, but as long it remains usable with a loss of
20% or less in throughput, that will be a cool simplification.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
