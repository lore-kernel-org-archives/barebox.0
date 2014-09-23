Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWJDo-0008Up-0I
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 06:05:08 +0000
Date: Tue, 23 Sep 2014 08:04:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140923060445.GR4992@pengutronix.de>
References: <1411424015-16466-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411424015-16466-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/2] serial-imx: fix for non of usage
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Tue, Sep 23, 2014 at 12:13:34AM +0200, Eric B=E9nard wrote:
> this was broken by :
> "3843bfd serial: imx: Determine device name from device tree"
> =

> Tested on an i.MX35.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

This is already fixed by:

commit dc82bce50b6d7050c8a65682f5ea4078b293f171
Author: Philipp Zabel <p.zabel@pengutronix.de>
Date:   Fri Aug 15 11:10:03 2014 +0200

    serial: imx: Fix for non-devicetree boards
    =

    Commit 3843bfd0ab77eaf125ca617922927b61fc8ded74
    "serial: imx: Determine device name from device tree"
    broke this driver for non-devicetree boards, since
    of_alias_get may not be called with a NULL pointer
    as first argument.
    =

    Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

It is contained in master and in the stable/v2014.09 branch.
Unfortunately it's broken in the last release.

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
