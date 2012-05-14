Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STq4X-00031Y-VR
 for barebox@lists.infradead.org; Mon, 14 May 2012 07:52:02 +0000
Date: Mon, 14 May 2012 09:51:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120514075159.GB21318@pengutronix.de>
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-5-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336912806-4163-5-git-send-email-agalakhov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/9] S5PV210 iROM magic boot code
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, May 13, 2012 at 06:40:01PM +0600, Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  arch/arm/Kconfig                                 |    1 +
>  arch/arm/boards/tiny210/lowlevel.c               |   11 +++-
>  arch/arm/lib/barebox.lds.S                       |    4 ++
>  arch/arm/mach-samsung/Kconfig                    |    1 +
>  arch/arm/mach-samsung/Makefile                   |    1 +
>  arch/arm/mach-samsung/include/mach/s3c-generic.h |    4 ++
>  arch/arm/mach-samsung/s5p-irom-boot.c            |   64 ++++++++++++++++++++++
>  common/Kconfig                                   |   24 ++++++++
>  8 files changed, 108 insertions(+), 2 deletions(-)

Please clean up your series. This patch gets reverted in 7/9 so
no reason to introduce it in the first place.

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
