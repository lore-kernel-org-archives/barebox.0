Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwPwW-0004z9-3I
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 07:35:45 +0000
Date: Wed, 11 Nov 2015 08:35:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151111073522.GJ8526@pengutronix.de>
References: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] common: filetype: do not redetect MBR-type devices as a
 FAT-type
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 09, 2015 at 01:32:51PM +0300, Peter Mamonov wrote:
> Deleted pieces of code detect MBR-containig device as a FAT-type device,
> if it's first partition contains a FAT filesystem. This behaviour enabled one
> to mount the FAT FS which is either directly on the device (disk0) or on
> the first partition (disk0.0) using the same command:
>     mount /dev/disk0 /fat
> However, the desired behaviour can be reached with a:
>     mount /dev/disk0 /fat || mount /dev/disk0.0 /fat || echo "Mounting failed"
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> Acked-by: Sascha Hauer <s.hauer@pengutronix.de>

Please don't add Acked-by for patches the person has never seen. I
agreed to the approach of removing the check here, but I can only ever
ack a patch that I have seen.

Applied this with my ack removed.

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
