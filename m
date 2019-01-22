Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glqRR-0001Lz-Gw
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 07:25:51 +0000
Date: Tue, 22 Jan 2019 08:25:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190122072547.wbb2nsk6cldmmzvb@pengutronix.de>
References: <20190121112732.23772-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190121112732.23772-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v3 1/3] fs/nfs: don't try to set nfs error code from
 mount rpc call
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 21, 2019 at 12:27:30PM +0100, Uwe Kleine-K=F6nig wrote:
> A packet from a mount rpc call doesn't have an NFS error field, so don't
> try to access this.
> =

> In the case of the MOUNT_UMOUNT procedure the reply package is short
> such that accessing the u32 after the rpc_reply structure is already
> after the end of the packet. Apart from the access to out-of-packet data
> there is no harm because the wrongly read value is unused. But make this
> more explicit by only using nfserr if the call was an NFS request.
> =

> Fixes: 9ede56ad2476 ("fs: Add NFS support")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  fs/nfs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

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
