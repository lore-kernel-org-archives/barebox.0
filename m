Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqHa-0000QK-7Z
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 08:36:43 +0000
Date: Mon, 19 Mar 2018 09:36:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180319083629.kxjdc4jnd35prif2@pengutronix.de>
References: <20180318222236.28296-1-gael.portay@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180318222236.28296-1-gael.portay@savoirfairelinux.com>
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
Subject: Re: [PATCH] fs: check pointer returned by get_fsdevice_by_path
 before dereferencing
To: =?iso-8859-15?Q?Ga=EBl?= PORTAY <gael.portay@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

Hi Ga=EBl,

On Sun, Mar 18, 2018 at 06:22:36PM -0400, Ga=EBl PORTAY wrote:
> In __canonicalize_path() we dereference the pointer returned by
> get_fsdevice_by_path() without checking if the pointer is NULL or not.
> When the pointer is NULL it leads to an Ooops.
> =

> 	Ooops, address error on load or ifetch!
> =

> 	$ 0   : 00000000 00000001 a0000026 a0811c10
> 	$ 4   : a0402e60 a0402e48 a0811c00 a0402e58
> 	$ 8   : 00000001 00000000 0000005a 00000023
> 	$12   : 00000000 00000002 00601021 00000000
> 	$16   : a0402e60 a0402e50 a0402e39 a0810000
> 	$20   : a0402e38 a0811420 a0811424 00000000
> 	$24   : 00000000 a080de10
> 	$28   : 87f87d40 a03ffa68 a0810000 a080ce30
> 	Hi    : 00000002
> 	Lo    : 00000000
> 	epc   : a080ce34
> 	ra    : a080ce30
> 	Status: 00000006
> 	Cause : 40008010
> 	Config: 80040483
> =

> 	### ERROR ### Please RESET the board ###
> =

> Fixes: d79a81736 fs: Don't bother filesystems without link support with a=
dditional stat() calls
> =

> Signed-off-by: Ga=EBl PORTAY <gael.portay@savoirfairelinux.com>
> ---
>  fs/fs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

I wonder though what calls into the filesystem layer before / is
mounted in your case.

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
