Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHz8-00021b-Jy
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:36:03 +0000
Date: Tue, 14 Apr 2020 11:36:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414093600.GE27288@pengutronix.de>
References: <20200406121325.1364-1-antonynpavlov@gmail.com>
 <20200406154404.6bbdb6564dc7db9c4e076e5f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406154404.6bbdb6564dc7db9c4e076e5f@gmail.com>
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
Subject: Re: [PATCH V2] startup: introduce global.endianness variable
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 06, 2020 at 03:44:04PM +0300, Antony Pavlov wrote:
> On Mon,  6 Apr 2020 15:13:25 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi Sascha,
> 
> The global.version (and global.endianness) variable can
> be easely modified by user.
> Can we make it immutable?

There's currently no way to make variables registered with
globalvar_add_* readonly. What you can do is:

	dev_add_param_fixed(&global_device, "version", UTS_RELEASE);

It would be nice to have a little globalvar_add_fixed() function which
does that. Besides the endianess it would be good to use it for the
version string as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
