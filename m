Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQweu-0003Jj-1w
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 08:49:54 +0000
Date: Wed, 24 Oct 2012 10:49:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121024084949.GX27665@pengutronix.de>
References: <1351064903-17330-1-git-send-email-s.hauer@pengutronix.de>
 <20121024080641.GM21588@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121024080641.GM21588@game.jcrosoft.org>
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
Subject: Re: [PATCH] defenv-2: set username to 'none'
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 24, 2012 at 10:06:41AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:48 Wed 24 Oct     , Sascha Hauer wrote:
> > The current 'sha' setting, though admittedly very convenient for me,
> > was never intended to be in mainline.
> prefer empty

Then the network boot defaults to:

Kernel: -linux-hostname

and nfsroot from:

/home//nfsroot/hostname

none is more obvious...

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
