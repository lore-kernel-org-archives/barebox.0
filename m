Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSkDD-0007Nw-GO
 for barebox@lists.infradead.org; Fri, 11 May 2012 07:26:27 +0000
Date: Fri, 11 May 2012 09:24:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511072425.GA27341@pengutronix.de>
References: <1336642422-23800-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336642422-23800-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] MIPS: initial modules support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 10, 2012 at 01:33:42PM +0400, Antony Pavlov wrote:
> This code does not work correctly.
> 
> insmod got unaligned access exception during apply_r_mips_32_rel

I can't say much to this patch, it looks sane. Of course it should work
before applying it ;)

> +static int apply_r_mips_32_rel(struct module *me, u32 *location, Elf_Addr v)
> +{
> +	pr_debug("apply_r_mips_32_rel: locatio = %p, v = %08x\n", location, v);

s/locatio/location/

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
