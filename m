Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSHSf-00020a-SL
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 08:14:15 +0000
Date: Thu, 29 Nov 2018 09:14:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129081401.fjppgpeccvidy7eh@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181128161357.af3564140bf084202355690a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181128161357.af3564140bf084202355690a@gmail.com>
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
Subject: Re: [PATCH v2 0/4] Xilinx Zynq Ultrascale+ MPSoC support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>

On Wed, Nov 28, 2018 at 04:13:57PM +0300, Antony Pavlov wrote:
> On Wed, 28 Nov 2018 12:20:49 +0100
> Michael Tretter <m.tretter@pengutronix.de> wrote:
> 
> > This is v2 of the series to add support for the Xilinx Zynq Ultrascale+ MPSoC
> > platform and the ZCU104 Evaluation Kit.
> > 
> > The patch "[PATCH v2 3/4] ARM: aarch64: add ENTRY_PROC macro for arm64"
> > probably needs a closer look, as it adds a generic macro that is expected to
> > be used by other arm64 architectures as well.
> > 
> > Changelog:
> > 
> > v1 -> v2:
> > - move ENTRY_PROC to a more generic location
> > - add separate patch for ENTRY_PROC
> > - rebase onto piggydata patches
> > - remove empty zynqmp.c and board.c
> > - use SPDX-License-Identifiers
> 
> At the moment barebox uses SPDX identifiers in very few files.
> 
> Can we adopt Linux kernel licensing rules for barebox?
> (https://github.com/torvalds/linux/blob/master/Documentation/process/license-rules.rst)

I really like the idea of using SPDX, but I never looked into what is
necessary to use it. Adopt this license-rules file, change the headers
in the files and be done with it?

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
