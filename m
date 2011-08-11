Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrXTd-0001rm-EG
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:47:22 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 20F0DFFA561
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:47:32 +0200 (CEST)
Date: Thu, 11 Aug 2011 17:28:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110811152832.GH22213@game.jcrosoft.org>
References: <201108111445.05457.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201108111445.05457.jbe@pengutronix.de>
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
Subject: Re: [barebox-next] Enabling SPI support for the PCM043 platform
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:45 Thu 11 Aug     , Juergen Beisert wrote:
> Hi,
> 
> when I enable the SPI support for the "pcm043_defconfig" the build ends with:
> 
>   CC      drivers/spi/imx_spi.o
> drivers/spi/imx_spi.c:111:1: error: expected identifier before '}' token
> 
> This is because the enum list is empty. Can someone tell me, what I have to 
> add in the "/drivers/spi/Kconfig" to make it work in i.MX35?

you need to add the support of the chip select, xchg_single and init for
imx31/35 as IIRC they share the same IP

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
