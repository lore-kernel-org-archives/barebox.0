Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P4rPo-0002HV-Mc
	for barebox@lists.infradead.org; Sun, 10 Oct 2010 08:37:57 +0000
Received: by fxm15 with SMTP id 15so244444fxm.36
	for <barebox@lists.infradead.org>; Sun, 10 Oct 2010 01:37:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Sun, 10 Oct 2010 14:07:34 +0530
Message-ID: <AANLkTikinP9VqcUCWwNFdZpbtVQ6HG2=wYdxMXMv+MU0@mail.gmail.com>
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
Subject: Re: [PATCH 00/13] OMAP/Beagleboard ehci support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 4, 2010 at 3:29 PM, Michael Grzeschik
<m.grzeschik@pengutronix.de> wrote:
> Hi all,
>
> this patchseries adds ehci support for the beagleboard, which includes
> i2c-omap, twl4030 phy and ehci-omap support.
>

Small comment - there shouldn't be any need for i2c-omap
and twl4030 phy support to get EHCI working on the beagleboard.
The EHCI ports are wired up through an SMSC332x PHY, while
the PHY in the TWL4030 is connected to the OTG port.

So this series likely ends up enabling the OTG port as well - or
brings us closer to that!

Thanks for the series - I'll try and test on my beagle.

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
