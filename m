Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eIdRh-0002JG-HY
 for barebox@lists.infradead.org; Sat, 25 Nov 2017 16:36:51 +0000
Date: Sat, 25 Nov 2017 17:36:23 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171125163623.GC22830@ravnborg.org>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-7-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171124081237.6830-7-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 06/21] net: dhcp: Do not overwrite serverip if it is valid
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

>  }
>  
> -void net_set_serverip(IPaddr_t ip)
> +void net_set_serverip(IPaddr_t ip, bool overwrite)
>  {
> +	if (net_serverip && !overwrite)
> +		return;
> +
>  	net_serverip = ip;
>  }

An alternative solution had been to implement two functions:
net_set_serverip() - that would always set the ip.
net_set_empty_serverip() - update ip only if empty

This is more readable than a boolean flag which
you always need to look up to check the interpretation of.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
