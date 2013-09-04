Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH6bs-0004GY-Dx
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 06:30:37 +0000
Date: Wed, 4 Sep 2013 08:30:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904063013.GF30088@pengutronix.de>
References: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
 <20130903084123.60bf8561ef15b863013431e7@gmail.com>
 <20130903112156.GL19197@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130903112156.GL19197@ns203013.ovh.net>
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
Subject: Re: [PATCH] MIPS: qemu-malta: switch to devicetree
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 03, 2013 at 01:21:56PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:41 Tue 03 Sep     , Antony Pavlov wrote:
> > On Tue,  3 Sep 2013 08:33:33 +0400
> > > -static struct NS16550_plat serial_plat = {
> > > -	.clock = 1843200, /* no matter for emulated port */
> > > -	.shift = 0,
> > > -};
> > > -
> > > -static int malta_console_init(void)
> > > -{
> > > -	barebox_set_model("qemu malta");
> > >  	barebox_set_hostname("malta");
> > >
> > 
> > May be it is reasonable to add hostname support to dts?
> > 
> > The lonely barebox_set_hostname() in the malta board code looks very pathetically :)
> 
> we could use the model propertie for this

The model property is already used for the verbose name of a board. I
described it as:

/*
 * The model is the verbose name of a board. It can contain
 * whitespaces, uppercase/lowcer letters, digits, ',', '.'
 * '-', '_'
 */

Whereas the hostname is without whitespaces, I described it as:

/*
 * The hostname is supposed to be the shortname of a board. It should
 * contain only lowercase letters, numbers, '-', '_'. No whitespaces
 * allowed.
 */

I think it is reasonable to add a hostname property to the devicetree.
The last time I thought about this I couldn't really agree with myself
how to name it.

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
