Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWQU-0001Aa-Ie
 for barebox@lists.infradead.org; Mon, 03 Feb 2020 07:45:47 +0000
References: <20190207223906.24394-1-rohieb@rohieb.name>
 <20200202154301.18383-1-rohieb@rohieb.name>
 <20200202154301.18383-3-rohieb@rohieb.name>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <132a35ef-1521-ccdd-03ee-a06067b328fa@pengutronix.de>
Date: Mon, 3 Feb 2020 08:45:37 +0100
MIME-Version: 1.0
In-Reply-To: <20200202154301.18383-3-rohieb@rohieb.name>
Content-Language: en-US
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
Subject: Re: [PATCH v2 2/6] include: add SPDX GPL-2.0-or-later license tags
 where applicable
To: Roland Hieber <rohieb@rohieb.name>, barebox@lists.infradead.org

On 2/2/20 4:42 PM, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rohieb@rohieb.name>
> ---
>  include/ata_drive.h    | 11 +----------
>  include/command.h      | 12 +-----------
>  include/common.h       | 12 +-----------
>  include/console.h      | 12 +-----------
>  include/debug_ll.h     | 11 +----------
>  include/disks.h        | 11 +----------
>  include/driver.h       | 12 +-----------
>  include/environment.h  | 12 +-----------
>  include/hab.h          | 11 +----------
>  include/image-fit.h    | 14 +-------------
>  include/image.h        | 12 +-----------
>  include/int_sqrt.h     | 12 +-----------
>  include/jtag.h         | 15 +--------------
>  include/kfifo.h        | 11 +----------
>  include/mci.h          | 12 +-----------
>  include/of_gpio.h      |  6 +-----
>  include/part.h         | 12 +-----------
>  include/reset_source.h |  6 +-----
>  include/rtc.h          | 12 +-----------
>  include/s_record.h     | 12 +-----------
>  include/scsi.h         | 13 +------------
>  include/stmp-device.h  |  6 +-----
>  include/watchdog.h     | 12 +-----------
>  23 files changed, 23 insertions(+), 236 deletions(-)
> 
> diff --git a/include/ata_drive.h b/include/ata_drive.h
> index d61c6f11d4d3..d98e410b30c3 100644
> --- a/include/ata_drive.h
> +++ b/include/ata_drive.h
> @@ -1,16 +1,7 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
>  /*
>   * See file CREDITS for list of people who contributed to this
>   * project.

In the previous patch you also removed referenced to the no-longer
existing CREDITS file, but not here. Maybe do that throughout?

(Or have one leading commit that just deleted all references to CREDITS.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
