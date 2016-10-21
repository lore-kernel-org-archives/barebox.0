Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUSR-0006xZ-At
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:41:40 +0000
Received: by mail-lf0-x233.google.com with SMTP id b75so129169741lfg.3
 for <barebox@lists.infradead.org>; Fri, 21 Oct 2016 00:41:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201610210939.59537.jbe@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <CABvwO2DgadsiAhdVaSb+teN8MPJMwpLNF0RXWyvOf98=hOSo9Q@mail.gmail.com>
 <CABvwO2ByvooXXYw+KKZSKvX0CPf43XABHn1-CUNd+qguCkRTeA@mail.gmail.com>
 <201610210939.59537.jbe@pengutronix.de>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Fri, 21 Oct 2016 09:41:15 +0200
Message-ID: <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
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

Hello Juerguen, I was looking to buy an ARM9 Jtag because it's what I
though... I would need a JTAG.

Regarding shorting the data lines... do you know exactly what would I
need to do?

Regarding JTAG, which ones are the steps?


Thank you so much

2016-10-21 9:39 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
> Hi Javier,
>
> On Thursday 20 October 2016 19:59:54 Javier Fileiv wrote:
>> ups... I think Ive broken everything... I just put at the end of the
>> env/config file "boot nand" and now is looping and at some point it
>> says "ERROR: out of memory".
>> Another thing... I changed vivibootloader in NOR for the barebox, and
>> even if I change to NOR it's looping again and again... What do I do?
>> HELP!
>
> Seems you configured your board into a brick. You now can boot from NOR and
> short some data lines pins at the NAND device to make barebox fail to read its
> environment from NAND and fall back to the built-in default environment
> without that loop.
> Or you need some JTAG equipment to make the SoC working again.
>
> Cheers,
> Juergen
>
> --
> Pengutronix e.K.                              | Juergen Borleis             |
> Industrial Linux Solutions                    | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
