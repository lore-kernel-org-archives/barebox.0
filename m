Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bx9Ts-00007D-76
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 09:17:45 +0000
Received: by mail-lf0-x234.google.com with SMTP id l131so69849212lfl.2
 for <barebox@lists.infradead.org>; Thu, 20 Oct 2016 02:17:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201610201113.08285.jbe@pengutronix.de>
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <CABvwO2BoCQs-XoSNsYG8Uo8+odKcZ6o5dWoFzk_nQjTJGerYLw@mail.gmail.com>
 <CABvwO2BZoNwdZJsWmygcjsAUXsmexDPU5cTpEoVd-sW9y5T_Rw@mail.gmail.com>
 <201610201113.08285.jbe@pengutronix.de>
From: Javier Fileiv <javier.fileiv@gmail.com>
Date: Thu, 20 Oct 2016 11:17:18 +0200
Message-ID: <CABvwO2DgadsiAhdVaSb+teN8MPJMwpLNF0RXWyvOf98=hOSo9Q@mail.gmail.com>
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

Thank you very much.... maybe I just to put on /env/config a "boot nand" line...

I'll try it.

Regards

2016-10-20 11:13 GMT+02:00 Juergen Borleis <jbe@pengutronix.de>:
> Hi Javier,
>
> On Wednesday 19 October 2016 20:18:38 Javier Fileiv wrote:
>> just in case...my /env/config as well
>> [...]
>
> Sorry, no idea. I do not even have the hardware anymore, so I cannot test it.
>
> Keep a look into the "env/bin/boot" script, what it tries to do with the
> configuration from your "env/config". Maybe it could help you to make it work
> again.
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
