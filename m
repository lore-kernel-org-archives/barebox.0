Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOOwp-0000sD-TE
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 10:34:56 +0000
Date: Mon, 1 Sep 2014 12:34:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901103427.GU5352@pengutronix.de>
References: <20140804192141.GO23235@pengutronix.de>
 <1408620379-9338-1-git-send-email-j.weitzel@phytec.de>
 <20140821161507.8e0382473912fde0587f9443@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140821161507.8e0382473912fde0587f9443@gmail.com>
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
Subject: Re: [PATCH v3] commands: of_dump switch to get fixed devictree
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 21, 2014 at 04:15:07PM +0400, Antony Pavlov wrote:
> On Thu, 21 Aug 2014 13:26:19 +0200
> Jan Weitzel <j.weitzel@phytec.de> wrote:
> 
> > Add a switch to get the devicetree processed by the registered fixups.
> > This is also whats the kernel gets.
> > 
> >  BAREBOX_CMD_START(of_dump)
> >  	.cmd		= do_of_dump,
> >  	BAREBOX_CMD_DESC("dump devicetree nodes")
> > -	BAREBOX_CMD_OPTS("[-f] [NODE]")
> > +	BAREBOX_CMD_OPTS("[-fF] [NODE]")
> 
> This is a bit confusing. The '-f' option has one argument,
> but '-F' option has noone.
> 
> IMHO this solution is more accurate:
> 
> +	BAREBOX_CMD_OPTS("[-F] [-f NODE]")

Indeed it's more accurate, but the way Jan did it is in line with the
other commands.

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
