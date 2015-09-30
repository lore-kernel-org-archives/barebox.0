Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhILH-0007K4-SY
 for barebox@lists.infradead.org; Wed, 30 Sep 2015 14:26:49 +0000
Message-ID: <1443623176.4612.13.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 30 Sep 2015 16:26:16 +0200
In-Reply-To: <20150929141202.GB1886@pengutronix.de>
References: <20150923152803.GC12329@pengutronix.de>
 <1443076651.3184.5.camel@lws-tremmet.phytec.de>
 <20150929141202.GB1886@pengutronix.de>
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

Am Dienstag, den 29.09.2015, 16:12 +0200 schrieb Michael Grzeschik:
> On Thu, Sep 24, 2015 at 08:37:31AM +0200, Teresa Remmet wrote:
> > can you give me a little bit more information about the hardware you
> > are using? As the phytec-som-am335x, includes 3 different modules.
> > Names of the images in use and hardware revision of the som whould be
> > great.
> 
> It is an 1358.3 som which uses the MT41K128M16JT memory instead of the
> MT41J128M16125IT. I created an extra image, as it is used with an custom
> baseboard.

The MT41K128M16JT is a newer RAM. We tested that this also runs with the
timings of MT41J128M16125IT. Maybe I should add a comment into the code
as this leads to confusion.

> 
> > I have made a quick test it with a phycore som on master. It worked for
> > me.
> 
> Ok, Than there must be some differences. Possibly another used phy on
> the 1358.3 module.

I have checked this now also on a 1358.3 with MT41K128M16JT and a SMSC
LAN 8710A phy. It works with barebox master.

Regards,
Teresa

> 
> Thanks,
> Michael
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
