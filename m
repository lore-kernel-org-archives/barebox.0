Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YlBEm-0001hk-6Z
 for barebox@lists.infradead.org; Thu, 23 Apr 2015 07:07:53 +0000
Date: Thu, 23 Apr 2015 09:07:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150423070728.GK6325@pengutronix.de>
References: <1429535427-16243-1-git-send-email-s.mueller-klieser@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429535427-16243-1-git-send-email-s.mueller-klieser@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC][PATCH 0/1] toolchain conflict for userspace tools
To: Stefan =?iso-8859-15?Q?M=FCller-Klieser?= <s.mueller-klieser@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Mon, Apr 20, 2015 at 03:10:26PM +0200, Stefan M=FCller-Klieser wrote:
> Dear bareboxers,
> =

> I ask for help with a problem I am facing. If the buildsystem compiles
> gcc with multilib support, gcc can support the float abi callconvention
> to be generated dynamically, as yocto starting with v1.7 does. So we
> don't have the usual default "--with-float=3Dhard", but gcc sets the
> mfloat-abi at runtime for every package.
> This seems to work well in general, e.g. modern autotools and the
> Kconfig infrastructure for kernel and barebox. However this fails
> for the target tools in the barebox script folder. They need to have
> the --with-float=3Dhard set, or they will try to compile as softfloat.
> I think the general solution would be to give the user the possibility
> to redefine the CC for the userspace tools, as this is very specific
> to the environment where the barebox gets compiled.
> But maybe someone with a deeper knowledge of the Makefile infrastructure
> can recommend a better long term solution.

We discussed this here and came to the conclusion that not CC should be
exchanged but rather we should have userspace specific CFLAGS. The
currently used CFLAGS contains stuff not suitable for userspace anyway.
Would introducing CFLAGS_USERSPACE work for you?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
