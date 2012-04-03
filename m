Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEw1r-0004cO-NA
 for barebox@lists.infradead.org; Tue, 03 Apr 2012 05:11:41 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 55CCBFF99EB
 for <barebox@lists.infradead.org>; Tue,  3 Apr 2012 07:12:17 +0200 (CEST)
Date: Tue, 3 Apr 2012 06:55:54 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120403045554.GH8116@game.jcrosoft.org>
References: <20120402141700.GF8116@game.jcrosoft.org>
 <1333376350-19506-1-git-send-email-plagnioj@jcrosoft.com>
 <20120402190246.GE3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120402190246.GE3852@pengutronix.de>
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
Subject: Re: [PATCH 1/8] net: dhcp: factorise option recption handling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:02 Mon 02 Apr     , Sascha Hauer wrote:
> On Mon, Apr 02, 2012 at 04:19:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Instead of using a static switch case the handle the received option
> > use an array of supported option.
> > 
> > This will allow to unset the env var without duplicating the code.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> Much better, thanks.
> 
> > +struct dhcp_opt {
> > +	unsigned char option;
> > +	const char *barebox_var_name;
> > +	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
> > +	void *data;
> > +
> > +	/* request automatically the option when creating the DHCP request */
> > +	bool optinal;
> 
> s/optinal/optional/?
> 
> You can optimize the size of this struct a bit by putting this bool
> after the unsigned char above.
branch updated with it

Best Regards,
J.
> 
> > +
> > +	struct bootp *bp;
> > +};
> > +
> > +static void netmask_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
> > +{
> > +	IPaddr_t ip;
> > +
> > +	ip = net_read_ip(popt);
> > +	net_set_netmask(ip);
> > +}
> > +
> > +static void gateway_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
> > +{
> > +	IPaddr_t ip;
> > +
> > +	ip = net_read_ip(popt);
> > +	net_set_gateway(ip);
> > +}
> > +
> > +static void env_ip_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
> > +{
> > +	IPaddr_t ip;
> > +
> > +	if (!opt->barebox_var_name) {
> > +		pr_err("dhcp: %s: option %d no barebox_var_name set\n",
> > +		       __func__, opt->option);
> > +		return;
> > +	}
> 
> I think we don't need this check. It is easy enough to review the code
> to not have this bug.
> 
> > +
> > +	ip = net_read_ip(popt);
> > +	setenv_ip(opt->barebox_var_name, ip);
> > +}
> > +
> > +static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
> > +{
> > +	char str[256];
> > +
> > +	if (!opt->barebox_var_name) {
> > +		pr_err("dhcp: %s: option %d no barebox_var_name set\n",
> > +		       __func__, opt->option);
> > +		return;
> > +	}
> 
> ditto
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
