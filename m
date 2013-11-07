Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo6.mail-out.ovh.net ([46.105.54.31]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeQhP-0000jX-TS
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 14:36:45 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id B3FFBFFC183
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2013 15:37:08 +0100 (CET)
Date: Thu, 7 Nov 2013 15:37:49 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131107143749.GK26639@ns203013.ovh.net>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
 <20131107100456.GJ26639@ns203013.ovh.net>
 <20131107110909.GR24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131107110909.GR24559@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 12:09 Thu 07 Nov     , Sascha Hauer wrote:
> On Thu, Nov 07, 2013 at 11:04:56AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	I really do not like it
> > 
> > 	we need to have an API to load firmware same a Linux
> 
> The firmware loading mechanism in Linux is driven by the driver
> requesting a firmware. This is appropriate for WiFi drivers which can't
> continue without a firmware. For FPGAs which can be loaded, unloaded, or
> even partially loaded, it's the user that should trigger firmware
> loading, not the driver.
> 
> Also, in barebox a user should decide if and when a firmware is loaded.
> We have cases where a single board requires different Firmwares
> depending on bootstrapping. In this case You don't want to have fixed
> firmware names.
> 
> So no, the Linux Firmware model is not suitable for barebox (it sucks
> for Linux aswell in many cases).

and command is horrible as you need to known the protocol which you do not
care

you just need to known the fpga device and firmware you want to use

then the fpga driver will handle

Best Regards,
J.
> 
> Sascha
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
