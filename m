Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22c.google.com ([2607:f8b0:4001:c06::22c])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bF6La-00026d-JE
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 21:03:07 +0000
Received: by mail-io0-x22c.google.com with SMTP id n127so142524748iof.3
 for <barebox@lists.infradead.org>; Mon, 20 Jun 2016 14:02:45 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 20 Jun 2016 17:02:45 -0400
Message-ID: <CAO6XYUvHA0na0jTY7HGLw_MQ5wUHK2mohFuLqDP-CPASbYF4-w@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: Early access I2C and/or clock for iMX6?
To: barebox@lists.infradead.org

The more I look into the I2C drivers, the less convinced I am that
fsl_i2c is where I need to be looking.

Additionally, although Variscite had included the fsl_i2c.h header and
had actually referenced fsl_i2c in some documentation and comments,
the more I dig through their code, it is looking like the only I2C
routines that are even getting compiled in their U-Boot implementation
are those in mxc_i2c.c -- which actually look to be a fairly clean
implementation for the i.MX series of parts that doesn't appear to
require much additional support code along with it (other than, once
again, some of the clock configuration routine). It appears to be much
more simplistic and bare metal than the i2c-imx.c that is currently
used in barebox.

Since the mxc_i2c.c driver in U-Boot was written also written by
Sascha Hauer, I'm sort of throwing this one out as a question to
Sascha or anyone else familiar with this code:

For an early access I2C driver on the i.MX6, do you think it would
make more sense to try starting from the fsl_i2c.c code under barebox
or from the original U-Boot mxc_i2c.c code?

I'm beginning to suspect the latter may actually be easier to start
from (and it would already match the function calls that Variscite is
using in the code I am transplanting from their U-Boot tree).

Thanks again!
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
