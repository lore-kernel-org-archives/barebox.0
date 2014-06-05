Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsUjF-0004yl-Og
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 10:17:02 +0000
Date: Thu, 5 Jun 2014 12:16:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140605101638.GK15686@pengutronix.de>
References: <1401956624-31802-1-git-send-email-s.hauer@pengutronix.de>
 <1401956624-31802-5-git-send-email-s.hauer@pengutronix.de>
 <20140605134209.400c673c7501ff06d15fa926@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140605134209.400c673c7501ff06d15fa926@gmail.com>
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
Subject: Re: [PATCH 4/9] mips: dlink-dir-320: refresh defconfig
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 05, 2014 at 01:42:09PM +0400, Antony Pavlov wrote:
> On Thu,  5 Jun 2014 10:23:39 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> '[PATCH] MIPS: dlink-dir-320_defconfig: drop duplicated symbols':
>   http://lists.infradead.org/pipermail/barebox/2014-May/019272.html
> 
> My original patch has no duplicates either:
>   http://lists.infradead.org/pipermail/barebox/2014-May/019244.html

This came in with a combination of Holgers patches:

c524f74 commands: NET_DHCP -> CMD_DHCP
5bd055b commands: NET_PING -> CMD_PING
26a3410 commands: HUSH_GETOPT -> CMD_GETOPT

And some not-so-perfect merges from me.

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
