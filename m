Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeQmB-0000qN-BU
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 14:41:40 +0000
Message-ID: <1383835020.4120.2.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 07 Nov 2013 15:37:00 +0100
In-Reply-To: <20131107143749.GK26639@ns203013.ovh.net>
References: <1383747881-15698-1-git-send-email-jbe@pengutronix.de>
 <1383747881-15698-3-git-send-email-jbe@pengutronix.de>
 <20131107100456.GJ26639@ns203013.ovh.net>
 <20131107110909.GR24559@pengutronix.de>
 <20131107143749.GK26639@ns203013.ovh.net>
Mime-Version: 1.0
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

Am Donnerstag, den 07.11.2013, 15:37 +0100 schrieb Jean-Christophe
PLAGNIOL-VILLARD:
> On 12:09 Thu 07 Nov     , Sascha Hauer wrote:
> > On Thu, Nov 07, 2013 at 11:04:56AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > 	I really do not like it
> > > 
> > > 	we need to have an API to load firmware same a Linux
> > 
> > The firmware loading mechanism in Linux is driven by the driver
> > requesting a firmware. This is appropriate for WiFi drivers which can't
> > continue without a firmware. For FPGAs which can be loaded, unloaded, or
> > even partially loaded, it's the user that should trigger firmware
> > loading, not the driver.
> > 
> > Also, in barebox a user should decide if and when a firmware is loaded.
> > We have cases where a single board requires different Firmwares
> > depending on bootstrapping. In this case You don't want to have fixed
> > firmware names.
> > 
> > So no, the Linux Firmware model is not suitable for barebox (it sucks
> > for Linux aswell in many cases).
> 
> and command is horrible as you need to known the protocol which you do not
> care
> 
> you just need to known the fpga device and firmware you want to use
> 
> then the fpga driver will handle
> 
Did you take the time to read the patches?

From a user perspective you only specify which FPGA you want to program
and tell the command which firmware file to use. The protocol and other
lowlevel stuff is taken care of in the handler.

Regards,
Lucas
-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
