Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THKda-0003mw-2G
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 20:24:47 +0000
Date: Thu, 27 Sep 2012 22:24:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120927202443.GX1322@pengutronix.de>
References: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
 <1348766546-21547-2-git-send-email-s.hauer@pengutronix.de>
 <20120927193412.GE26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120927193412.GE26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/3] net: Add tftp command which uses the new tftp code
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 27, 2012 at 09:34:12PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 19:22 Thu 27 Sep     , Sascha Hauer wrote:
> > Traditionally tftp is a command of its own. Since we can
> > mount tftp as a filesystem we have duplicated the tftp code, the old
> > code is used by the tftp command, the new by the filesystem support.
> > This adds a tftp command based on the filesystem support to preserve
> > backward compatibility. This allows us to remove the old tftp support
> > in the next step.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/Kconfig  |    8 +++++
> >  commands/Makefile |    1 +
> >  commands/tftp.c   |  103 +++++++++++++++++++++++++++++++++++++++++++++++++++++
> why this is c code?
> 
> why not simply do it via script

Because c code is robust, cleans up after itself when the user presses
ctrl-c and is present also when the environment contains garbage because
of broken dependencies.

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
