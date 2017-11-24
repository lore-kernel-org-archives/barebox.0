Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eINh0-0002EJ-5B
 for barebox@lists.infradead.org; Fri, 24 Nov 2017 23:47:40 +0000
Date: Sat, 25 Nov 2017 00:47:09 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171124234709.GB22830@ravnborg.org>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171124081237.6830-5-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 04/21] net: Add functions to get/set nameserver and
 domainname
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Nov 24, 2017 at 09:12:20AM +0100, Sascha Hauer wrote:
> It's more convenient to have getter/setter functions for
> variables rather than using the detour around global vars
> which use string matching and all kinds of overhead in the
> background.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/net.h |  4 ++++
>  net/dns.c     |  8 ++------
>  net/net.c     | 24 ++++++++++++++++++++++++
>  3 files changed, 30 insertions(+), 6 deletions(-)
> 
> diff --git a/include/net.h b/include/net.h
> index 632b6d5410..0fcde2f0b3 100644
> --- a/include/net.h
> +++ b/include/net.h
> @@ -218,8 +218,12 @@ void net_set_ip(IPaddr_t ip);
>  void net_set_serverip(IPaddr_t ip);
>  void net_set_netmask(IPaddr_t ip);
>  void net_set_gateway(IPaddr_t ip);
> +void net_set_nameserver(IPaddr_t ip);
> +void net_set_domainname(const char *name);
>  IPaddr_t net_get_ip(void);
>  IPaddr_t net_get_serverip(void);
> +IPaddr_t net_get_nameserver(void);
> +const char *net_get_domainname(void);
>  
>  /* Do the work */
>  void net_poll(void);
> diff --git a/net/dns.c b/net/dns.c
> index 69b8a24861..a8ce7a4484 100644
> --- a/net/dns.c
> +++ b/net/dns.c
> @@ -202,7 +202,6 @@ static void dns_handler(void *ctx, char *packet, unsigned len)
>  IPaddr_t resolv(const char *host)
>  {
>  	IPaddr_t ip;
> -	const char *ns;
>  
>  	if (!string_to_ip(host, &ip))
>  		return ip;
> @@ -211,16 +210,13 @@ IPaddr_t resolv(const char *host)
>  
>  	dns_state = STATE_INIT;
>  
> -	ns = getenv("global.net.nameserver");
> -	if (!ns || !*ns) {
> +	ip = net_get_nameserver();
> +	if (!ip) {
>  		printk("%s: no nameserver specified in $net.nameserver\n",
>  				__func__);
Should this use pr_info - and not printk direct?



>  		return 0;
>  	}
>  
> -	if (string_to_ip(ns, &ip))
> -		return 0;
> -
>  	debug("resolving host %s via nameserver %pI4\n", host, &ip);

And this should be pr_debug (IMO).
The result is the same - but it is more obvious that the pr_ macros are used.

>  static char *net_domainname;
>  
> +void net_set_nameserver(IPaddr_t nameserver)
> +{
> +	net_nameserver = nameserver;
> +}
> +
> +IPaddr_t net_get_nameserver(void)
> +{
> +	return net_nameserver;
> +}
> +
> +void net_set_domainname(const char *name)
> +{
> +	free(net_domainname);
> +	if (name)
> +		net_domainname = xstrdup(name);

> +	else
> +		net_domainname = xstrdup(name);
Looks strange that we check name - and then the if and else clause is the same.

> +};


	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
