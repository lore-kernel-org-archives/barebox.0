Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoC0k-0001q4-Td
 for barebox@lists.infradead.org; Tue, 11 Nov 2014 14:01:36 +0000
Message-ID: <1415714470.2815.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Nov 2014 15:01:10 +0100
In-Reply-To: <1415713894.20385.20.camel@ws-apr.office.loc>
References: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
 <1415272993-29736-2-git-send-email-l.stach@pengutronix.de>
 <1415713894.20385.20.camel@ws-apr.office.loc>
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
Subject: Re: [PATCH 2/2] ARM: imx5: add imx5_cpu_lowlevel_init and use in
 all boards
To: Andreas Pretzsch <apr@cn-eng.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 11.11.2014, 14:51 +0100 schrieb Andreas Pretzsch:
> On Do, 2014-11-06 at 12:23 +0100, Lucas Stach wrote:
> > This is similar to what we do on imx6 and makes sure we
> > apply the errata workarounds early.
> 
> Without checking, doesn't this also apply to other Cortex-A8, like the
> TI AM335x and OMAP3 chips ?
> 
> Reading "ARM Cortex A8 errata" raises this thought...
> 
I don't know exactly for the OMAP3 chips, but at least AM335x production
silicon has r3p2 of the Cortex-A8 where this errata is already fixed in
hardware.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
