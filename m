Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvXFr-0004XC-Ty
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 17:26:12 +0000
Received: by yhjj52 with SMTP id j52so4341698yhj.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 10:26:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201207291922.43872.jbe@pengutronix.de>
References: <CA+LT+-T+8VD5ONbWyX+OQxk2MX221Z-vstimqpYKh3onY+5K3Q@mail.gmail.com>
 <201207291922.43872.jbe@pengutronix.de>
Date: Sun, 29 Jul 2012 23:26:07 +0600
Message-ID: <CA+LT+-R3J4Kq0znJXyM74gaSx-yMZ2=QZ-1OPRhVtD3M1WEM2w@mail.gmail.com>
From: Alexey Galakhov <agalakhov@gmail.com>
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
Subject: Re: Barebox hangs after boot
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

2012/7/29 Juergen Beisert <jbe@pengutronix.de>:
> Hi Alexey,
>
> Alexey Galakhov wrote:
>> While debugging S5PV210 code I ran into the following problem. Barebox
>> starts, the barebox command line appears on the console but does not
>> react to keypresses. I found no obvious dependence on the config
>> settings.
>>
>> What may be the cause of this problem and how do I debug it?
>
> Broken timer?
>
> Regards,
> Juergen
>
> --
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

Probably not:

running /env/bin/init...

Hit any key to stop autoboot:  3... 2... 1... 0 (keypresses have no effect)

Now I'm checking wires, it may be just broken RX-TX connection. But unlikely.

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
