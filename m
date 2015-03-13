Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWMYJ-0007LK-9a
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 10:10:48 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6B957FF9383
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 11:10:24 +0100 (CET)
Date: Fri, 13 Mar 2015 11:10:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150313101019.GC20624@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171880-5966-1-git-send-email-jlu@pengutronix.de>
 <20150312175042.GU30554@ns203013.ovh.net>
 <1426240482.13791.94.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426240482.13791.94.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] digest: Add enum
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:54 Fri 13 Mar     , Jan L=FCbbe wrote:
> On Do, 2015-03-12 at 18:50 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > do as in the kernel use the string as we may want to add hw IP
> =

> You mean we should add a priority instead? The kernel also has separate
> names for the algorithm and for the driver.

yes when we add hw ip we will have to do so too
as we maybe enable the hw driver but the device as in multiple image build
such as imx

Best Regards,
J.
> =

> Regards,
> Jan
> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
