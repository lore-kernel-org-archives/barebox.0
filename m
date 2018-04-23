Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fAWbr-00030i-Bm
 for barebox@lists.infradead.org; Mon, 23 Apr 2018 08:14:05 +0000
Date: Mon, 23 Apr 2018 10:13:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180423081348.hylbpdraydokxvt4@pengutronix.de>
References: <20180420080114.9148-1-gp@high-consulting.de>
 <51213c28-0443-3ba7-d161-d79dfaa3acdb@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51213c28-0443-3ba7-d161-d79dfaa3acdb@rempel-privat.de>
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
Subject: Re: [PATCH v1] Crypt and decrypt files using password in keystore.
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Gerd Pauli <gp@high-consulting.de>

On Sun, Apr 22, 2018 at 10:27:11AM +0200, Oleksij Rempel wrote:
> Hi Gerd,
> 
> please use scripts/checkpatch.pl
> 
> currently i get
> total: 2020 errors, 0 warnings, 2020 lines checked
> 
> We use kernel coding style. Please read it:
> https://www.kernel.org/doc/html/v4.16/process/coding-style.html
> 
> Am 20.04.2018 um 10:01 schrieb Gerd Pauli:
> > Adds ccryptlib library in crypto which implements a
> > stream cipher based on the block cipher Rijndael,
> > the candidate for the AES standard.
> > Compatible with the ccrypt tool in linux
> > from Peter Selinger.
> > 
> > Usage: ccrypt [-e|-d] -k KEYNAME_IN_KEYSTORE SRC DST
> > 
> > Signed-off-by: Gerd Pauli <gp@high-consulting.de>
> > ---
> >  commands/Kconfig    |   17 +
> >  commands/Makefile   |    1 +
> >  commands/ccrypt.c   |  249 +++++++++
> >  crypto/Kconfig      |    7 +
> >  crypto/Makefile     |    1 +
> >  crypto/ccryptlib.c  | 1467 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >  include/ccryptlib.h |  102 ++++
> >  7 files changed, 1844 insertions(+)
> >  create mode 100644 commands/ccrypt.c
> >  create mode 100644 crypto/ccryptlib.c
> >  create mode 100644 include/ccryptlib.h
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 951a86963..b6911246a 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -2137,6 +2137,23 @@ config CMD_SEED
> >  	help
> >  	  Seed the pseudo random number generator (PRNG)
> >  
> > +config CMD_CCRYPT
> > +        tristate
> > +        prompt "ccrypt"
> > +        select CRYPTO_CCRYPTLIB
> > +        select CRYPTO_KEYSTORE
> > +        help
> > +          encrypting/decrypting a character stream
> > +          ccrypt implements a stream cipher based on the block cipher
> > +          Rijndael.
> 
> > +          Usage: ccrypt [-ed] [-K name] srcfile dstfile
> > +
> > +          Options:
> > +                        -e            encrypt srcfile to dstfile
> > +                        -d            decrypt srcfile to dstfile
> > +                        -k name       use key with name from keystore
> > +
> 
> usage help should be provided by the command, not within Kconfig

Indeed we have the help provided in the Kconfig text for all commands
that were present at that change. I don't really think it's worth
continuing this though.

> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + * 
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.    
> > + */
> > +
> > +/* ccrypt implements a stream cipher based on the block cipher
> > +   Rijndael  */
> > +
> > +/* needs library ccryptlib and keystore from barebox */
> 
> no need for this comment, needed headers are already included
> 
> > +#include <common.h>
> > +#include <command.h>
> > +#include <libfile.h>
> > +#include <getopt.h>
> > +#include <fcntl.h>
> > +#include <fs.h>
> > +#include <ccryptlib.h>
> 
> i prefer headers sorted alphabetically. this helps to reduce
> patch conflicts.

And I prefer the reverse christmas tree ordering ;)

To be honest, I don't care about the ordering at all, but at least as
long as we haven't agreed on some ordering and written it down somewhere
we shouldn't enforce any ordering for patch submitters.

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
