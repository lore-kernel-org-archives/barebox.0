Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCpTp-0006Xt-Qj
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 10:52:27 +0000
Date: Tue, 5 Mar 2013 11:52:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305105218.GU1906@pengutronix.de>
References: <1361521255-3935-1-git-send-email-s.hauer@pengutronix.de>
 <20130304205632.GL23022@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130304205632.GL23022@game.jcrosoft.org>
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
Subject: Re: [PATCH] defaultenv-2: add boot sequence
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 04, 2013 at 09:56:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:20 Fri 22 Feb     , Sascha Hauer wrote:
> > From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > 
> > This allows to boot a sequence of boot entries until one succeeds.
> > 
> > boot sources can be passed in $global.boot.default, which is now treated
> > as a list. Also a list of boot entries can be specified as arguments
> > to the boot script. The entries can be:
> > 
> > - a plain filename from /env/boot/
> > - a full path to an arbitrary file
> > - a directory containing boot entries
> > 
> > With this this command:
> > 
> > boot net nand-ubi /env/boot.d
> > 
> > would first use the /env/boot/net entry, if this fails the /env/boot/nand-ubi
> > entry and if this also fails the files from /env/boot.d/ (which could also
> > be links to boot scripts)
> > 
> > To make the above the default, global.boot.default would be specified as:
> > 
> > global.boot.default="net nand-ubi /env/boot.d"
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> ok can we have this on master?

Ok.

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
