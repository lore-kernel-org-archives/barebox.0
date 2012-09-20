Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEZDR-0001kC-6r
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 05:22:22 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7372AFF94E0
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 07:28:09 +0200 (CEST)
Date: Thu, 20 Sep 2012 07:19:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920051948.GA26553@game.jcrosoft.org>
References: <1348000210-21686-1-git-send-email-carlo.caione@gmail.com>
 <1348000210-21686-2-git-send-email-carlo.caione@gmail.com>
 <20120918220748.GU25990@game.jcrosoft.org>
 <D61358EC-6DC0-4F9B-82B0-CE44AA0976EB@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D61358EC-6DC0-4F9B-82B0-CE44AA0976EB@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add Raspberry-Pi defconfig
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 00:19 Thu 20 Sep     , Carlo Caione wrote:
> 
> On Sep 19, 2012, at 12:07 AM, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > On 22:30 Tue 18 Sep     , Carlo Caione wrote:
> >> Signed-off-by: Carlo Caione <carlo@carlocaione.org>
> >> ---
> >> arch/arm/configs/rpi_defconfig |   45 ++++++++++++++++++++++++++++++++++++++++
> > add this in the board patch
> >> 1 file changed, 45 insertions(+)
> >> create mode 100644 arch/arm/configs/rpi_defconfig
> >> 
> >> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
> >> new file mode 100644
> >> index 0000000..2b35ef8
> >> --- /dev/null
> >> +++ b/arch/arm/configs/rpi_defconfig
> >> @@ -0,0 +1,45 @@
> >> +CONFIG_ARCH_BCM2835=y
> >> +CONFIG_ARCH_TEXT_BASE=0x00008000
> >> +CONFIG_MEMORY_LAYOUT_FIXED=y
> > why fixed?
> 
> The problem here is that TEXT_BASE is at 0x00008000 and without setting CONFIG_MALLOC_BASE my malloc space falls outside of sdram.
because your TEXT_BASE is wrong put it at 64MiB it will work

you can load barebox anywhere in ddr and jump, barebox will relocate itself at
it's correct address

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
