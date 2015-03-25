Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YagzG-0003ti-Eg
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 08:48:31 +0000
Date: Wed, 25 Mar 2015 09:48:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150325084806.GA9742@pengutronix.de>
References: <1427191433-48345-1-git-send-email-s.mueller-klieser@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427191433-48345-1-git-send-email-s.mueller-klieser@phytec.de>
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
Subject: Re: [PATCH v2 0/2] lzo update from kernel
To: Stefan =?iso-8859-15?Q?M=FCller-Klieser?= <s.mueller-klieser@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 24, 2015 at 11:03:51AM +0100, Stefan M=FCller-Klieser wrote:
> This would be the lzo update with the correct revert.
> =

> Stefan M=FCller-Klieser (2):
>   Revert "lzo: properly check for overruns"
>   lzo: check for length overrun in variable length encoding.
> =

>  lib/lzo/lzo1x_decompress_safe.c | 107 ++++++++++++++++++++++------------=
------
>  1 file changed, 59 insertions(+), 48 deletions(-)

Applied both, thanks

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
