Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeNSu-0004Q7-Bh
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 11:09:33 +0000
Date: Thu, 7 Nov 2013 12:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131107110909.GR24559@pengutronix.de>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
 <20131107100456.GJ26639@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131107100456.GJ26639@ns203013.ovh.net>
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
Subject: Re: [SPAM] [PATCH 2/3] FPGA: add a programming command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Thu, Nov 07, 2013 at 11:04:56AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	I really do not like it
> 
> 	we need to have an API to load firmware same a Linux

The firmware loading mechanism in Linux is driven by the driver
requesting a firmware. This is appropriate for WiFi drivers which can't
continue without a firmware. For FPGAs which can be loaded, unloaded, or
even partially loaded, it's the user that should trigger firmware
loading, not the driver.

Also, in barebox a user should decide if and when a firmware is loaded.
We have cases where a single board requires different Firmwares
depending on bootstrapping. In this case You don't want to have fixed
firmware names.

So no, the Linux Firmware model is not suitable for barebox (it sucks
for Linux aswell in many cases).

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
