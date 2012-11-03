Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUYJv-0005ic-02
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 07:39:08 +0000
Received: from mail644.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8DBB9FFA44B
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 08:46:20 +0100 (CET)
Date: Sat, 3 Nov 2012 08:36:56 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121103073656.GW29599@game.jcrosoft.org>
References: <20121102160659.GS29599@game.jcrosoft.org>
 <20121102190141.GN1641@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121102190141.GN1641@pengutronix.de>
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
Subject: Re: [PATCH 0/2] add spi command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:01 Fri 02 Nov     , Sascha Hauer wrote:
> On Fri, Nov 02, 2012 at 05:06:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	while debugging a spi issue I found we have a i2c commands but no spi
> > 	command
> > 
> > 	So introduce one
> > 
> > The following changes since commit 56371f4e8446d04d2a5608dd5890fd87a50f888e:
> > 
> >   iomux-imx35: add missing comma in pad definition (2012-11-01 16:32:12 +0100)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git delivery/command_spi
> > 
> > for you to fetch changes up to 3d6660a40aa5a51215a1909fd2fb5702f0e6558b:
> > 
> 
> I recently used the i2c_* commands and thought it would be a good idea
> to introduce regmap for barebox. This way we could add a regmap command
> which just maps arbitrary i2c/spi devices as a cdev. Also we could
> replace several drivers in drivers/mfd/ with nearly one-liners.

why not but how to pass all the parameter to this cdev

on SPI we need some on i2c it's more simple

If this will be for the next release ok otherwise can we have this command
until then

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
