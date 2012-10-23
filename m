Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQe2T-0002Oj-HR
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 12:56:58 +0000
Date: Tue, 23 Oct 2012 14:56:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121023125654.GT27665@pengutronix.de>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <1350922048-25699-2-git-send-email-plagnioj@jcrosoft.com>
 <20121023085906.GR27665@pengutronix.de>
 <20121023102059.GH21588@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121023102059.GH21588@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/3] envfs: add command_abi_version support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 23, 2012 at 12:20:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 
> > We may have to introduce min/max, I'm not sure on that.
> no if your env is compatible with more recent but back compatible too
> 
> as you do this with the example of mount update I did recently
> 
> if [ $command_abi_version -lt 1 ]
> then
> 	mount /dev/disk0.0 fat /mnt
> else
> 	mount /dev/disk0.0 /mnt
> fi

That is going to be *very* painful.

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
