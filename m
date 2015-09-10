Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZw4H-0007fB-H3
 for barebox@lists.infradead.org; Thu, 10 Sep 2015 07:14:50 +0000
Date: Thu, 10 Sep 2015 09:14:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150910071425.GO18700@pengutronix.de>
References: <1441705005-29340-1-git-send-email-antonynpavlov@gmail.com>
 <20150909064435.GE18700@pengutronix.de>
 <20150909185734.bd271f2414a72ec9037fe2eb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150909185734.bd271f2414a72ec9037fe2eb@gmail.com>
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
Subject: Re: [PATCH] endian: sync {big,little}_endian.h with linux-4.2
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 09, 2015 at 06:57:34PM +0300, Antony Pavlov wrote:
> On Wed, 9 Sep 2015 08:44:35 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Tue, Sep 08, 2015 at 12:36:45PM +0300, Antony Pavlov wrote:
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > > 
> > > This patch makes ehci-hcd.c happy on big-endian MIPS
> > > by importing __constant_cpu_to_le16()
> > > from linux.git/include/uapi/linux/byteorder/big_endian.h
> > > 
> > >  include/linux/byteorder/big_endian.h    | 118 +++++++++++++++++++++-----------
> > >  include/linux/byteorder/little_endian.h | 118 +++++++++++++++++++++-----------
> > >  2 files changed, 156 insertions(+), 80 deletions(-)
> > 
> > Applying: endian: sync {big,little}_endian.h with linux-4.2
> > error: patch failed: include/linux/byteorder/little_endian.h:9
> > error: include/linux/byteorder/little_endian.h: patch does not apply
> > 
> > include/linux/byteorder/little_endian.h hasn't been changed since 2011.
> 
> Hmm, I see a new endian related patch in pengutronix next branch. Please see below.
> 
> > Do you have other patches in your tree?
> 
> Do you have this patch in you local tree?
> 
> commit d192ebe8bb78296d1d86b35cacb7aa3cd5414d7a
> Author: David S. Miller <davem@davemloft.net>
> Date:   Tue Sep 1 15:48:08 2015 +0300

Oh, your patch is based on this one. I applied it atop of it.

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
