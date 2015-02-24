Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YQ8t0-00019z-S1
 for barebox@lists.infradead.org; Tue, 24 Feb 2015 06:22:29 +0000
Date: Tue, 24 Feb 2015 07:21:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150224062157.GN12209@pengutronix.de>
References: <1424703471-9569-1-git-send-email-dbrainard@brainardinsight.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424703471-9569-1-git-send-email-dbrainard@brainardinsight.com>
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
Subject: Re: [PATCH v3] SAMA5D4EK - Now uses the new environment.
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 23, 2015 at 07:57:51AM -0700, Doug Brainard wrote:
> This patch switches the SAMA5D4EK development board to the newer environment method.
> 
> This patch depends on "mtd partition handling updates" patch series from Sascha Hauer <s.hauer@pengutronix.de>
> 
> Changes since v2:
>  - Modified the NOR partitions to match what is used in u-boot.
>  - Removed the PS1 variable from init, so the default will now just be used.
> 
> Changes since v1:
>  - Improved interface to the new environment.
>  - Create a custom mtdparts-add script to have the partition naming work the same as in the old environment.
>  - Removed custom mtdparts-add after new patch resolved the issue being seen.
> 
> Signed-off-by: Doug Brainard <dbrainard@brainardinsight.com>

Applied, thanks

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
