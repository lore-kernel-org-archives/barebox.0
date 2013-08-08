Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1.ptmail.sapo.pt ([212.55.154.21] helo=sapo.pt)
 by merlin.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V7SjG-000232-D7
 for barebox@lists.infradead.org; Thu, 08 Aug 2013 16:06:23 +0000
From: Cristiano Rodrigues <microcris@sapo.pt>
Date: Thu, 08 Aug 2013 16:05:50 +0100
Message-ID: <2914196.CyBYm9GnKj@probook>
In-Reply-To: <1375973567.984569011@f351.i.mail.ru>
References: <CACbe1rvwSV-XvG3nhZ5eWcO_OpBpBn7QgCLMkW+-=5uATjm0+g@mail.gmail.com>
 <1375973567.984569011@f351.i.mail.ru>
MIME-Version: 1.0
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
Subject: Re: Re: barebox-2013.07/08.0 works from RAM but fails from NAND
 (Mini2440)
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thursday 08 August 2013 18:52:47 Alexander Shiyan wrote:
> > 2013/8/8 Pawel Suchanecki <pawel.suchanecki@gmail.com>:
> > > Dear list & developers,
> > > 
> > > My barebox works (I get barebox prompt and can boot from there) when
> > > loaded
Hi there :)

It is the first commit after the barebox version 2013.05.1 that is breaking 
the mini2440 NAND boot.

cris@ProBook:~/mini2440/Boot/barebox_git$ git bisect bad
5f82a0cd0138ae5208cc8758c638ce6a928ed2e3 is the first bad commit
commit 5f82a0cd0138ae5208cc8758c638ce6a928ed2e3
Author: Alexander Shiyan <shc_work@mail.ru>
Date:   Tue Apr 9 19:05:31 2013 +0400

    ARM: cpuimx51: Use custom padctrl for fec
    
    The fec padctrl is different from what we have in the kernel iomux
    file. To be able to keep the iomux file in sync with the kernel, use
    a custom padctrl for the cpuimx51 board.
    
    Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

:040000 040000 7196169700f35cef11d849e562784591874f770d 
7a4888609304c2de992b22da06ad206189dde06b M      arch

> > > to ram by (super)vivi but does not when I flash it to NAND.
> > > 
> > > Barebox does not output anything to the console. It also fails using
> > > "friendlyarm_mini2440_defconfig". It behaves the same in 2013.07.0 and
> > > 2013.08.0.
> > > 
> > > Please direct me: where can I look for the misconfiguration? What did I
> > > do
> > > wrong?
> > > 
> > > Thanks,
> > > Pawel.
> > 
> > Hi again,
> > 
> > I found the thread in which Cristiano already reported such behaviour,
> > namely: http://article.gmane.org/gmane.comp.boot-loaders.barebox/10142
> > 
> > Seems I am in same situation. Barebox.2013.05.1 starts from NAND.
> 
> The easy way to resolve this issue is "git bisect".
> Can you try to do it?
> 
> ---
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
