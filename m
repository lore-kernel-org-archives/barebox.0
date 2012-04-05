Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgPZ-00061W-Ai
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:43:14 +0000
Received: by yhjj52 with SMTP id j52so634152yhj.36
 for <barebox@lists.infradead.org>; Wed, 04 Apr 2012 23:43:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120405063322.GV3852@pengutronix.de>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
 <20120405063322.GV3852@pengutronix.de>
Date: Thu, 5 Apr 2012 08:43:12 +0200
Message-ID: <CAD9ZU8ACc_p2bTq-QtwhHXWz6NP=J-VkKS=0O2vdHkO2oRQUDw@mail.gmail.com>
From: Gabriel Tisan <gabriel.tisan@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: debugging on board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks !

I have an ARM from Freescale, i.MX35.

Regards,
Gabriel


On Thu, Apr 5, 2012 at 8:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Gabriel,
>
> On Thu, Apr 05, 2012 at 08:11:47AM +0200, Gabriel Tisan wrote:
>> Hi !
>>
>> What should I do to be able to see any debug messages ? On the serial co=
nsole I
>> could see the Barebox version but after that nothing. I suppose that
>> is something
>> regarding nand.
>
> This means that your console is already running, a first step can then
> be to put a '#define DEBUG' above the includes in common/startup.c. This
> will cause the initcalls to be printed which will give you a first clue
> where execution stops.
>
> Also you should have the following options enabled:
>
> CONFIG_MMU
> ARM_EXCEPTIONS
> CONFIG_ARM_UNWIND
> CONFIG_KALLSYMS
>
> This gives you a stack dump when something bad happens.
>
>>
>> If I have no JTAG debugger what should I do to be able to debug ? For
>> other board I
>> could not see any messages on console.
>
> That's more difficult. If you have for example a U-Boot as first stage
> loader then you can add some register writes to the UART send register
> in the early startup code. Otherwise you are stuck with LED debugging
> (Just configure a gpio connected to a LED and see where you can still
> turn it on)
>
> What machine are you working on?
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
