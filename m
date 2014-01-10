Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1cd1-0001hS-33
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 14:00:04 +0000
Date: Fri, 10 Jan 2014 14:59:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140110135938.GE16215@pengutronix.de>
References: <1389344733-13203-1-git-send-email-list-09_barebox@tqsc.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389344733-13203-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: Re: [PATCH 1/2] mci: Support the correct version for eMMC
To: Markus Niebel <list-09_barebox@tqsc.de>
Cc: barebox@lists.infradead.org, Markus Niebel <Markus.Niebel@tqs.de>

On Fri, Jan 10, 2014 at 10:05:32AM +0100, Markus Niebel wrote:
> From: Markus Niebel <Markus.Niebel@tqs.de>
> 
> eMMC is available up to version 4.5 but the
> correct version is not decoded. Change version
> definitions to support more minor verions, add
> missing versions and parse the minor versions from
> ext_csd.
> 
> After this, card detection code and devinfo reports
> correct versions.
> 
> Handling is inspired by u-boot code.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>

Applied, thanks

I also stumbled upon the wrong production dates. Thanks for finxing.

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
