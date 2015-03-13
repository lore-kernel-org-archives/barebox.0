Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWRiv-0002uK-6G
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 15:42:06 +0000
Message-ID: <1426261300.13791.192.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 13 Mar 2015 16:41:40 +0100
In-Reply-To: <20150313142808.GC23879@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
 <1426242065.13791.110.camel@pengutronix.de>
 <20150313142808.GC23879@ns203013.ovh.net>
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

On Fr, 2015-03-13 at 15:28 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > It's not the job of barebox to define security policies, it must fit
> > well into the larger security design, which may require compromises.
> 
> I disagree, disable by default non secure feature is require to pass
> secure boot certification

Is there a specific certification you are targeting?

How do you intend to handle console access in verified boot mode?
Allowing access to md/mw would break any security.

I was thinking about switching off access to the HW AES keys as soon as
a prompt appears. At least on MX28/MX6 that's possible and important.

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
