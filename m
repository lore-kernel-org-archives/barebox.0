Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXRsx-0003Qq-M0
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:04:37 +0000
Message-ID: <1426500251.3330.15.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 16 Mar 2015 11:04:11 +0100
In-Reply-To: <20150313170032.GD24510@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net> <5502CB15.4070306@pengutronix.de>
 <20150313155423.GB24510@ns203013.ovh.net> <55030AF3.8050903@pengutronix.de>
 <20150313170032.GD24510@ns203013.ovh.net>
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

On Fr, 2015-03-13 at 18:00 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > While sha1 is considered broken.
> it's broken and sha256 not yet but in 10 years strongly suspected
> even in brut force
> 
> That's why FIPS work on SHA-2

SHA256 is part of the SHA-2 family [1]. Keccak is the winner of the
SHA-3 competition.

Regards,
Jan

[1] http://en.wikipedia.org/wiki/SHA-2
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
