Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cn2AA-00035j-Jr
 for barebox@lists.infradead.org; Sun, 12 Mar 2017 11:59:53 +0000
Received: from player718.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 2B9FA6427F
 for <barebox@lists.infradead.org>; Sun, 12 Mar 2017 12:59:24 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player718.ha.ovh.net (Postfix) with ESMTPA id E809F4E0072
 for <barebox@lists.infradead.org>; Sun, 12 Mar 2017 12:59:23 +0100 (CET)
Date: Sun, 12 Mar 2017 13:05:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170312120538.GA25192@mail.ovh.net>
References: <20170215192932.GB32649@mail.ovh.net>
 <20170311162611.oti5lvnonnpfmohz@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170311162611.oti5lvnonnpfmohz@pengutronix.de>
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
Subject: Re: [PATCH 0/12] EFI: drop arch efi
To: barebox@lists.infradead.org

On 17:26 Sat 11 Mar     , Michael Olbrich wrote:
> On Wed, Feb 15, 2017 at 08:29:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Today the EFI is build as an other ARCH when in fact it's just a boot mode
> > 
> > so move it back to arch/x86 for the spicific x86 part and the common
> > to common and driver
> > 
> > The last 3 patches allow to debug EFI and prepare for more efi support
> > 
> > The following changes since commit b225bbf295c92263adbcec2c385c5e8d83542c72:
> > 
> >   i.MX: esdhc: fix imx-esdhc driver for non-OF boards (2017-02-14 08:48:34 +0100)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git
> > 
> > for you to fetch changes up to df12536f83b485c9a4ee28f78637356c6abab6f6:
> > 
> >   efi: add efi handle dump command (2017-02-15 07:32:24 +0800)
> 
> While testing the serial stuff I noticed that the
> CONFIG_ARCH_EFI_REGISTER_COM1 option got lost during this rework.
I did not merge it as it's a hack more than a feature as this by pass the EFI
API and access the hw directly instead of using Serial IO

Which was add after

And I plan to drop this hack

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
