Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0miE-0005jE-R9
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 10:19:52 +0000
Date: Wed, 19 Apr 2017 12:19:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419101928.5khm52lba5o4bj6s@pengutronix.de>
References: <20170417104210.8196-1-antonynpavlov@gmail.com>
 <20170417104210.8196-3-antonynpavlov@gmail.com>
 <20170419132026.5ac56ed0b7fc52b8ad61477d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170419132026.5ac56ed0b7fc52b8ad61477d@gmail.com>
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
Subject: Re: [PATCH 2/2] of: base: of_new_property(): use xstrdup() instead
 of strdup()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 19, 2017 at 01:20:26PM +0300, Antony Pavlov wrote:
> On Mon, 17 Apr 2017 13:42:10 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> > At the moment of_new_property() uses xfunctions for memory
> > allocation so we can use xstrdup() instead of strdup()
> > for code simplification.
> > 
> > A side effect of this commmit is that
> > the of_new_property() function can't return NULL
> > anymore if CONFIG_OFTREE is set.
> 
> If of_new_property() can't return NULL we can skip all numerous
> checks after of_new_property() call. So the checks are actual only
> if CONFIG_OFTREE isn't set.
> 
> Have you any sugestions on removing of_new_property() return value checks?

I'm not sure removing these checks is a good idea. One possible error
return for of_new_property() could be -EEXIST. Right now we do not check
is the property already exists and just create a second property with
the same name. Also if you consider FIT images: These store a whole
kernel in a device tree property, so the xmalloc() we have for
allocating the data for the property might better be malloc() so that
it can fail.

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
