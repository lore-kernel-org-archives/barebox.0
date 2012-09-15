Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCrUY-00065T-DA
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 12:28:58 +0000
Date: Sat, 15 Sep 2012 14:28:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120915122857.GX6180@pengutronix.de>
References: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
 <1347608713-10133-2-git-send-email-s.hauer@pengutronix.de>
 <1347624946.3037.3.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347624946.3037.3.camel@lws-weitzel>
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
Subject: Re: [PATCH 1/3] Add barebox update infrastructure
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 14, 2012 at 02:15:46PM +0200, Jan Weitzel wrote:
> > +
> > +BAREBOX_CMD_HELP_START(barebox_update)
> > +BAREBOX_CMD_HELP_USAGE("barebox_update [OPTIONS <image>]\n")
> image is mandatory

Ok, fixed. Thanks
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
