Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f174.google.com ([209.85.214.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6JFi-0003hM-Cf
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 11:14:51 +0000
Received: by mail-ob0-f174.google.com with SMTP id 16so3433510obc.19
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 03:14:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAHkwnC_-nyVTh_R_7P0dBPFA-c9rjG8j2UtsCT8+OJEk+0NM7A@mail.gmail.com>
References: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
 <1360924870-13979-3-git-send-email-fabio.porcedda@gmail.com>
 <20130215104408.GY19322@game.jcrosoft.org>
 <CAHkwnC_-nyVTh_R_7P0dBPFA-c9rjG8j2UtsCT8+OJEk+0NM7A@mail.gmail.com>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 12:14:29 +0100
Message-ID: <CAHkwnC8_Kszke2aCfViNsCuS2+TtK3wXAG5LkuZQ5qFRKVyxYw@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] at91sam9260/9g20ek: remove #ifdef for
 ek_usb_add_device_mci()
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 11:52 AM, Fabio Porcedda
<fabio.porcedda@gmail.com> wrote:
> On Fri, Feb 15, 2013 at 11:44 AM, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
>> On 11:41 Fri 15 Feb     , Fabio Porcedda wrote:
>>> Remove #ifdef for ek_usb_add_device_mci() because there is already
>>> the #ifdef inside at91_add_device_mci(), this way the compiler can check
>>> always the code without any penality.
>>  it's not the struct will be keep
>
> The struct isn't keep
> without this patch:
>   text       data        bss        dec        hex    filename
>     877        192          0       1069        42d
> arch/arm/boards/at91sam9260ek/init.o
> with this patch:
>  text       data        bss        dec        hex    filename
>     877        192          0       1069        42d
> arch/arm/boards/at91sam9260ek/init.o


I'm sorry, you are right, i've made i mistake when checking.

  text       data        bss        dec        hex    filename
    861        176          0       1037        40d
arch/arm/boards/at91sam9260ek/init.o

  text       data        bss        dec        hex    filename
    877        192          0       1069        42d
arch/arm/boards/at91sam9260ek/init.o


>>  keep the ifdef
>> Best Regards,
>> J.
>
> Best regards
> --
> Fabio Porcedda



--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
