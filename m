Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3Rt6-0007Pr-97
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 12:14:56 +0000
Received: by wwp14 with SMTP id 14so409451wwp.18
	for <barebox@lists.infradead.org>; Tue, 13 Sep 2011 05:14:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110913073419.GX31404@pengutronix.de>
References: <1315823160-11664-1-git-send-email-antonynpavlov@gmail.com>
	<20110913073419.GX31404@pengutronix.de>
Date: Tue, 13 Sep 2011 16:14:48 +0400
Message-ID: <CAA4bVAGbz4aDRgRbKDj6OqDhSdXBb9KK5nRNjfDfyW5NM=Dh4w@mail.gmail.com>
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
Subject: Re: [PATCH] ehci-hcd.c: handle EHCI_HAS_TT in ehci_reset() during
	startup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13 September 2011 11:34, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Sep 12, 2011 at 02:26:00PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0drivers/usb/host/ehci-hcd.c | =A0 =A09 ++-------
>> =A01 files changed, 2 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
>> index 60fc181..883dc07 100644
>> --- a/drivers/usb/host/ehci-hcd.c
>> +++ b/drivers/usb/host/ehci-hcd.c
>> @@ -921,15 +921,10 @@ static int ehci_probe(struct device_d *dev)
>> =A0 =A0 =A0 host->submit_control_msg =3D submit_control_msg;
>> =A0 =A0 =A0 host->submit_bulk_msg =3D submit_bulk_msg;
>>
>> - =A0 =A0 if (ehci->flags & EHCI_HAS_TT) {
>> - =A0 =A0 =A0 =A0 =A0 =A0 /* Set to host mode */
>> - =A0 =A0 =A0 =A0 =A0 =A0 reg =3D ehci_readl(ehci->hcor + USBMODE);
>> - =A0 =A0 =A0 =A0 =A0 =A0 reg |=3D USBMODE_CM_HC;
>> - =A0 =A0 =A0 =A0 =A0 =A0 writel(reg, ehci->hcor + USBMODE);
>> - =A0 =A0 }
>> -
>> =A0 =A0 =A0 usb_register_host(host);
>>
>> + =A0 =A0 ehci_reset(ehci);
>> +
>
> ehci_reset is called from ehci_init. Isn't that enough or do we have to
> call it explicitely here?

I suppose it's preferable reset the controller after changing "host
controller mode" bit (USBMODE_CM_HC). Let's check the file
drivers/usb/host/ehci-hcd.c from linux kernel sources, in ehci_reset()
we have:

    if (ehci_is_TDI(ehci))
                    tdi_reset (ehci);

On my Tegra board I found the problem: board hangs up on the first
ehci_readl() after setting USBMODE_CM_HC bit.

>> =A0 =A0 =A0 reg =3D HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
>> =A0 =A0 =A0 dev_info(dev, "USB EHCI %x.%02x\n", reg >> 8, reg & 0xff);
>>
>> --
>> 1.7.5.4
>>

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
