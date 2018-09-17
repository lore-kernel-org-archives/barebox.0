Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1o1j-0001mr-Bo
 for barebox@lists.infradead.org; Mon, 17 Sep 2018 07:33:01 +0000
Date: Mon, 17 Sep 2018 09:32:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180917073247.GB4097@pengutronix.de>
References: <20180912210006.28087-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180912210006.28087-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH for master 0/2] MIPS and PCI-related fixes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 13, 2018 at 12:00:04AM +0300, Antony Pavlov wrote:
> Antony Pavlov (2):
>   MIPS: fix PCI quirk infrastructure build
>   pci_of_match_device: don't crash on MIPS Malta
> 
>  arch/mips/lib/barebox.lds.S | 11 +++++++++++
>  drivers/pci/pci.c           |  2 +-
>  2 files changed, 12 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> -- 
> 2.18.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
