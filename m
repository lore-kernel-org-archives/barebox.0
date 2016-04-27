Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avOw4-0003KK-5B
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 12:51:20 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 27 Apr 2016 14:51:17 +0200
References: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
 <CAOMZO5BvYEBGnZbT1aznEbgoZH_hZS=a+-phUz+wJPX02BmqFg@mail.gmail.com>
 <20160427092501.GT7860@pengutronix.de>
In-Reply-To: <20160427092501.GT7860@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201604271451.17221.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM: i.MX: increase barebox partition sizes
To: barebox@lists.infradead.org

Hi,

On Wednesday 27 April 2016 11:25:01 Sascha Hauer wrote:
> [...]
> > Here the environment partition size is changed from 512kB to 128kB.
> > Couldn't this cause issues?
>
> Normally the environment is much smaller, so I wouldn't expect issues
> here. The alternative to making the environment smaller would be to move
> other partitions to the back. This would probably hurt more, especially
> since a regular fdisk starts the first partition at offset 1MiB.

It hurts if the NAND's erase block size is 128 kiB and the block is marked =
bad. =

In the 512 kiB case this would shrink the environment to 384 kiB, in the 12=
8 =

kiB case to 0. Or do I miss something?

jb

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
