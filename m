Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkXGx-0004UD-UI
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 09:13:52 +0000
Date: Fri, 29 Jun 2012 11:13:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120629091349.GB2698@pengutronix.de>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
 <1340908354-17895-2-git-send-email-antonynpavlov@gmail.com>
 <20120629072517.GZ1623@pengutronix.de>
 <CAA4bVAFvVWiGq6vC=ay_UrNbxe8cCwu=_gCC7roZ7oxF_UQWRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFvVWiGq6vC=ay_UrNbxe8cCwu=_gCC7roZ7oxF_UQWRA@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/5] byteorder: fix {BIG,LITTLE}_ENDIAN defines
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 29, 2012 at 12:48:23PM +0400, Antony Pavlov wrote:
> On 29 June 2012 11:25, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > In file included from common/environment.c:37:
> > include/envfs.h:41:21: warning: "__LITTLE_ENDIAN" is not defined
> 
> You are right.
> 
> >> +
> >> +#ifdef __LITTLE_ENDIAN
> >
> > As said, this file is included from scripts/bareboxenv.c which is
> > compiled for userspace. __LITTLE_ENDIAN will always be defined in
> > userspace.
> 
> But it included from common/environment.c too!

That's why I have the following:

#ifdef __BAREBOX__
#  ifdef __LITTLE_ENDIAN
#    define ENVFS_ORDER_LITTLE
#  elif defined __BIG_ENDIAN
#    define ENVFS_ORDER_BIG
#  else
#    error "could not determine byte order"
#  endif
#else
#  if __BYTE_ORDER == __LITTLE_ENDIAN
#    define ENVFS_ORDER_LITTLE
#  elif __BYTE_ORDER == __BIG_ENDIAN
#    define ENVFS_ORDER_BIG
#  else
#    error "could not determine byte order"
#  endif
#endif

This should work as expected. Maybe the name ENVFS_ORDER_LITTLE and
ENVFS_ORDER_BIG are a bit confusing, should probably better ENVFS_ORDER_NATIVE
and ENVFS_ORDER_SWAP.

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
