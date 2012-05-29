Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZK5g-0005JD-Dg
 for barebox@lists.infradead.org; Tue, 29 May 2012 10:55:53 +0000
Received: by yhjj52 with SMTP id j52so2462659yhj.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 03:55:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120529103720.GL2202@game.jcrosoft.org>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
 <1338192756-3688-5-git-send-email-antonynpavlov@gmail.com>
 <20120529083010.GY30400@pengutronix.de>
 <20120529103720.GL2202@game.jcrosoft.org>
Date: Tue, 29 May 2012 14:55:51 +0400
Message-ID: <CAA4bVAHY4D2M2j4_EEPP26oXmqAaYLMfVKBjXgXTec2LMhGhbg@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v20120528 4/5] toshiba-ac100: add USB host support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 29 May 2012 14:37, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 10:30 Tue 29 May =A0 =A0 , Sascha Hauer wrote:
>> On Mon, May 28, 2012 at 12:12:35PM +0400, Antony Pavlov wrote:
>> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> > ---
>> > =A0arch/arm/boards/toshiba-ac100/board.c | =A0 18 ++++++++++++++++++
>> > =A01 file changed, 18 insertions(+)
>> >
>> > diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/t=
oshiba-ac100/board.c
>> > index e3a5eba..3fd720d 100644
>> > --- a/arch/arm/boards/toshiba-ac100/board.c
>> > +++ b/arch/arm/boards/toshiba-ac100/board.c
>> > @@ -24,6 +24,8 @@
>> > =A0#include <init.h>
>> > =A0#include <asm/armlinux.h>
>> > =A0#include <sizes.h>
>> > +#include <usb/ehci.h>
>> > +#include <mach/iomap.h>
>> >
>> > =A0static int ac100_mem_init(void)
>> > =A0{
>> > @@ -32,3 +34,19 @@ static int ac100_mem_init(void)
>> > =A0 =A0 return 0;
>> > =A0}
>> > =A0mem_initcall(ac100_mem_init);
>> > +
>> > +#ifdef CONFIG_USB_EHCI
>> > +static struct ehci_platform_data ehci_pdata =3D {
>> > + =A0 .flags =3D EHCI_HAS_TT,
>> > +};
>> > +#endif
>> > +
>> > +static int ac100_devices_init(void)
>> > +{
>> > +#ifdef CONFIG_USB_EHCI
>> > + =A0 add_generic_usb_ehci_device(-1, TEGRA_USB3_BASE, &ehci_pdata);
>> > +#endif
>>
>> Better skip the ifdefs. It won't hurt except for a few bytes of wated
>> space.
> and the -1 need to be a define

Like this?

add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, TEGRA_USB3_BASE, &ehci_pdata=
);

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
