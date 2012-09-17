Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDTq3-0001a8-Ta
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 05:25:44 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 05001FF9C0F
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2012 07:31:26 +0200 (CEST)
Date: Mon, 17 Sep 2012 07:23:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120917052307.GN25990@game.jcrosoft.org>
References: <20120916124223.GK25990@game.jcrosoft.org>
 <1347803108-336-1-git-send-email-plagnioj@jcrosoft.com>
 <20120916180759.GJ6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916180759.GJ6180@pengutronix.de>
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
Subject: Re: [PATCH 1/1] net: introduce phylib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:07 Sun 16 Sep     , Sascha Hauer wrote:
> On Sun, Sep 16, 2012 at 03:45:08PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Adapt phylib from linux
> > 
> > switch all the driver to it
> > 
> > This will allow to have
> >  - phy drivers
> >  - to only connect the phy at then opening of the device
> >  - if the phy is not ready or not up fail on open
> > 
> > Same behaviour as in linux and will allow to share code and simplify porting.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
>  config:     ppc              pcm030_defconfig
> drivers/net/fec_mpc5200.c: In function 'mpc5xxx_fec_open':
> drivers/net/fec_mpc5200.c:415:15: error: 'mpc5xxx_fec_priv' has no member named 'phy_flags'
> drivers/net/fec_mpc5200.c:415:31: error: 'mpc5xxx_fec_priv' has no member named 'interface'
> drivers/net/fec_mpc5200.c: In function 'mpc5xxx_fec_probe':
> drivers/net/fec_mpc5200.c:687:8: error: 'RMII' undeclared (first use in this function)
> drivers/net/fec_mpc5200.c:687:8: note: each undeclared identifier is reported only once for each function it appears in
> drivers/net/fec_mpc5200.c:688:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
> drivers/net/fec_mpc5200.c:690:8: error: 'RGMII' undeclared (first use in this function)
> drivers/net/fec_mpc5200.c:691:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
> drivers/net/fec_mpc5200.c:694:7: error: 'mpc5xxx_fec_priv' has no member named 'phy_flags'
> drivers/net/fec_mpc5200.c:696:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
> drivers/net/fec_mpc5200.c:699:7: error: 'mpc5xxx_fec_priv' has no member named 'interface'
> make[2]: *** [drivers/net/fec_mpc5200.o] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [drivers/net] Error 2
> make: *** [drivers] Error 2
> make: *** Waiting for unfinished jobs....
we really need to cleanup this driver to share code with teh arm one instead
of copy and paste everywhere

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
