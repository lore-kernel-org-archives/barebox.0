Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrV98-0007dm-3c
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 14:22:35 +0000
Date: Wed, 18 Jul 2012 16:22:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120718142232.GJ30009@pengutronix.de>
References: <1342601210-17849-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342601210-17849-1-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCHv5] Enable a way to provide the reason for "being here"
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 18, 2012 at 10:46:46AM +0200, Juergen Beisert wrote:
> Many architectures support a way to detect why the bootloader is running.
> This patch adds a global variable to be able to use the cause in some kind of
> shell code to do special things on demand. For example to do an emergency boot,
> when the last boot fails and the watchdog reactivates the hanging system.
> 
> V2 includes Marc's suggesion.
> V3 includes the detection for the i.MX28 SoC and fixes its usage for other
> i.MX SoCs.
> V4 includes Marc's recent suggestion.
> V5 includes Sascha's comments.
> 
> Comments are still welcome.
> 

Applied, thanks

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
