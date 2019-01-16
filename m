Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjrqA-0002PJ-T2
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 20:31:12 +0000
Received: by mail-wr1-x429.google.com with SMTP id c14so8552627wrr.0
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 12:31:08 -0800 (PST)
MIME-Version: 1.0
References: <a47578bb-9855-9645-e48b-fc9d3478a173@data-modul.com>
 <1547631290.4339.26.camel@pengutronix.de>
In-Reply-To: <1547631290.4339.26.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 12:30:54 -0800
Message-ID: <CAHQ1cqGzMcgUGYXn5uq_86kHb_QSb2ZeQCrG-5jc1wS4rvC5aA@mail.gmail.com>
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
Subject: Re: signed HDMI firmware in imx8mq image
To: "Yazdani, Reyhaneh" <RYazdani@data-modul.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jan 16, 2019 at 1:34 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Reyhaneh,
>
> Am Mittwoch, den 16.01.2019, 08:48 +0000 schrieb Yazdani, Reyhaneh:
> > Every one,
> >
> > In order to build a Barebox image to boot imx8mq-evk with HDMI, I have tried to
> > tell Barebox about the embedded signed HDMI firmware, which is necessary for
> > provided kernel image by NXP.
> >
> > for this matter, I added the below line into the
> > arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> >
> >   soc imx8mq
> >   loadaddr 0x007E1000
> >   dcdofs 0x400
> > + signed_hdmi_firmware firmware/imx/signed_hdmi_imx8m.bin
> >
> > And placed the firmware into the build-directory/firmware/imx
> >
> >
> > By checking kernel boot message, it seems the HDMI FW is running, but no access
> > to the HDMI:
> > [drm:hdmi_phy_init_t28hpc] *ERROR* HDMI mailbox access failed
> >
> > What should I do more in Barebox to make HDMI accessible by kernel?
>
> I don't think there is anything more needed from the Barebox side. At
> least the same change works for me and gets me a working HDMI display
> on the EVK board.
>

FWIW, I don't see anything missing either.

> I don't use the NXP kernel through, but running a 4.20 based kernel
> with lot of downstream bits ported. This might be a incompatibility of
> your kernel with the imx8 ATF version shipped with Barebox.
>

I was using vendor kernel when I was working on
implementing/validating initial support of that and it worked alright.
However, that has been over 5 month ago, so it is entirely possible
that newer version of various components might have become
problematic.

It is probably not a problem in your case, but do keep in mind, that
i.MX8MQ mask ROM code uses SD2 as a "backup" boot option, so if it
doesn't find anything bootable on the selected (via pins or fuses)
medium it will revert to that. If that happens, HDMI firmware present
on SD card will _not_ be loaded into HDMI IP block. I've been bitten
by this when I was working with a board that I forgot was configured
to boot from eMMC and was booting from SD card by coincidence.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
