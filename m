Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWM0c-00040U-5r
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 09:35:59 +0000
Message-ID: <1426239335.13791.92.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 13 Mar 2015 10:35:35 +0100
In-Reply-To: <20150312174740.GT30554@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-3-git-send-email-jlu@pengutronix.de>
 <20150312174740.GT30554@ns203013.ovh.net>
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

On Do, 2015-03-12 at 18:47 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as state in my previous e-mail I will a keystore support
> 
> but this dt format to handle no please
> 
> we need to use the standard format as in the kernel or openssl
> 
> DER and x509
> 
> specially x509 as if we want to be able to add key at runtime we need
> to sign them we the trusted RO keys
> 
> For the implementation of RSA I use the polarssl one and plan to add
> the kernel one
> 
> and this implementation is limited to 4096 the polarssl one is not

Having an ASN1 parser for DER/x509 is a huge amount of complexity I
would not want in a bootloader. Just take a look at the problems the
SSL-CAs and browsers had with different interpretations of the same
cert.

The FIT format (and corresponding public key in the bootloader's DT) has
been adopted by depthcharge and u-boot, because it handles the
requirements and nothing more.

What is your use-case for which you need to add keys at runtime?

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
