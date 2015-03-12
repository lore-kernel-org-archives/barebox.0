Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YW4Wv-0007nb-OV
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 14:56:10 +0000
Received: from kiwi.hi.pengutronix.de ([2001:67c:670:100:1d::c3] helo=kiwi)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1YW4WZ-0002qe-9P
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 15:55:47 +0100
Received: from jlu by kiwi with local (Exim 4.84)
 (envelope-from <jlu@pengutronix.de>) id 1YW4WZ-00051J-0X
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 15:55:47 +0100
Message-ID: <1426172146.13791.70.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 12 Mar 2015 15:55:46 +0100
In-Reply-To: <1426170146-31302-4-git-send-email-plagnioj@jcrosoft.com>
References: <20150312141938.GS30554@ns203013.ovh.net>
 <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
 <1426170146-31302-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/7] digest: add verify callback
To: barebox@lists.infradead.org

On Do, 2015-03-12 at 15:22 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +int digest_generic_verity(struct digest *d, const unsigned char *md)
                     ^^^^^^ shouldn't this be "verify" for consistency?

> +       int (*verify)(struct digest *d, const unsigned char *in);
                                                              ^^
this is called "md" in the other prototypes
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
