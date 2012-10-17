Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOaio-0001Rp-9P
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:00:10 +0000
Date: Wed, 17 Oct 2012 23:00:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121017210006.GN27665@pengutronix.de>
References: <1350410685-46202-1-git-send-email-carlo.caione@gmail.com>
 <1350410685-46202-5-git-send-email-carlo.caione@gmail.com>
 <20121016212416.GC27665@pengutronix.de>
 <20121017065135.GC30038@game.jcrosoft.org>
 <20121017070139.GM27665@pengutronix.de>
 <20121017072548.GE30038@game.jcrosoft.org>
 <CAOQ7t2YKH=Ke6w3wZ0jWE54te+pkZJ41LdqdvYKq8PJTtUY9bA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ7t2YKH=Ke6w3wZ0jWE54te+pkZJ41LdqdvYKq8PJTtUY9bA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] BCM2835: add support (arch)
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 17, 2012 at 10:31:12AM +0200, Carlo Caione wrote:
> On Wed, Oct 17, 2012 at 9:25 AM, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> [cut]
> > why use a different at the end it the same pin
> 
> I agree with Jean-Christophe, pins are the same so I don't see why one
> would use the mini-uart.

Ok. SoC designers sometimes do strange things.

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
