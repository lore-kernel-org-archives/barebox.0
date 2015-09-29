Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zgoaa-00035k-B5
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 06:40:37 +0000
Date: Tue, 29 Sep 2015 08:40:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150929064011.GK7858@pengutronix.de>
References: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
 <1443220863-24355-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/3] ArchosG9 updates.
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Hi Vicente,

On Fri, Sep 25, 2015 at 11:41:00PM +0100, Vicente Bergas wrote:
> Hello,
> This series of patches contain updates to the ArchosG9 code.
>   The first one is just regenerating the *_defconfig with "make savedefconfig"
>   The second fixes the issue spotted by Antony Pavlov.
>   The third adds the display. I had that change forgotten somewhere and
>     thought that it would be better to share it.
> 
> By the way, while checking the patches with "scripts/checkpatch.pl" the script
> itself reported several 'Unescaped left brace in regex is deprecated' warnings.
> The perl version is v5.22.0.

Wow, so we need a checkcheckpatch script :)
Thanks for noting. There are probably checkpatch updates to find in the
Linux Kernel.

Applied all, thanks

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
