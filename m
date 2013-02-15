Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f180.google.com ([209.85.214.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Iup-0001NF-TV
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:53:16 +0000
Received: by mail-ob0-f180.google.com with SMTP id ef5so3478640obb.11
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 02:53:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130215104408.GY19322@game.jcrosoft.org>
References: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
 <1360924870-13979-3-git-send-email-fabio.porcedda@gmail.com>
 <20130215104408.GY19322@game.jcrosoft.org>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 11:52:52 +0100
Message-ID: <CAHkwnC_-nyVTh_R_7P0dBPFA-c9rjG8j2UtsCT8+OJEk+0NM7A@mail.gmail.com>
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

On Fri, Feb 15, 2013 at 11:44 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 11:41 Fri 15 Feb     , Fabio Porcedda wrote:
>> Remove #ifdef for ek_usb_add_device_mci() because there is already
>> the #ifdef inside at91_add_device_mci(), this way the compiler can check
>> always the code without any penality.
>  it's not the struct will be keep

The struct isn't keep
without this patch:
  text       data        bss        dec        hex    filename
    877        192          0       1069        42d
arch/arm/boards/at91sam9260ek/init.o
with this patch:
 text       data        bss        dec        hex    filename
    877        192          0       1069        42d
arch/arm/boards/at91sam9260ek/init.o

>  keep the ifdef
> Best Regards,
> J.

Best regards
--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
