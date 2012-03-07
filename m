Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5CRp-00015h-8S
 for barebox@lists.infradead.org; Wed, 07 Mar 2012 08:42:14 +0000
Date: Wed, 7 Mar 2012 09:42:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120307084204.GL3852@pengutronix.de>
References: <1331055375-21439-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331055375-21439-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH] net: dhcp: allow to set transmitted vendor id
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 06, 2012 at 06:36:15PM +0100, Enrico Scholz wrote:
> For net boot setups it is useful to submit boot params like server or
> bootfile over dhcp.  To distinguish barebox from e.g. pxe machines, a
> custom vendor id can be sent in dhcp discover/request messages.
> 
> E.g. the ISC dhcp server can be configured with
> 
> | if substring(option vendor-class-identifier,0,8) = "barebox:" {
> | 	next-server		192.168.3.24;
> | 	server-name		"192.168.3.24";
> | 	option tftp-server-name	"192.168.3.24";
> | 	option root-path = concat("/srv/sysroots/by-mac/",
> |          binary-to-ascii (16, 8, "-", substring (hardware, 1, 6)));
> | }
> 
> to sent boot params which are valid for barebox hosts only.

I like this one aswell. The string shouldn't be hardcoded though.
It could be a command line option to dhcp.

Sascha

> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  net/Kconfig |   13 +++++++++++++
>  net/dhcp.c  |   12 ++++++++++++
>  2 files changed, 25 insertions(+), 0 deletions(-)
> 
> diff --git a/net/Kconfig b/net/Kconfig
> index 3169d20..56d6ee8 100644
> --- a/net/Kconfig
> +++ b/net/Kconfig
> @@ -7,6 +7,19 @@ config NET_DHCP
>  	bool
>  	prompt "dhcp support"
>  
> +config NET_DHCP_VENDOR_ID
> +        string
> +	prompt "dhcp vendor id"
> +	depends on NET_DHCP
> +	default "barebox:default"
> +	help
> +	  DHCP Vendor ID (code 60) submitted in DHCP requests. It can
> +	  be used in the DHCP server's configuration to select options
> +	  (e.g. bootfile or server) which are valid for barebox clients
> +	  only.
> +
> +	  An empty string will suppress generation of such requests.
> +
>  config NET_NFS
>  	bool
>  	prompt "nfs support"
> diff --git a/net/dhcp.c b/net/dhcp.c
> index 2ce9090..65f2614 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -129,6 +129,7 @@ static void bootp_copy_net_params(struct bootp *bp)
>   */
>  static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID, IPaddr_t RequestedIP)
>  {
> +	size_t vendor_id_len = sizeof CONFIG_NET_DHCP_VENDOR_ID - 1;
>  	u8 *start = e;
>  	u8 *cnt;
>  
> @@ -168,6 +169,17 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID, IPaddr_t R
>  		*e++ = tmp & 0xff;
>  	}
>  
> +	/* 64 is some arbitrary value to prevent generation of too
> +	 * large dhcp requests. */
> +	BUILD_BUG_ON(sizeof CONFIG_NET_DHCP_VENDOR_ID > 64);
> +
> +	if (vendor_id_len > 0) {
> +		*e++ = 60;
> +		*e++ = vendor_id_len;
> +		memcpy(e, CONFIG_NET_DHCP_VENDOR_ID,  vendor_id_len);
> +		e   += vendor_id_len;
> +	}
> +
>  	*e++ = 55;		/* Parameter Request List */
>  	 cnt = e++;		/* Pointer to count of requested items */
>  	*cnt = 0;
> -- 
> 1.7.7.6
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
