Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXW43-0000X2-Rc
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 14:32:20 +0000
Message-ID: <1426516316.3330.131.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 16 Mar 2015 15:31:56 +0100
In-Reply-To: <20150316135141.GL26127@ns203013.ovh.net>
References: <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
 <20150313142808.GC23879@ns203013.ovh.net>
 <1426261300.13791.192.camel@pengutronix.de>
 <20150313160826.GC24510@ns203013.ovh.net>
 <1426501162.3330.25.camel@pengutronix.de>
 <20150316111432.GE26127@ns203013.ovh.net>
 <1426507732.3330.87.camel@pengutronix.de>
 <20150316121923.GK26127@ns203013.ovh.net>
 <1426512500.3330.115.camel@pengutronix.de>
 <20150316135141.GL26127@ns203013.ovh.net>
Mime-Version: 1.0
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
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mo, 2015-03-16 at 14:51 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > The other pb I see is this one where and do you plan to store the RO x509
> > > the trusted one.
> > 
> > Sorry, I can't parse this.
> where do we store the trusted keys/cert need to be secured or inaccessible
> except crypto API

(The following depends on prohibiting any unauthenticated access to the
barebox console.)

If you just use a chain of signed code like with HAB on i.MX, every cert
is verified by the previous step (up to the SRK table hash), so there is
no need to additionally protect certs against modification. Any modified
cert would result in a verification error. In this setup there is no
secret information on the device at all.

When doing this without support from the SoC's ROM code, you could store
barebox (with compiled-in master public key(s)) in RO flash. Against an
attacker without physical access, this results in the same security
properties. You couldn't update the RO barebox, tough (only boot another
one second stage).

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
