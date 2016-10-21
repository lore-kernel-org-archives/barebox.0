Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUeq-000410-IJ
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:54:29 +0000
Received: by mail-lf0-x233.google.com with SMTP id l131so125814822lfl.2
 for <barebox@lists.infradead.org>; Fri, 21 Oct 2016 00:54:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201610210953.45417.jbe@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <201610210939.59537.jbe@pengutronix.de>
 <CABvwO2C0MZGk2CC-v=67-Og7n4SZqSpdCfiZBz0QZTTfeckp1w@mail.gmail.com>
 <201610210953.45417.jbe@pengutronix.de>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Fri, 21 Oct 2016 09:54:04 +0200
Message-ID: <CABvwO2A6_mU3DzbWp9p=9NcvWeZGpni8GPL7x0qaLT2K1vXaog@mail.gmail.com>
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

Thanks Juergen, shoul I short them between them, short them to GND or
short them to VDD?

Thank you again

2016-10-21 9:53 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
> Hi Javier,
>
> On Friday 21 October 2016 09:41:15 Javier Fileiv wrote:
>> I was looking to buy an ARM9 Jtag because it's what I
>> though... I would need a JTAG.
>>
>> Regarding shorting the data lines... do you know exactly what would I
>> need to do?
>
> Reading the datasheet of the used NAND device, find its datalines, find them on
> the Mini2440, configure the board to boot from NOR, short two of the eight
> datalines and power the board.
>
>> Regarding JTAG, which ones are the steps?
>
> Sorry, no idea. Never used it on Mini2440.
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
