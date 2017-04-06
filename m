Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw1VH-0004dX-GP
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 07:06:49 +0000
Date: Thu, 6 Apr 2017 09:06:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170406070625.xpvqhrg4dmdjkf3p@pengutronix.de>
References: <ea78b774-b055-9b43-4b18-03eeabd2e06b@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea78b774-b055-9b43-4b18-03eeabd2e06b@phytec.de>
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
Subject: Re: Directory mirroring
To: Daniel Schultz <d.schultz@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Daniel,

On Tue, Apr 04, 2017 at 12:11:09PM +0200, Daniel Schultz wrote:
> Hi everyone,
> 
> my boot partition is mounted to /boot/. Now, I want to make it accessible in
> /mnt/ as mmc or emmc, depending to the bootsource. Sadly, ln can only create
> symlinks for files and two mounts for one device seems not to work.
> 
> Are there other ways to mirror a file system?

Not that I know of. You could implement directory links, but why do you
want to have it accessible under /mnt in the first place?

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
