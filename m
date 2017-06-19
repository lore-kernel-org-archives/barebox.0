Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMr42-0002Kf-Q1
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 07:25:36 +0000
Date: Mon, 19 Jun 2017 09:25:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170619072511.x6gmx5oa7u7eiprq@pengutronix.de>
References: <1497361028-39920-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1497361028-39920-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v4] arm: boards: phytec-som-am335x: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 13, 2017 at 03:37:08PM +0200, Daniel Schultz wrote:
> Expand the boot scripts with EMMC and add a default file source for
> expansions.
> 
> Removed "rw" and "rootwait" bootargs from existing boot scripts.
> Added "rootflags='data=journal'" bootarg to SD card boot script.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> +#!/bin/sh
> +
> +path="/mnt/tftp"
> +
> +global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> +
> +oftree="${path}/${global.user}-oftree-${global.hostname}"
> +if [ -f "${oftree}" ]; then
> +    global.bootm.oftree="$oftree"
> +fi
> +
> +nfsroot="/nfsroot/${global.hostname}"

This assumed there is one nfsroot for all users. The intention with the
original naming was that each user can create a link in his home
directory to wherever the nfsroot lives, which may include some globally
available nfsroot for all users. Why change it?

> +bootargs-ip
> +
> +global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,vers=3,udp"

Why udp? Normally tcp is preferred, no?

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
