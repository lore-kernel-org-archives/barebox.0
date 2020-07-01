Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVlU-0001dz-Pd
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:58:37 +0000
Date: Wed, 1 Jul 2020 07:58:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200701055834.GK15485@pengutronix.de>
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
 <1a2cb925-dccd-8de7-08da-c4abe76d473c@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a2cb925-dccd-8de7-08da-c4abe76d473c@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 0/4] Introduce global.bootm.root env var for booting
 via PARTUUID
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Robert,

On Tue, Jun 30, 2020 at 04:20:17PM +0200, Robert Karszniewicz wrote:
> The problem is that we want to be able to have the rootfs and kernel on
> separate partitions.

Why do you want to have that? It's kind of traditional to have the
kernel separated from the rootfs in some extra "kernel" partition, but
are there good reasons for it? There's an overhead in that the
bootloader has to read from a filesystem instead of only a raw
partition. Is that the reason?

Here at Pengutronix we are happy that we only have one partition image
that has everything needed to boot, including a description how to boot
it and including the kernel. No extra items that the bootloader has to
take care of, just put one thing somewhere and be done with it.

> We've looked into the Boot Loader Specification, but
> from what we saw, it makes A-B systems difficult (according to the spec,
> there can only be one "$BOOT" filesystem on a device).

barebox is more relaxed here. What we do here is to put two full root
filesystems into two different partitions on a SD/MMC. Each of the
partitions has one or more /loader/entries/*.conf file(s) and kernels.
You can then boot with "boot mmc0.0" into the first rootfs or with "boot
mmc0.1" into the second.
This may not be really conform to the specification, but works in
barebox and is a supported usecase. We do this for A/B Boot scenarios in
many projects.

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
