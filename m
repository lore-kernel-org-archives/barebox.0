Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXTPD-0001Gv-Jd
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 11:42:00 +0000
Message-ID: <1426506097.3330.64.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 16 Mar 2015 12:41:37 +0100
In-Reply-To: <20150316112507.GF26127@ns203013.ovh.net>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
 <1426500945-31815-7-git-send-email-plagnioj@jcrosoft.com>
 <1426502999.3330.35.camel@pengutronix.de>
 <20150316110114.GD26127@ns203013.ovh.net>
 <1426503959.3330.45.camel@pengutronix.de>
 <20150316112507.GF26127@ns203013.ovh.net>
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
Subject: Re: [PATCH 07/10] password: add pbkdf2 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mo, 2015-03-16 at 12:25 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Yes, definitely. We must use the algorithms as they are intended to be
> > used.
> > 
> > If we try to move users away from RSA2048 because it will be vulnerable
> > in the future, we should not go against established practice for
> > password salts by hard-coding it. 
> I'm not against it but with the barebox entropy did not see the point to use
> it.
> 
> so how do we generate the salt? what length
> 
> Personnaly I'll prefer
> 
> a random 64 bytes | sha256 | take first 32bytes. | pbkdf2 10000 round

Running SHA-256 on random data is useless for security. Just get
<hash-size> bytes from /dev/urandom on the host. We could generate a
file with the compile-time SALT which is then included.

On the running barebox, we could use SHA to hash the old password file
together with the current timer value. At least until we have something
better.

> result a 64 bytes password file <salt 32 byes><key 32 bytes>

Yes. As we select the algorithm at compile time, we don't the to save it
in the file.

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
