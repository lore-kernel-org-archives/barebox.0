Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf0AQ-0000I2-PW
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 06:38:07 +0000
Message-ID: <1443076651.3184.5.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Thu, 24 Sep 2015 08:37:31 +0200
In-Reply-To: <20150923152803.GC12329@pengutronix.de>
References: <20150923152803.GC12329@pengutronix.de>
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
Subject: Re: boards: phytec-som-am335x: ethernet broken after reset
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Michael,

can you give me a little bit more information about the hardware you
are using? As the phytec-som-am335x, includes 3 different modules.
Names of the images in use and hardware revision of the som whould be
great.

I have made a quick test it with a phycore som on master. It worked for
me.

Regards,
Teresa

Am Mittwoch, den 23.09.2015, 17:28 +0200 schrieb Michael Grzeschik:
> Hi Teresa,
> 
> With the current code for the phytec-som-am335x, the ethernet works only
> after the first powerup. If you soft reset the module the network won't
> work anymore.
> 
> ...
> cpsw 4a100000.ethernet: detected phy mask 0x6
> mdio_bus: miibus0: probed
> cpsw 4a100000.ethernet: Failed to setup slave 0: I/O error
> ...
> 
> That happens in the second boot. The phy is probably in a wrong state and
> won't communicate over MDIO.
> 
> Do you have any ideas?
> 
> Thanks,
> Michael
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
