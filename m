Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f181.google.com ([209.85.192.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAnv8-0004Fm-VZ
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 21:52:43 +0000
Received: by mail-pd0-f181.google.com with SMTP id y10so8757664pdj.12
 for <barebox@lists.infradead.org>; Tue, 04 Feb 2014 13:52:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20140201183543.GC16215@pengutronix.de>
References: <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <20140110081302.GV6750@pengutronix.de>
 <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
 <20140116141322.GX16215@pengutronix.de>
 <CAJyuEecWCmz=gxzMrbGB+=MWqAC9WGooCgTQs-E47rdaQPUOSA@mail.gmail.com>
 <20140120080007.GG16215@pengutronix.de>
 <CAJyuEed85u0AjntkoP9mEZ9BTgTKdWrm85ECE1MCOAAVERSGgA@mail.gmail.com>
 <20140201183543.GC16215@pengutronix.de>
Date: Tue, 4 Feb 2014 16:44:30 -0500
Message-ID: <CAO6XYUtUVvn5Ss_JZ7rKewUen+AyixNwcb1=M=DU_u1Oo7Dmow@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

I have enabled the USB debugging (and added some additional code as
well). I'm still trying to figure out exactly why it's not detecting
my flash drive without another device being present. One thing that is
weird is that it has to be a non-mass storage device of some kind for
things to work -- if I have 3 USB flash drives plugged in, it finds
nothing. If I plug in a mouse too, it see's all three of them. I'll
post more info and maybe a few questions as I progress.

I've got the PHY working on the Variscite part, but the code is ugly.
After digging into the KSZ9031 spec a bit deeper, it turns out that
the pins they are configuring as GPIO's during reset are NOT the
address pins -- they are the MODE pins on the PHY. Apparently, they
must not have included pull-ups on the board for the default state of
the pins during the PHY reset and are instead setting them in the
bootloader and then doing a manual reset of the PHY. That said, the
PHY appears to startup in the correct mode even if I don't modify the
pins, so it is possible they may actually have pull-ups on the pins
(either that, or the default state floats high enough to be latched as
1's and I'm just getting lucky). It would be really nice if I had the
schematics for the SOM -- I may just stick the board under a
magnifying glass and see if I can trace out those pins.

Thanks,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
