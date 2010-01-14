Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NVM0q-0006Ad-Km
	for barebox@lists.infradead.org; Thu, 14 Jan 2010 09:29:09 +0000
Date: Thu, 14 Jan 2010 10:29:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100114092900.GB23110@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100112101534.868276907@pengutronix.de>
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
Subject: Re: [PATCHv2 00/14] Bring in basic x86 support into 'barebox'
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jan 12, 2010 at 11:15:34AM +0100, Juergen Beisert wrote:
> This patch series brings in some basic x86 support into the tree.
> At first this support can act as a boot loader on a BIOS based
> x86 machine like GRUB is. E.g. barebox will be stored in the MBR of
> a boot media the BIOS supports to boot from. This implementation still
> talks to the BIOS in real mode, to load or store data from/to a disk
> drive, but the barebox core itself runs in 32 bit flat mode.
> 
> Currently only a serial console is supported.
> 
> v2 of this patch series comes with some clean ups and also uses the discussed
> naming convention for BIOS based disk access. The whole series is updated to
> 'barebox' (instead of u-boot-v2). Note: Its tested only with QEMU yet. We are
> going to port it to real hardware now.
> 
> Comments are welcome.

Applied to -next.

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
