Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqJGo-0004RH-Pi
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:38:39 +0000
Received: by mail-la0-f54.google.com with SMTP id pv20so876391lab.13
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:38:16 -0700 (PDT)
Date: Fri, 30 May 2014 13:49:36 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140530134936.66f91c175ea473a5ed308817@gmail.com>
In-Reply-To: <CAOpc7mEK1A66ePV3J4K5mdGECrZhS7PRSKbkWe7+BW4A37Es_Q@mail.gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
 <1401440856-6145-3-git-send-email-holgerschurig@gmail.com>
 <CAOpc7mEK1A66ePV3J4K5mdGECrZhS7PRSKbkWe7+BW4A37Es_Q@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 02/10] devinfo: reduce indentation
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, 30 May 2014 11:08:01 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

> barebox:/ devinfo
> devices:
> `-- global
> `-- platform
>    `-- mem0
>       `-- 0x00000000-0x3fffffff (1 GiB): /dev/ram0
>    `-- a01000.interrupt-controller
>    `-- soc.0
>       `-- 110000.dma-apbh
>       `-- a00600.timer
>       `-- a02000.l2-cache
> ...

IMHO this looks much better now!
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
