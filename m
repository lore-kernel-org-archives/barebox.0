Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNzr9-0005C6-T9
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 06:42:52 +0000
Date: Mon, 23 Sep 2013 08:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130923064230.GR30088@pengutronix.de>
References: <20130920054640.GD1137@ns203013.ovh.net>
 <1379656065-23690-1-git-send-email-plagnioj@jcrosoft.com>
 <1379656065-23690-2-git-send-email-plagnioj@jcrosoft.com>
 <20130923043851.GB31585@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130923043851.GB31585@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/3] animeo_ip: ensure the phy is reset correctly
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 23, 2013 at 06:38:51AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 07:47 Fri 20 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >  	animeo_ip_power_control();
> >  	animeo_ip_add_device_nand();
> > -	at91_add_device_eth(0, &macb_pdata);
> 
> when you merge it something go wrong this ligne remove was not applyed
> 
> can you check?

Ups. Should be fixed now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
