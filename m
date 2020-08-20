Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8ee5-0008Kz-7x
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:05:58 +0000
Date: Thu, 20 Aug 2020 09:05:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200820070554.GV13023@pengutronix.de>
References: <1597062008-184305-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1597062008-184305-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH v3] bootm: add global.bootm.root_dev env var for booting
 via PARTUUID
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Aug 10, 2020 at 02:20:08PM +0200, Robert Karszniewicz wrote:
> Introduces a new env var which specifies which device is the rootfs
> device to be used in Linux, passed to Linux via bootargs, identified by
> the rootfs partition's PARTUUID.
> =

> global.bootm.root_dev supplements global.bootm.appendroot, in that it
> overrides appendroot's na=EFve default, which picks the partition that the
> kernel resides on (global.bootm.image).
> =

> Example:
> detect mmc2
> global.bootm.image=3D'/mnt/mmc2.0/zImage'
> global.bootm.appendroot=3D1
> global.bootm.root_dev=3D/dev/mmc2.1
> boot mmc
> =

> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
