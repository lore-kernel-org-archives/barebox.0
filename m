Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ5vs-0004hi-GS
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 17:06:57 +0000
Date: Tue, 2 Oct 2012 19:06:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121002170654.GB1322@pengutronix.de>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/9] archosg9: add support for tablet, second round
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Sun, Sep 30, 2012 at 04:50:28AM +0200, vj wrote:
> Hello,
>  here is the second round of patches including all the modifications suggested by your comments, which are greatly appreciated.
> 
> There are also some improvements wrt the previous round of patches:
>  1.- Now there is no need to pass data from first to second stage.
>         The second stage reopens the usb port and that works.
>  2.- The usb scripts have been splitted in several files.
> 
> vj (9):
>   ARM: set rev instead of returning it
>   mmc_omap: improve error message
>   omap4: add/rename definitions to match datasheet
>   twl6030: add debug info
>   add gitignore file
>   omap4: add usb boot support
>   omap4: add serial communications over usb boot
>   omap4: add filesystem support over usb boot
>   Add support for Archos G9 tablet

I applied 1/9, 2/9 and 5/9 as obvious bugfix/cleanups

Thanks
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
