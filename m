Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5M9-0008O6-P7
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 07:34:51 +0000
Date: Fri, 22 Feb 2019 08:34:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222073447.5cc6esqqmnufcnvl@pengutronix.de>
References: <20190218155712.21254-1-tomaz.solc@tablix.org>
 <20190220085741.lbv5zsyv3ur5grl6@pengutronix.de>
 <67fcde46-447e-8c16-3a1e-d7106700904b@klevio.com>
 <20190220112815.un3mcqu37mhnnecq@pengutronix.de>
 <504c499c-ff47-c172-1ad4-315106f3a8f6@klevio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <504c499c-ff47-c172-1ad4-315106f3a8f6@klevio.com>
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
Subject: Re: [PATCH] genenv: create a gcc-like .d file for depenencies.
To: =?iso-8859-15?Q?Toma=B8_=A6olc?= <tomaz.solc@klevio.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 21, 2019 at 09:34:47AM +0100, Toma=B8 =A6olc wrote:
> Hi Sascha,
> =

> On 20. 02. 19 12:28, Sascha Hauer wrote:
> > Right, I missed the environment snippet that is generated from
> > CONFIG_DEFAULT_ENVIRONMENT_PATH which is generated at a different place.
> > Please try this updated patch.
> =

> Thanks, as far as I can see this patch works correctly now.
> =

> I suggest adding a comment in defaultenv/Makefile that rebuilding the
> environment on every build is the intended behavior. It seems this was
> already once erroneously considered a bug (see commit 105201e0).

Good idea, just did that.

Regards,
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
