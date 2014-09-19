Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUt31-0006b0-0b
 for barebox@lists.infradead.org; Fri, 19 Sep 2014 07:56:07 +0000
Date: Fri, 19 Sep 2014 09:55:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140919075542.GF4992@pengutronix.de>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140919054725.GD4992@pengutronix.de> <541BD0B9.9090101@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <541BD0B9.9090101@gmail.com>
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
Subject: Re: [PATCH v2 0/6] mvebu multi SoC support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 19, 2014 at 08:44:09AM +0200, Sebastian Hesselbarth wrote:
> On 09/19/2014 07:47 AM, Sascha Hauer wrote:
> > On Wed, Sep 17, 2014 at 10:22:38PM +0200, Sebastian Hesselbarth wrote:
> >> This is v2 of the Multi-SoC series for MVEBU. It has been tested
> >> on Kirkwood (Guruplug), Dove (CuBox), and Armada 370 (Mirabox)
> >> with the very same non-EABI binary. It should also work on Armada
> >> XP but I cannot test right now.
> > 
> > Do you want to give it a test on Armada XP before I apply this series or
> > are you fine with this without testing it on Armada XP?
> 
> I just tested it on Lenovo ix4-300d with Armada XP MV78230-A0, so feel
> free to pick it up.

Cool, just did that. Are you fine with removing the board specific
configs now that we have a mvebu_defconfig?

> If I find some time, I'll polish ix4-300d patches and send them, too.

Nice.

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
