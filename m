Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWLtL-0000QU-5P
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 09:28:27 +0000
Message-ID: <1426238884.13791.85.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 13 Mar 2015 10:28:04 +0100
In-Reply-To: <20150312181934.GV30554@ns203013.ovh.net>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
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

On Do, 2015-03-12 at 19:19 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> please do not send a new version except for fix
> 
> I'm going to re-integrate it with the keystore & co

Could you describe your keystore design?

> and sha1,rsa2048 is considered weak in term of security
> and worse md4/md5
> 
> for barebox I would only use
> at least sha256 with rs2048 or sha512 with rsa4096

Yes, of course. These were only used as an example and it's trivial to
switch to other hash algos or RSA key sizes. Also, the FIT format can
easily be extended to support ECC/Curve25519.

In some cases, where the SoC's ROM code only supports RSA2048 with SHA1,
using stronger settings in Barebox doesn't increase security. So there
we want to use the same settings as the ROM code.

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
