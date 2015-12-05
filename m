Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5LMe-0006YJ-9v
 for barebox@lists.infradead.org; Sat, 05 Dec 2015 22:31:37 +0000
Date: Sat, 5 Dec 2015 23:31:06 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20151205223106.GA20529@ravnborg.org>
References: <1449352680-18650-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449352680-18650-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] net: smc1111: fix ethernet mac setting
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Dec 05, 2015 at 10:58:00PM +0100, Robert Jarzmik wrote:
> Even if the setting of the MAC address does work correctly, the function
> return an error.
> 
> In the former barebox version, this didn't seem to be a problem. In
> v2015.11.0 version, the "ifup eth0" command fails because of this, and
> as a consequence the network interface doesn't work.
I just spent a few minutes to audit all other set_ethaddr..() functions.
This was the only function that returns -1 in the normal case.

netx_eth.c has the following code:

     return -0;

This looks strange but is ok.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
