Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aveln-0003Tu-3I
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 05:45:47 +0000
Date: Thu, 28 Apr 2016 07:45:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160428054523.GW7860@pengutronix.de>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
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

On Mon, Apr 25, 2016 at 10:36:58PM -0700, Andrey Smirnov wrote:
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

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
