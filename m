Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbnI4-0006WR-BM
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 09:12:14 +0000
Date: Wed, 8 Oct 2014 11:11:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141008091149.GD4992@pengutronix.de>
References: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH 0/4] Add phyFLEX-AM335x support
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 07, 2014 at 10:40:33AM +0200, Teresa G=E1mez wrote:
> This patchset adds phyFLEX-AM335x support. This is
> based on Jan's work and was rewitten for device
> tree and multi image support by Stefan. I cleaned up the
> code and rebased it to master.
> =

> Teresa
> =

> Jan Weitzel (2):
>   net: cpsw: Allow gigabit connection
>   net: micrel: Add ksz8081 support
> =

> Stefan M=FCller-Klieser (2):
>   boards: Add phytec-phyflex-am335x
>   pfla03: add to am335x_defconfig

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
