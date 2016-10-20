Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxHdZ-0005hl-TR
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 18:00:19 +0000
Received: by mail-lf0-x22d.google.com with SMTP id x79so101464383lff.0
 for <barebox@lists.infradead.org>; Thu, 20 Oct 2016 10:59:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABvwO2DgadsiAhdVaSb+teN8MPJMwpLNF0RXWyvOf98=hOSo9Q@mail.gmail.com>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <CABvwO2BoCQs-XoSNsYG8Uo8+odKcZ6o5dWoFzk_nQjTJGerYLw@mail.gmail.com>
 <CABvwO2BZoNwdZJsWmygcjsAUXsmexDPU5cTpEoVd-sW9y5T_Rw@mail.gmail.com>
 <201610201113.08285.jbe@pengutronix.de>
 <CABvwO2DgadsiAhdVaSb+teN8MPJMwpLNF0RXWyvOf98=hOSo9Q@mail.gmail.com>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Thu, 20 Oct 2016 19:59:54 +0200
Message-ID: <CABvwO2ByvooXXYw+KKZSKvX0CPf43XABHn1-CUNd+qguCkRTeA@mail.gmail.com>
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

ups... I think Ive broken everything... I just put at the end of the
env/config file "boot nand" and now is looping and at some point it
says "ERROR: out of memory".
Another thing... I changed vivibootloader in NOR for the barebox, and
even if I change to NOR it's looping again and again... What do I do?
HELP!

2016-10-20 11:17 GMT+02:00 Javier Fileiv <javier.fileiv@gmail.com>:
> Thank you very much.... maybe I just to put on /env/config a "boot nand" line...
>
> I'll try it.
>
> Regards
>
> 2016-10-20 11:13 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
>> Hi Javier,
>>
>> On Wednesday 19 October 2016 20:18:38 Javier Fileiv wrote:
>>> just in case...my /env/config as well
>>> [...]
>>
>> Sorry, no idea. I do not even have the hardware anymore, so I cannot test it.
>>
>> Keep a look into the "env/bin/boot" script, what it tries to do with the
>> configuration from your "env/config". Maybe it could help you to make it work
>> again.
>>
>> Cheers,
>> Juergen
>>
>> --
>> Pengutronix e.K.                              | Juergen Borleis             |
>> Industrial Linux Solutions                    | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
