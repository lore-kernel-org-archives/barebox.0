Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RnnDN-0003j2-AC
 for barebox@lists.infradead.org; Thu, 19 Jan 2012 08:19:22 +0000
Date: Thu, 19 Jan 2012 09:19:14 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120119081914.GE4066@pengutronix.de>
References: <CAA4bVAFwebYGAq5dB+0CkS3nEc3P5poFAphdw4vZTNNMUkTsmQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFwebYGAq5dB+0CkS3nEc3P5poFAphdw4vZTNNMUkTsmQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: git pull failed: CONFLICT
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hello Antony,

On Wed, Jan 18, 2012 at 11:02:06PM +0400, Antony Pavlov wrote:
> As usual as usual I tried to pull next branch from
> git://git.pengutronix.de/git/barebox, but got error message.
> =

> $ git checkout next$ git pullremote: Counting objects: 287,
> done.remote: Compressing objects: 100% (121/121), done.remote: Total
> 193 (delta 164), reused 85 (delta 67)Receiving objects: 100%
> (193/193), 22.10 KiB, done.Resolving deltas: 100% (164/164), completed
> with 69 local objects.From git://git.pengutronix.de/git/barebox=A0+
> 5c6b5d4...5f77a0a next =A0 =A0 =A0 -> origin/next =A0(forced update)=A0+
> f4a3223...841b071 work/omap3 -> origin/work/omap3 =A0(forced update)=A0+
> 5c50a9a...0233427 work/thumb2 -> origin/work/thumb2 =A0(forced
> update)Auto-merging common/KconfigCONFLICT (content): Merge conflict
> in common/KconfigRemoving arch/arm/mach-omap/omap3_platform.SRemoving
> arch/arm/mach-omap/omap3_clock_core.SRemoving
> arch/arm/mach-omap/include/mach/board.hRemoving
> arch/arm/boards/phycard-a-l1/lowlevel.cAuto-merging MakefileCONFLICT
> (content): Merge conflict in MakefileAutomatic merge failed; fix
> conflicts and then commit the result.
As Sascha rewrote the next branch pulling makes your tree base on the
old and the new next branch. You want to do:

	git remote update origin
	git rebase --onto origin/next origin/next@{1}

assuming your tree based on the version of origin/next before you
git remote updated.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
