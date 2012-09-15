Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCrZF-00069D-OF
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 12:33:50 +0000
Date: Sat, 15 Sep 2012 14:33:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120915123348.GY6180@pengutronix.de>
References: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
 <1347626180.3037.18.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347626180.3037.18.camel@lws-weitzel>
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
Subject: Re: [RFC, PATCH] barebox-update command support
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 14, 2012 at 02:36:20PM +0200, Jan Weitzel wrote:
> Am Freitag, den 14.09.2012, 09:45 +0200 schrieb Sascha Hauer:
> > Hi All,
> > 
> > The following adds barebox-update command support. This command is
> > supposed to provide a dedicated command for updating barebox.
> On OMAP we have MLO and barebox. Should we use the command only for MLO?
> The barebox didn't need special handling. Whats about kernel image and
> rootfs?

For Omap I am not sure. Making it bootable indeed requires two images,
so of these should be handled here. I don't know though how this could
be handled in a generic command.

Kernel and rootfs is another story, this shouldn't be handled here.
This command is thought to be for the potentially dangerous barebox
update where you only have a single try. Also, flashing kernel or rootfs
is not really SoC or board specific.

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
