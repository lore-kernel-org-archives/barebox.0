Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j40vH-0001eU-7v
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 11:20:16 +0000
Received: by mail-vk1-xa41.google.com with SMTP id u6so5416547vkn.13
 for <barebox@lists.infradead.org>; Tue, 18 Feb 2020 03:20:09 -0800 (PST)
MIME-Version: 1.0
References: <CAGm1_ku5kzBoxiRYks2uLYt1D6-QPB0vJm0DygF8a2WXTC6NoQ@mail.gmail.com>
 <92a929cc-b9e6-db9b-352d-c7c271a29558@pengutronix.de>
In-Reply-To: <92a929cc-b9e6-db9b-352d-c7c271a29558@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 18 Feb 2020 12:19:39 +0100
Message-ID: <CAGm1_ktTGx1MMY-jcbVrOwnwqHeHm8Qe2f2iRxEQxmY0y5HM4g@mail.gmail.com>
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
Subject: Re: musb is broken in master
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hello Ahmad,

On Tue, Feb 18, 2020 at 11:57 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Yegor,
>
> On 2/18/20 10:58 AM, Yegor Yefremov wrote:
> > I have bisected the musb driver on am335x (baltos system
> > arch/arm/dts/am335x-baltos-minimal.dts) from v2019.11.0 and this is
> > the result:
> >
> > 574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d is the first bad commit
> > commit 574eed3f6fcf056aa4c9e46c4b5224e3f7844d8d
> > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Thu Dec 19 05:46:54 2019 +0100
> >
> >     dts: update to v5.5-rc1
> >
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >
> > :040000 040000 4f6416a5af14d6328ef2c8ac46d9ac4a17a37404
> > 525e33dda1e735ef2f633f4d99c501ba938a7263 M      dts
> >
> > I need only the host functionality to mount a USB drive. My defconfig
> > can be found here [1].
> >
> > Any idea what could have happened?
>
> git log v5.4..v5.5-rc1 arch/arm/boot/dts/am335x*.dtsi
> gives me kernel commit 12afc0cf81 ("ARM: dts: Drop pointless status changing for am3 musb").
> Does reverting it fix the issue for you?

Yes, it does. Though the revert result is a little bit ugly i.e. at
least one conflict.

But when I start the kernel 5.6-rc2 that already incorporates these
DTS changes, I have no problems with USB. So far only the barebox is
affected by this change.

Cheers,
Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
