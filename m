Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCleE-0001yx-26
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 07:51:22 +0000
Date: Mon, 10 Feb 2014 08:51:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210075059.GC17250@pengutronix.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 00/14] Smatch warning fixups
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 07, 2014 at 09:48:42AM +0100, Lucas Stach wrote:
> I've run smatch over a imx_v7_defconfig build
> and fixed the resulting warnings.
> 
> Some of them are just minor issues with no
> real impact, but some of them are real potential
> problems or even real bugs.
> 
> Lucas Stach (14):
>   remove redundant NULL check on free
>   commands: edit: properly propagate error code
>   common: env: properly propagate error code
>   clk: imx: unsigned mfn is never less than zero
>   lib: math: fix return path (numstack may be NULL)
>   lib: libbb: f should never be NULL
>   comamnds: uimage: actually print error message
>   usb: ulpi: fix logic-op
>   usb: dfu: fix error path to avoid NULL ptr deref
>   net: usb: smsc95xx: fix wrong phy reset condition
>   net: usb: asix: properly propagate error code
>   mtd: core: avoid possible NULL ptr deref
>   clk: avoid possible NULL ptr deref
>   don't cast negative error codes to unsigned size_t

Applied all except 07/14 and 14/14

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
