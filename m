Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkBZy-0007ti-9w
 for barebox@lists.infradead.org; Tue, 13 May 2014 12:13:06 +0000
Received: by mail-la0-f43.google.com with SMTP id mc6so193127lab.16
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 05:12:43 -0700 (PDT)
Date: Tue, 13 May 2014 16:23:40 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140513162340.c2689ed174c2ad441edceab1@gmail.com>
In-Reply-To: <CAOpc7mHLsLJehMFkcFeJBGodKEJejiDxgwgWZE2V3-=37BbRHQ@mail.gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <1399969739-10355-9-git-send-email-holgerschurig@gmail.com>
 <20140513152616.037f99e1138c9028878f61f6@gmail.com>
 <CAOpc7mHLsLJehMFkcFeJBGodKEJejiDxgwgWZE2V3-=37BbRHQ@mail.gmail.com>
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
Subject: Re: [PATCH 08/19] commands: move CMD_MIPS_CPUINFO to commands/Kconfig
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 13 May 2014 13:28:17 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

> Hi,
> =

> i thought about having exactly one CONFIG_CMD_CPUINFO. No need for
> your steps 2. and 3., because both arch/arm/Makefile and
> arch/arm/Makefile could do "obj-$(CONFIG_CMD_CPUINFO) +=3D cpuinfo.o",
> you cannot compile for ARM and MIPS at the same time anyway.
> =


You right, steps 2 and 3 are redundunt. I have forgotten that you move Kcon=
fig, but you don't touch cpuinfo.c.

> However, I decided against it. Because then I'd have to remove the
> example "cpuinfo" output from them the Kconfig help.

Can we move example 'cpuinfo' output to *.dox?
 =

> Just that generally I'd like to have output example in the Kconfig, so
> that people see at "make xconfig" time if they want this command or
> not. I, for example, don't want "cpuinfo", I know which CPU is
> soldered into the board :-)

There are pin-to-pin compatible SoC revisions that use just the same packag=
e.
cpuinfo can help you to determinate the exact SoC version :)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
