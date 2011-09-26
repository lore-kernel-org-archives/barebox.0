Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R87wO-0004hU-DA
	for barebox@lists.infradead.org; Mon, 26 Sep 2011 09:57:37 +0000
Date: Mon, 26 Sep 2011 11:57:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110926095734.GQ31404@pengutronix.de>
References: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
	<1316984054-31295-12-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1316984054-31295-12-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 11/11] net: dhcp: introduce global serverip variable
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, Sep 25, 2011 at 10:54:14PM +0200, Wolfram Sang wrote:
> Sometimes, the TFTP/NFS server is different from the DHCP server. To handle
> such situations, a global 'serverip' variable is introduced. If present and set
> with a valid IP address, it will be used instead of the address returned by the
> DHCP server.

Just had some offline discussion with Wolfram. We came to agree that
it's not a good idea to introduce a global 'serverip' variable in C
code. That said we have problems in this area. We currently use
eth0.serverip for several ips which should be really different ones.
In case of dhcp eth0.serverip is set to the ip the dhcp server
returns which is then used as tftp server and rootnfs server. This
does not match setups where you don't have control over the dhcp
server.

So we really should have tftp_serverip, rootfs_serverip and the ip
returned from the dhcp server. Throw multiple ethernet devices into
the mix and things even get more complicated. We need to do something
about it but I feel that we should do a more complete solution instead
of a quick hack to solve the problem. I have no good idea what to do
though :(

Sascha

> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  defaultenv/config |    3 ++-
>  net/dhcp.c        |    7 +++++--
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/defaultenv/config b/defaultenv/config
> index 0aaead5..235deca 100644
> --- a/defaultenv/config
> +++ b/defaultenv/config
> @@ -9,11 +9,12 @@ machine=FIXME
>  # use 'dhcp' to do dhcp in barebox and in kernel
>  # use 'none' if you want to skip kernel ip autoconfiguration
>  ip=dhcp
> +# IP of the TFTP/NFS-server. If empty (or invalid), DHCP server will be used
> +#serverip=a.b.c.d
>  
>  # or set your networking parameters here
>  #eth0.ipaddr=a.b.c.d
>  #eth0.netmask=a.b.c.d
> -#eth0.serverip=a.b.c.d
>  #eth0.gateway=a.b.c.d
>  
>  # can be either 'tftp', 'nfs', 'nand', 'nor' or 'disk'
> diff --git a/net/dhcp.c b/net/dhcp.c
> index d1781bc..899c873 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -113,8 +113,11 @@ static void bootp_copy_net_params(struct bootp *bp)
>  	tmp_ip = net_read_ip(&bp->bp_yiaddr);
>  	net_set_ip(tmp_ip);
>  
> -	tmp_ip = net_read_ip(&bp->bp_siaddr);
> -	if (tmp_ip != 0)
> +	tmp_ip = getenv_ip("serverip");
> +	if (!tmp_ip)
> +		tmp_ip = net_read_ip(&bp->bp_siaddr);
> +
> +	if (tmp_ip)
>  		net_set_serverip(tmp_ip);
>  
>  	if (strlen(bp->bp_file) > 0)
> -- 
> 1.7.5.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
