Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDBE7-0007uh-6k
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 09:33:20 +0000
Date: Sun, 16 Sep 2012 11:33:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916093316.GI6180@pengutronix.de>
References: <1347717626-19970-1-git-send-email-plagnioj@jcrosoft.com>
 <20120916082836.GE6180@pengutronix.de>
 <20120916090425.GH25990@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916090425.GH25990@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1] defconfig: substitute '-' to '_' in defconfig name
 so MAKEALL can work
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 16, 2012 at 11:04:25AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:28 Sun 16 Sep     , Sascha Hauer wrote:
> > You should rather fix the MAKEALL script.
> can not
> 
> the scripts take a config file like this
> 
> The cross-compiler can be specify via
> CROSS_COMPILE               default
> CROSS_COMPILE_<arch>        arch default
> CROSS_COMPILE_<target>      deconfig specifc
> 
> so bash does not accept var xx-xx only xx_xx

You could s/-/_/ in MAKEALL then. I really do not like the limitation of
not having dashes in defconfig files.

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
