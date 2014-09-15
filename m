Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTSM2-0006Rw-4O
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 09:13:50 +0000
Date: Mon, 15 Sep 2014 11:13:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140915091324.GB4992@pengutronix.de>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-5-git-send-email-s.hauer@pengutronix.de>
 <54169CA8.5030003@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54169CA8.5030003@gmail.com>
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
Subject: Re: [PATCH 4/5] ARM: mvebu: Allow multiple SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 15, 2014 at 10:00:40AM +0200, Sebastian Hesselbarth wrote:
> On 09/15/2014 09:41 AM, Sascha Hauer wrote:
> >Now that the correct SoC specific memory fixup function is called
> >we can allow to select multiple SoCs in Kconfig.
> >
> >Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Sascha,
> 
> thanks for the patches, I'll give them a try later. FWIW, this
> patch allows to build Kirkwood together with Dove and Armada ones,
> which will not work at all. Kirkwood is armv5, while the others
> are armv7. There is no way you run a multiv7 barebox on kirkwood,
> right?

Oh, I didn't realize that Kirkwood is armv5. It should work though.
The only reason to additionally add a mvebu_v7_config is to make
Thumb2 mode available to the SoCs that support it.

> >  #
> >
> >-if ARCH_KIRKWOOD

Instead of removing this I could turn this into

comment "Kirkwood based boards"

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
