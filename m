Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x235.google.com ([2607:f8b0:4003:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fflgk-0004BQ-LY
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 12:36:15 +0000
Received: by mail-oi0-x235.google.com with SMTP id k81-v6so8441672oib.4
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 05:36:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAEp+FuCcgXKDJ2N1taeJXbz=9-xXsNPPb3Ry7XFTvs94AhGX=w@mail.gmail.com>
In-Reply-To: <CAEp+FuCcgXKDJ2N1taeJXbz=9-xXsNPPb3Ry7XFTvs94AhGX=w@mail.gmail.com>
From: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Date: Wed, 18 Jul 2018 14:35:52 +0200
Message-ID: <CAEp+FuDQq001qvCXJp9BE0Xe_e8R0wNQm07pcipx0XDFEhW_1A@mail.gmail.com>
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
Subject: Re: barebox community/forum
To: barebox@lists.infradead.org

Hi ,



 I would like to flash a barebox image on NAND for a Phytec imx6ul
evk board using MFGTools.
     I have added support for UTP protocol in kernel image so commands
could be "pushed" using MFGtools app from Windows.
     But obviously I cannot push barebox_update command to Linux.
     So I think I have two options:

1) porting barebox_update command to Linux which I do not find it so
easy. I am already working on it
2) adding UTP support in barebox so I could just load the barebox
image in RAM using MFGtools, there a utp device node would be created
and then I could push barebox specific commands directly from
MFGtools.
      I have added UTP support in linux USB gadget code but I see
barebox USB gadget code is quite different and not all functionality
are in place so I also struggle a bit of porint gUTP patches from
Linux to barebox.
     Does anybody have any experience with this topic or coud advise
me on how to proceed?

Thanks,
      Mihaita

On Wed, Jul 18, 2018 at 9:24 AM Mihaita Ivascu
<mihaita_ivascu@trimble.com> wrote:
>
> Hello,
>
>      I would like to know where is the best place for me to post my
> technical questions related to barebox or which is the best way to
> proceed?
>      I could not find any forum or barebox community. Thanks.
>
> Best regards,
>          Mihaita Ivascu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
