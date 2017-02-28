Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cicEh-0007lw-6I
 for barebox@lists.infradead.org; Tue, 28 Feb 2017 07:30:17 +0000
Date: Tue, 28 Feb 2017 08:29:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170228072953.avocsrdr52guzyye@pengutronix.de>
References: <20170227100356.GA3007@tharch.hub>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170227100356.GA3007@tharch.hub>
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
Subject: Re: Zyxel NAS540 bricked?
To: AndrewCz <andrewcz@neomailbox.net>
Cc: barebox@lists.infradead.org

Hi Andrew,

On Mon, Feb 27, 2017 at 05:03:57AM -0500, AndrewCz wrote:
> Hello all, hope you are well.
> 
> Recently, I followed a guide[1] to reflash my Zyxel NAS540[2] in order
> to put Debian on it. I'm pretty sure I bricked it and am just looking
> for confirmation.
> 
> I seem to be running into a bootloop where it will restart every two
> minutes or so. At least that is what seems to be indicated based on the
> frequency of the front panel lights lighting up. I reflashed the 'env'
> and 'kernel2' sections of the NOR flash, but neither went the right way.
> I can dive into the specifics if necessary. However, my concern is that
> I was unable to receive any output from the serial connection.
> 
> Given that the barebox 'env' may be corrupt as well as the kernel, is it
> correct to expect that there would be no serial output? Thanks for your
> consideration in this matter.

The Zyxel NAS540 seems to have a Freescale QorIQ LS1024A SoC. There is
no mainline barebox support for this SoC, so Zyxel must have created
their own patches. I know nothing about these patches nor about the SoC,
so I'm sorry I can't really help you.
What I can say is that normally barebox outputs stuff out of the console
even without valid environment or kernel. That is configurable though,
so I can't tell for sure.

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
