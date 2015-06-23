Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7Hl2-0001eH-PW
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 06:32:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 56A07A002F3
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2015 08:33:38 +0200 (CEST)
Date: Tue, 23 Jun 2015 08:32:00 +0200
From: Jan Remmet <J.Remmetl@phytec.de>
Message-ID: <20150623063159.GA2841@lws-weitzel2@phytec.de>
References: <1434699697-26688-1-git-send-email-j.remmet@phytec.de>
 <5583CA27.5000403@pengutronix.de> <55870437.9000102@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <55870437.9000102@pengutronix.de>
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Jan Remmet <J.Remmet@phytec.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] libdt: fix detection of eeprom devicepath
To: barebox@lists.infradead.org

On Sun, Jun 21, 2015 at 08:36:39PM +0200, Marc Kleine-Budde wrote:
> On 06/19/2015 09:52 AM, Marc Kleine-Budde wrote:
> >> At the end of of_get_devicepath there is a check for eeproms, but then
> >> of_parse_partition looks for a reg property which is in a casse of a i2c
> >> eeprom is the i2c address. This results in a wrong offset.
> > 
> > doh!
> > 
> >> With this patch a i2c eeprom backend works. It's not tested with a mtd device
> >> or a eeprom with a partition layout.
> > 
> > AFAIK on Linux partition layouts are not supported on eeprom devices, as
> > they are not handled by the mtd layer. I'll apply this patch and test on
> > my standard device, which uses a mtd device.
> 
> applied to master.
> 
> Works here with the NAND-partition backend. However udev from
> systemd-220 fails to find NAND-partition while systemd-219 works, no
> matter if your patch is applied or not. Which systemd/udev version are
> you using?
Here I use it in a initramfs with libudev.so.1.6.0, but no running daemon.

Jan

> 
> Marc
> 
> -- 
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
> 



> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
