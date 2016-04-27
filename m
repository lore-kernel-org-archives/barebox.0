Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avLPP-0005Z9-NI
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 09:05:25 +0000
Message-ID: <1461747901.32509.2.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 27 Apr 2016 11:05:01 +0200
In-Reply-To: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 0/9] i.MX6Q+ fixes plus number of latest Kernel changes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

Am Montag, den 25.04.2016, 22:36 -0700 schrieb Andrey Smirnov:
> Hello,
> 
> This patchset continains i.MX6Q+ reset sequence fix (similar
> implementation was submitted to LKML) and besides that a number of
> ported coomits from "pci/host-imx6" branch of:
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git
> 
> Since some commits required a bit of massaging, I added my own
> Signed-off-by and a comment in square brackets, however my authorship
> of those commits is very minimal.
> 
> As for commit by Fabio Estevam, there I was able to apply
> corresponding kernel patch by manually editing paths in the diff file,
> so I left the commit message as it was.
> 
> Any feedback would be appreciated.
> 
I haven't checked those commits line-by-line, but they look familiar
from the kernel commits I reviewed. I suppose you tested this series on
both MX6Q and MX6QP? In that case, for the whole series:

Acked-by: Lucas Stach <l.stach@pengutronix.de>

Regards,
Lucas



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
