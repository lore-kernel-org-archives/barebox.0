Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEykB-0003Ag-N9
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:10:08 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Mar 2013 10:08:29 +0100
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201303111008.29412.jbe@pengutronix.de>
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
Subject: Re: [PATCH] image and bss size decrease
To: barebox@lists.infradead.org

Hi Sascha,

Sascha Hauer wrote:
> [...]
> Also we make the bss smaller by allocating the FILE table and
> the gpio_desc table dynamically. The bss size is may become
> a problem on boards which run from SRAM. Here the malloc pool
> is in the big SDRAM area, but the bss is in SRAM, so it makes
> sense to move the big tables from bss to SDRAM by using malloc.

It would also be possible to instruct the linker to locate the BSS in the big 
SDRAM area. But that might interfere with very running early code using 
variables in BSS while the SDRAM isn't up and running yet.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
