Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXqK5-0002H2-Un
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 12:10:14 +0000
Message-ID: <1426594190.3330.173.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 17 Mar 2015 13:09:50 +0100
In-Reply-To: <20150317104803.GP26127@ns203013.ovh.net>
References: <20150313095654.GA20624@ns203013.ovh.net>
 <1426241455.13791.103.camel@pengutronix.de>
 <20150313102543.GA23879@ns203013.ovh.net>
 <1426243382.13791.121.camel@pengutronix.de>
 <20150313154928.GA24510@ns203013.ovh.net>
 <1426500022.3330.12.camel@pengutronix.de>
 <20150316102713.GB26127@ns203013.ovh.net>
 <1426505135.3330.55.camel@pengutronix.de>
 <20150316113306.GH26127@ns203013.ovh.net>
 <1426520527.3330.139.camel@pengutronix.de>
 <20150317104803.GP26127@ns203013.ovh.net>
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
Subject: Re: [RFC 2/4] Add rsa support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Di, 2015-03-17 at 11:48 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Could you explain your image format in a bit more detail? How your
> > intend to defend against a mix-and-match attack?
> 
> One of the format we are using can only be one configure signed or/and
> encrypted so no mix-and-match attack

Sorry, it's still not clear to me. Do you mean you would use FIT in that
case (it supports signed configurations)? Or do you mean that you are
using several formats, one of which uses signed/encrypted configurations
of kernel/initramfs/dt?

I want to understand how your image formats would be used in the larger
context of a BSP or distribution. Please describe which image formats
you want to support (in addition to FIT). How are they structured? How
are they generated? Are they already supported by other software? 

Thanks,
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
