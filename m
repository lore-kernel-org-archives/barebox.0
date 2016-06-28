Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHn1f-0005Wb-BV
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 07:01:40 +0000
Date: Tue, 28 Jun 2016 09:01:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160628070117.GL20657@pengutronix.de>
References: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
 <1466771041-89803-12-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466771041-89803-12-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH v3 11/14] arm: cpu: add basic arm64 mmu support
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 24, 2016 at 02:23:58PM +0200, Raphael Poggi wrote:
> +
> +	pr_debug("ttb: 0x%p\n", ttb);
> +
> +	/* create a flat mapping using 1MiB sections */
> +	create_sections(0, 0, GRANULE_SIZE, UNCACHED_MEM);
> +
> +	/*
> +	 * First remap sdram cached using sections.
> +	 * This is to speed up the generation of 2nd level page tables
> +	 * below
> +	 */

The comment seems to be inaccurate here. There is no 2nd level page
table generation below.

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
