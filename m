Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDbma-0005Jy-I9
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 14:26:57 +0000
Message-ID: <5138A3AD.30403@free-electrons.com>
Date: Thu, 07 Mar 2013 15:26:53 +0100
From: Maxime Ripard <maxime.ripard@free-electrons.com>
MIME-Version: 1.0
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
 <20130304080232.GM25672@pengutronix.de> <51389BAF.9040802@free-electrons.com>
 <201303071510.39114.jbe@pengutronix.de>
In-Reply-To: <201303071510.39114.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] memsize: Make get_ram_size RAM proof
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Juergen,

Le 07/03/2013 15:10, Juergen Beisert a =E9crit :
> Maxime Ripard wrote:
>>> [....]
>>>
>>> Unfortunately I had to drop this one. It breaks compilation on some
>>> architectures which do not have _text and __bss_stop (namely blackfin
>>> and another one I forgot about).
>>>
>>> Anyway, I realized that we now can start the MMU during early startup,
>>> so when you call this function from your board code your SDRAM might
>>> already be cached. I assume get_ram_size won't work reliably in this
>>> case anymore.
>>>
>>> Since you only use it to detect whether you have 128MiB or 256Mib, could
>>> you code a stripped down version of this function especially for your
>>> board? Could you even adjust the SDRAM controller registers to the size
>>> you really have? I have no idea if the SDRAM controller can cope with
>>> that, but it might be worth giving it a try. I have a patch in the
>>> queue moving the i.MX28 over to dynamically detecting the SDRAM size
>>> via controller readback, so this then would simply detect the correct
>>> size.
>>
>> I agree that this patch you're mentionning would be the best solution.
>>
>> However, the imx28 SDRAM controller doesn't seem to be able to be
>> reconfigured, so once it has been configured once, you're screwed.
> =

> You have to do this test in the bootlets instead. As they run from the =

> internal SRAM, you can do whatever you want with the SDRAM controller.

Yes, I know, but I haven't found a way to reconfigure the SDRAM
controller to use a smaller memory size once it has been started (any
attempts to do so failed miserably), and it doesn't seem to have any way
to reset it either, but maybe I'm missing something.

Maxime

-- =

Maxime Ripard, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
