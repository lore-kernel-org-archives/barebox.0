Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxt0D-0000qw-09
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 07:45:05 +0000
Date: Mon, 8 Dec 2014 08:44:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141208074436.GC30369@pengutronix.de>
References: <1417797709-10992-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1417797709-10992-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 0/5] ARM: SoCFPGA: Update files to Quartus 14.0
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 05, 2014 at 05:41:44PM +0100, Steffen Trumtrar wrote:
> Hi!
> 
> This series adds basic documentation for the SoCFPGA architecture in 1/5.
> 
> Then all handoff files and the sequencer code is updated to the current
> Quartus II 14.0 versions.
> 
> The files are autogeneratd by Quartus, so I went for trying to not fix all
> coding style errors, because I guess these will just keep coming with every
> update. So, I didn't change anything that is not too bad.
> 
> Tested on both Socrates and Sockit.
> 
> Regards,
> Steffen
> 
> Steffen Trumtrar (5):
>   Documentation: boards: add socfpga
>   ARM: socfpga: move iocsr from mach to board folder
>   ARM: socfpga: update sdram calibration to 14.0
>   ARM: socfpga: sockit: update handoff files to 14.0
>   ARM: socfpga: socrates: update handoff files to 14.0

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
