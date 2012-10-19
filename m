Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPEWu-0004p1-WC
 for barebox@lists.infradead.org; Fri, 19 Oct 2012 15:30:34 +0000
Date: Fri, 19 Oct 2012 17:30:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121019153028.GQ27665@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-3-git-send-email-s.hauer@pengutronix.de>
 <20121018072656.GB22418@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121018072656.GB22418@game.jcrosoft.org>
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
Subject: Re: [PATCH 02/28] ARM at91sam926x: provide reset function for boards
 with lowlevel init
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 18, 2012 at 09:26:56AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 23:03 Wed 17 Oct     , Sascha Hauer wrote:
> > Some Atmel boards use a reset() function provided by the architecture.
> > Add a reset function for the board instead and call the architecture
> > specific init function from there. While at it, test if we are running
> > from SDRAM and skip the init function in this case. This makes the configs
> > safe for both first and second stage.
> 
> no when using the lowlevel init ont at91 we are first stage so this can not
> work at91_get_sdram_size can only known the ramsize after the lowlevle is done

You are right, something is wrong here.

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
