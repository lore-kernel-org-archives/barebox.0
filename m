Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eol43-0000Ub-Up
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 07:13:13 +0000
Date: Thu, 22 Feb 2018 08:12:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180222071257.jmysyzpc72nr7ccu@pengutronix.de>
References: <1519112870-16824-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1519112870-16824-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] DHCP: fix option 54 passing
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org, linux@rempel-privat.de

On Tue, Feb 20, 2018 at 08:47:50AM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Though variable net_dhcp_server_ip was declared and used as a
> function parameter it was never assigned. That's why a DHCP
> request was sent without option 54 set. Some DHCP server for
> example dnsmasq didn't accept such a packet.
> 
> As both offered IP address and server IP are stored in the global
> dhcp_result structure we don't need either net_dhcp_server_ip or
> OfferedIP variables and can use the addresses from dhcp_result
> directly.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  net/dhcp.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index 946efaa..d30551d 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -76,7 +76,6 @@ typedef enum {
>  
>  static uint32_t Bootp_id;
>  static dhcp_state_t dhcp_state;
> -static IPaddr_t net_dhcp_server_ip;
>  static uint64_t dhcp_start;
>  static struct eth_device *dhcp_edev;
>  struct dhcp_req_param dhcp_param;
> @@ -350,7 +349,6 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
>  {
>  	struct bootp *bp;
>  	int extlen;
> -	IPaddr_t OfferedIP;
>  
>  	debug("%s: Sending DHCPREQUEST\n", __func__);
>  
> @@ -378,9 +376,8 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
>  	/*
>  	 * Copy options from OFFER packet if present
>  	 */
> -	net_copy_ip(&OfferedIP, &bp_offer->bp_yiaddr);
> -	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
> -				OfferedIP);
> +	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST, dhcp_result->serverip,
> +				dhcp_result->ip);
>  
>  	debug("Transmitting DHCPREQUEST packet\n");
>  	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
> -- 
> 2.1.4
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
