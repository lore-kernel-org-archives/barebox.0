Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vb0-x233.google.com ([2607:f8b0:400c:c02::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8d50-0002IA-W1
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 21:53:55 +0000
Received: by mail-vb0-f51.google.com with SMTP id 11so1578730vbe.10
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2014 13:53:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJyuEed85u0AjntkoP9mEZ9BTgTKdWrm85ECE1MCOAAVERSGgA@mail.gmail.com>
References: <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
 <20131219080917.GW24559@pengutronix.de>
 <CAJyuEedJxNN9mPJzAvE6d6kNHCaEqcF-BED0L+r2VCv7e6=T6A@mail.gmail.com>
 <20140110081302.GV6750@pengutronix.de>
 <CAJyuEefMzkW4mCfe+iR7FfVv6jeQMS3XuoPFtO3E8zNomecKoA@mail.gmail.com>
 <20140116141322.GX16215@pengutronix.de>
 <CAJyuEecWCmz=gxzMrbGB+=MWqAC9WGooCgTQs-E47rdaQPUOSA@mail.gmail.com>
 <20140120080007.GG16215@pengutronix.de>
 <CAJyuEed85u0AjntkoP9mEZ9BTgTKdWrm85ECE1MCOAAVERSGgA@mail.gmail.com>
Date: Wed, 29 Jan 2014 16:53:33 -0500
Message-ID: <CAJyuEeddi_SL=W3NQPC7Ah+DWoXMsHhnN_kciQP2W8GtHTozqw@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

Part of my last post can be ignored -- specifically part of the stuff
on the ethernet controller.

I just discovered that using either "detect -a" or "detect miibus0"
works to properly detect and configure /dev/phy0.

Basically, the initial probe using devicetree fails, but once the
PF0100 is set correctly and a simple manual reset is done (same code
as you used on the pfla02), then the phy detects properly and I can
access the network.

So, is there an easy way to have it skip the initial probe that fails?

Was this possibly the idea behind why you have the fec disabled in the
pfla02.dtsi and then enable it in the pbab01.dts?

Basically, disable it for the first probe, then enable it in an
overlay and reprobe?

What I have now "works", but I prefer to do things the "right way" if possible.

Thanks!
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
