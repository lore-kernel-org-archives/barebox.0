Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEfG8-0000Ru-3d
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 11:17:17 +0000
Date: Mon, 2 Apr 2012 13:17:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402111710.GV3852@pengutronix.de>
References: <20120330042713.GX444@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/8] Network update DHCP/BOOTP
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 30, 2012 at 06:27:13AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	the following patch series update the network dhcp and bootp support
> 	to support options 66, 150, 61, 77, 97
> 
> 	this will also help to add pxe boot support later
> 
> The following changes since commit 485cee59cf64b5019c5a294074007b93509b83e0:
> 
>   Merge branch 'work/imx51-babbage-clk' into next (2012-03-23 21:22:14 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git net
> 
> for you to fetch changes up to 2e991cac2e1444def3d27ec06fd10724fe3e19ba:
> 
>   defaultenv: add support of etherboot_file (2012-03-30 12:40:18 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (8):
>       net: dhcp: reset env variable before do a dhcp request
>       net: dhcp: add support of tftp name server
>       net: dhcp: add support of tftp server ip or Etherboot file (option 150)
>       net: dhcp: allow to set transmitted client id
>       net: dhcp: allow to set transmitted client uuid
>       net: dhcp: allow to set transmitted user class
>       net: dns: export resolved ip to var resolved_ip
>       defaultenv: add support of etherboot_file

Given the current poor state of net/dhcp.c I'm not very willing to
accept feature patches to this. I think what we need is a struct
dhcp_opt:

struct dhcp_opt {
	unsigned char option;
	const char *barebox_var_name;
#define DHCP_OPT_IP		1
#define DHCP_OPT_STRING		2
	unsigned long flags;
};

With this we could loop around all opts and
- unset existing environment variables before a dhcp request
- construct the request packet
- parse response

Also nice to have are defines for the different dhcp options and a
consistent dhcp_ prefix for all environment variables modified by the
dhcp command.

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
