Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTQhV-0007hW-Nh
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 08:00:10 +0000
Date: Thu, 5 Mar 2015 08:59:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150305075946.GD11010@pengutronix.de>
References: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 0/4] Device Tree Overlay Support
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org, Lucas Stach <lst@pengutronix.de>

On Wed, Mar 04, 2015 at 10:29:28AM +0100, Jan Luebbe wrote:
> This adds support for device tree overlays as supported by Linux 4.0-rc1.
> Patches 2-4 update the included DTC with overlay support.
> 
> Jan Luebbe (4):
>   drivers: of: implement overlay support
>   scripts/dtc: import update-dtc-source.sh from kernel v4.0-rc1
>   scripts/dtc: Update to upstream version 1.4.1
>   scripts/dtc: Update to upstream version 1.4.1 with overlay support

This series offers the update-dtc-source.sh script and updates dtc to
v1.4.1 whereas The current dtc update from Lucas only has v1.4.0. I
picked 2/4 and 3/4 from this series and dropped Lucas dtc update.

I would really like to have dt overlay support in barebox, but after
the Kernel has already merged Pantelis patches there is now a discussion
with the dtc Maintainer David Gibson and it seems unlikely that dtc
is going to support the current overlay format. So we'll have to wait
until this is resolved.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
