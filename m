Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zgvdq-0005sb-0F
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 14:12:26 +0000
Date: Tue, 29 Sep 2015 16:12:02 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20150929141202.GB1886@pengutronix.de>
References: <20150923152803.GC12329@pengutronix.de>
 <1443076651.3184.5.camel@lws-tremmet.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443076651.3184.5.camel@lws-tremmet.phytec.de>
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
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 24, 2015 at 08:37:31AM +0200, Teresa Remmet wrote:
> can you give me a little bit more information about the hardware you
> are using? As the phytec-som-am335x, includes 3 different modules.
> Names of the images in use and hardware revision of the som whould be
> great.

It is an 1358.3 som which uses the MT41K128M16JT memory instead of the
MT41J128M16125IT. I created an extra image, as it is used with an custom
baseboard.

> I have made a quick test it with a phycore som on master. It worked for
> me.

Ok, Than there must be some differences. Possibly another used phy on
the 1358.3 module.

Thanks,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
