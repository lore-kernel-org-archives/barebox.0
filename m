Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkVlE-000734-1J
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 07:37:00 +0000
Date: Fri, 29 Jun 2012 09:36:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120629073657.GA2698@pengutronix.de>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
 <1340908354-17895-2-git-send-email-antonynpavlov@gmail.com>
 <20120629072517.GZ1623@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120629072517.GZ1623@pengutronix.de>
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

On Fri, Jun 29, 2012 at 09:25:17AM +0200, Sascha Hauer wrote:
> >  
> > +#if __BYTE_ORDER != __LITTLE_ENDIAN && __BYTE_ORDER != __BIG_ENDIAN
> > +#error "__BYTE_ORDER must be __LITTLE_ENDIAN or __BIG_ENDIAN"
> > +#endif
> 
> On Big Endian systems __LITTLE_ENDIAN is undefined and this results in:
> 
> In file included from common/environment.c:37:
> include/envfs.h:41:21: warning: "__LITTLE_ENDIAN" is not defined

In the meantime I applied my original patch. Please let me know if there
is something wrong with it, we can still change it.

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
