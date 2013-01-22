Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxemQ-0004jw-MA
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:24:53 +0000
Date: Tue, 22 Jan 2013 15:24:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130122142447.GM1906@pengutronix.de>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
 <1358798996-26595-7-git-send-email-plagnioj@jcrosoft.com>
 <20130122083012.GK1906@pengutronix.de>
 <20130122141523.GK26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130122141523.GK26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 7/9] at91sam9m10g45ek: add usb support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2013 at 03:15:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:30 Tue 22 Jan     , Sascha Hauer wrote:
> > On Mon, Jan 21, 2013 at 09:09:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > warning: the ohci work only without MMU
> > 
> > This should give a compilation warning at minimum given that MMU is
> > enabled in the defconfig
> I was thinking to put a depend ont he driver

Fine with me.

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
