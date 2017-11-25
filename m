Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eIdrI-0002qE-0f
 for barebox@lists.infradead.org; Sat, 25 Nov 2017 17:03:18 +0000
Date: Sat, 25 Nov 2017 18:02:51 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171125170251.GC25425@ravnborg.org>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-13-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171124081237.6830-13-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 12/21] net: dhcp: rework
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

On Fri, Nov 24, 2017 at 09:12:28AM +0100, Sascha Hauer wrote:
> The DHCP code is a mess. It is not clear which options are sent to the
> server and which options are returned from the server. Also environment
> variables are read from and written to all over the place.
> 
> This patch cleans this up. There now is struct dhcp_req_param which is
> used for options sent to the server and struct dhcp_result which contains
> the values sent from the server. The values from the server are written
> to the barebox variables in a single place. Also it's now possible to
> call the dhcp code without modifying barebox variables at all, storing
> the result only in the dhcp result struct.

Browsing the code gave a nice impression that things
got much simpler.
Noticed one thing.

This struct is not the smallest..
> +
> +struct dhcp_result {
> +	IPaddr_t ip;
> +	IPaddr_t netmask;
> +	IPaddr_t gateway;
> +	IPaddr_t nameserver;
> +	IPaddr_t serverip;
> +	char *hostname;
> +	char *domainname;
> +	char *rootpath;
> +	char *devicetree;
> +	char *bootfile;
> +	char *tftp_server_name;
> +	uint32_t leasetime;
>  };

> +struct dhcp_req_param dhcp_param;
> +struct dhcp_result *dhcp_result;
Is this why the struct is xalloc()'er and not a static variable like dhcp_param?
Maybe the lifetime of the two differs - which may also explain it.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
