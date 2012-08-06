Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SyHfO-000771-Oc
 for barebox@lists.infradead.org; Mon, 06 Aug 2012 07:23:56 +0000
Date: Mon, 6 Aug 2012 09:23:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120806072348.GB1451@pengutronix.de>
References: <20120803102300.GB23597@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120803102300.GB23597@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/12 v4] Add Pre-Bootloader support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 03, 2012 at 12:23:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/pbl
> 
> for you to fetch changes up to 1d861eb2a6384495261122f183842fcd8a8e059e:
> 
>   arm: always enable the garbage collector for pbl (2012-08-03 18:09:16 +0800)
> 

I applied this series for next. This is not complete yet, so before this
series hits any release, the following should happen:

- Currently most boards do not compile with compression enabled. This is
  because the pbl needs the lowlevel init functions. Most boards fail
  with 'undefined reference to board_init_lowlevel'. To fix this a
  pbl-y += lowlevel.o is needed.
  Unfortunately there is a class of boards which silently fail with
  image compression, namely all i.MX boards which compile with internal
  boot mode. Here the flash header is just missing when not explicitly
  enabled for pbl.
- The SoCs which generate some SoC specific image (OMAP -> MLO, Netx ->
  barebox.netx) only generate the compressed binary, but not the SoC
  specific file.
- Documentation to be written.

I have a patch in preparation to fix the first two topics.

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
